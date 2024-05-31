import 'dart:async';
import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:jhanas/api/cache/common.dart';
import 'package:jhanas/api/graphql/content.graphql.dart';
import 'package:jhanas/api/graphql/content_episode.graphql.dart';
import 'package:jhanas/api/graphql/lesson.graphql.dart';
import 'package:jhanas/api/graphql/lesson_audio.graphql.dart';
import 'package:jhanas/api/graphql/schema.graphql.dart';
import 'package:jhanas/api/graphql/unit.graphql.dart';
import 'package:jhanas/atoms/player_speed_wheel.dart';
import 'package:jhanas/player/infinite_audio_source.dart';
import 'package:jhanas/player/media_source.dart';
import 'package:jhanas/player/player_state.dart' as ps;
import 'package:jhanas/player/progress_bar_state.dart';
import 'package:jhanas/player/silence_audio.dart';
import 'package:just_audio/just_audio.dart';
import 'package:logging/logging.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// shared preferences key to store player speed
const speedPrefsKey = 'playerSpeed';

/// shared preferences key to store player media position
String positionPrefsKey(String mediaId) => 'playerPosition-$mediaId';

/// player types: meditation timer, lesson, theory content
enum PlayerType { timer, lesson, theory, none }

/// audio handler is a singleton
Future<AudioHandler> initAudioService() async {
  return AudioService.init(
    builder: () => AudioHandler(),
    config: const AudioServiceConfig(
      androidNotificationChannelId: 'app.jhana.jhanas.audio',
      androidNotificationChannelName: 'Jhanas',
      // androidNotificationOngoing: true,
      androidStopForegroundOnPause: false,
    ),
  );
}

/// extend audio handler with custom methods
extension AudioHandlerExtension on AudioHandler {
  // load theory content playlist
  Future<void> loadTheoryContent({
    required Fragment$Content content,
    required List<Fragment$ContentEpisode> episodes,
    required String episodeId,
    bool? autoplay,
  }) =>
      _loadTheoryContent(
        content: content,
        episodes: episodes,
        episodeId: episodeId,
        autoplay: autoplay,
      );

  // load lesson
  Future<void> loadLesson({
    required Fragment$Unit unit,
    required Fragment$LessonFull lesson,
    required Fragment$LessonAudio audio,
    bool? autoplay,
  }) =>
      _loadLesson(
        unit: unit,
        lesson: lesson,
        audio: audio,
        autoplay: autoplay,
      );

  /// init player with playlist
  Future<void> loadPlaylist(List<MediaItem> mediaItems,
          {String? initialMediaId, Duration? initialPosition}) =>
      _loadPlaylist(
        mediaItems,
        initialMediaId: initialMediaId,
        initialPosition: initialPosition,
      );

  /// dispose player by freeing all resources but keep the service running
  Future<void> dispose() => customAction('dispose');

  /// dispose player by freeing all resources but keep the service running
  /// only if player is not playing at this moment
  Future<void> softDispose() => customAction('softDispose');
}

/// Jhanas player audio handler
class AudioHandler extends BaseAudioHandler {
  final _log = Logger('AudioHandler');

  /// shared preferences used to store player speed and position
  final _sharedPreferences = GetIt.instance<SharedPreferences>();

  /// GraphQL client used to store player state on server
  final _gql = GetIt.instance<GraphQLClient>();

  /// player behavior depends on the type of content being played
  PlayerType playerType = PlayerType.none;

  /// audio player
  final _player = AudioPlayer();
  List<MediaSource> _mediaSources = [];
  final _playlist = ConcatenatingAudioSource(children: []);

  /// media source notifier for UI
  final mediaSourceNotifier = ValueNotifier<MediaSource?>(null);

  /// player state notifier for
  final playerStateNotifier = ValueNotifier<ps.PlayerState>(
    ps.PlayerState.zero,
  );

  /// progress notifier for UI
  final progressNotifier = ValueNotifier<ProgressBarState>(
    ProgressBarState.zero,
  );

  /// queue notifier for UI
  final speedNotifier = ValueNotifier<double>(1);
  double get speed => validateSpeed(
        _sharedPreferences.getDouble(speedPrefsKey) ?? 1,
        defaultSpeedOptions,
      );

  /// audio handler constructor
  AudioHandler() {
    _player.setSpeed(speed);
    speedNotifier.value = speed;
    progressNotifier.value = progressNotifier.value.copyWith(speed: speed);

    // init player with empty playlist
    _initAudioSourceWithPlaylist();

    // add player event listeners
    _listenForPlaybackEvents();
    _listenForCurrentPosition();
    _listenForDurationChanges();
    _listenForCurrentSongIndexChanges();
  }

  Future<void> _initAudioSourceWithPlaylist(
      {int? initialIndex, Duration? initialPosition}) async {
    try {
      await _player.setAudioSource(
        _playlist,
        preload: _playlist.length > 0,
        initialIndex: initialIndex,
        initialPosition: initialPosition,
      );
    } catch (e, stackTrace) {
      Sentry.captureException(e, stackTrace: stackTrace);
      _log.warning('Player setAudioSource error: $e', e, stackTrace);
    }
  }

  // listen for player playback events
  void _listenForPlaybackEvents() =>
      _player.playbackEventStream.listen((event) {
        _log.info('Playback event: $event');

        _updatePlaybackState(event.currentIndex);

        progressNotifier.value = progressNotifier.value.copyWith(
          buffered: event.bufferedPosition,
          total: (event.duration?.inSeconds ?? 0) > 0 ? event.duration : null,
        );
      });

  // listen for player position changes
  void _listenForCurrentPosition() => _player.positionStream.listen((position) {
        if (queue.value.isEmpty || _player.currentIndex == null) {
          // notify UI about current position
          progressNotifier.value =
              progressNotifier.value.copyWith(current: Duration.zero);
          return;
        }

        if (position.inSeconds == progressNotifier.value.current.inSeconds) {
          return;
        }

        // notify UI about current position
        progressNotifier.value = progressNotifier.value.copyWith(
          current: position,
        );

        // get current playing media
        final media = _getQueueMediaItem(_player.currentIndex!);

        // save media playing position to shared preferences
        if (media == null) {
          // no need to save position for media that is not in the queue
        } else if (media.extras?['infinity'] == true) {
          // no need to save position for media with infinity duration
        } else {
          _savePosition(media.id, position);
        }
      });

  // listen for player media duration changes
  void _listenForDurationChanges() => _player.durationStream.listen((duration) {
        _log.info('Duration: $duration');

        if (queue.value.isEmpty || _player.currentIndex == null) return;

        // get current playing media
        final media = _getQueueMediaItem(_player.currentIndex!);

        // update current playing media duration
        if (media == null) {
          // no need to update duration for media that is not in the queue
        } else if (media.extras?['infinity'] == true) {
          // if media has infinity duration, set it to zero
          mediaItem.add(media.copyWith(duration: Duration.zero));
        } else {
          mediaItem.add(media.copyWith(duration: duration));
        }
      });

  // listen for player current song index changes
  void _listenForCurrentSongIndexChanges() =>
      _player.currentIndexStream.listen((index) {
        // save position and duration for previous media source
        final position = progressNotifier.value.current;
        final duration = progressNotifier.value.total;

        // get playing media
        final newMedia = _getQueueMediaItem(index);
        // get playing media source
        final newMediaSource = _getMediaSourceItem(index);

        _log.info(
          'Current index changed: $index'
          ', media source: $newMediaSource'
          ', previous: ${mediaSourceNotifier.value}'
          ', progress: ${progressNotifier.value.current}',
        );

        _updatePlaybackState(index);

        if (mediaSourceNotifier.value != null) {
          // save previous media source progress
          _saveMediaSourceProgress(
            mediaSourceNotifier.value!,
            position,
            duration,
          );
        }

        if (index == null) {
          _resetPlaybackState();
          return;
        }

        // update current playing media with new item
        mediaItem.add(newMedia);
        // update media notifier with current playing media
        mediaSourceNotifier.value = newMediaSource;
      });

  void _resetPlaybackState() {
    playbackState.add(PlaybackState());
    _mediaSources = [];
    mediaSourceNotifier.value = null;
    playerStateNotifier.value = ps.PlayerState.zero;
    progressNotifier.value = ProgressBarState.zero;
  }

  void _updatePlaybackState(int? mediaIndex) {
    final playing = _player.playing;
    final processingState = const {
      ProcessingState.idle: AudioProcessingState.idle,
      ProcessingState.loading: AudioProcessingState.loading,
      ProcessingState.buffering: AudioProcessingState.buffering,
      ProcessingState.ready: AudioProcessingState.ready,
      ProcessingState.completed: AudioProcessingState.completed,
    }[_player.processingState]!;

    if (mediaIndex == null) {
      _resetPlaybackState();
      return;
    }

    // get playing media
    final media = _getQueueMediaItem(mediaIndex);

    // set background controls depending on player type and state
    late List<MediaControl> controls;
    late Set<MediaAction> systemActions;
    late List<int> androidCompactActionIndices;

    if (media?.extras?['infinity'] == true) {
      // only 'play/payse' button is available for infinity silence
      controls = [if (playing) MediaControl.pause else MediaControl.play];
      systemActions = {};
      androidCompactActionIndices = [0];
    } else {
      switch (playerType) {
        case PlayerType.timer:
          controls = [if (playing) MediaControl.pause else MediaControl.play];
          systemActions = {};
          androidCompactActionIndices = [0];
          break;
        case PlayerType.lesson:
          if (media?.extras?['infinity'] == true) {
            controls = [];
            systemActions = {};
            androidCompactActionIndices = [];
          } else {
            controls = [
              MediaControl.rewind,
              if (playing) MediaControl.pause else MediaControl.play,
              MediaControl.fastForward,
            ];
            systemActions = {MediaAction.seek};
            androidCompactActionIndices = [0, 1, 2];
          }
          break;
        case PlayerType.theory:
          controls = [
            MediaControl.rewind,
            if (playing) MediaControl.pause else MediaControl.play,
            MediaControl.fastForward,
          ];
          systemActions = {MediaAction.seek};
          androidCompactActionIndices = [0, 1, 2];
          break;
        default:
          controls = [];
          systemActions = {};
          androidCompactActionIndices = [];
      }
    }

    // notify audio handler about playback state changes
    playbackState.add(playbackState.value.copyWith(
      controls: controls,
      systemActions: systemActions,
      androidCompactActionIndices: androidCompactActionIndices,
      processingState: processingState,
      playing: playing,
      updatePosition: _player.position,
      bufferedPosition: _player.bufferedPosition,
      speed: _player.speed,
      queueIndex: mediaIndex,
    ));

    // notify UI about player state
    playerStateNotifier.value = playerStateNotifier.value.copyWith(
      processingState: processingState,
      playing: playing,
      finished:
          _player.processingState == ProcessingState.completed ? true : null,
    );

    if (media != null) {
      progressNotifier.value = progressNotifier.value.copyWith(
        total: media.duration,
      );
    }
  }

  Future<void> _loadTheoryContent({
    required Fragment$Content content,
    required List<Fragment$ContentEpisode> episodes,
    required String episodeId,
    bool? autoplay,
  }) async {
    // find initial episode from episodes list by id
    final episode = getEpisodeFromList(episodes, episodeId);
    if (episode == null) {
      _log.warning('Episode $episodeId not found in episodes list');
      return;
    }

    // get initial episode position
    late Duration initialPosition;
    if (episode.finishedAt == null) {
      // load initial media position from shared preferences or database
      final savedPosition = getPosition(
        episode.id,
        Duration(seconds: episode.progress),
      ).inSeconds;

      if (savedPosition > 0 && savedPosition < episode.duration) {
        initialPosition = Duration(seconds: episode.progress);
      } else {
        initialPosition = Duration.zero;
      }
    } else {
      // finished episode initial position is always zero
      initialPosition = Duration.zero;
    }

    // use episode duration as initial duration
    final initialDuration = Duration(seconds: episode.duration);

    // check if we already play this theory's episodes
    if (mediaSourceNotifier.value is TheoryMediaSource) {
      final prevMediaSource = mediaSourceNotifier.value as TheoryMediaSource;
      if (prevMediaSource.content.id == content.id) {
        if (prevMediaSource.episode.id == episode.id) {
          // if we already play this episode
          _log.info('Theory ${content.id} episode $episodeId already playing');
          return;
        } else {
          // if we already play this theory, but another episode
          // just change current episode
          int index = -1;
          for (var i = 0; i < queue.value.length; i++) {
            if (queue.value[i].id == episode.id) {
              index = i;
              break;
            }
          }
          _log.info(
            'Theory ${content.id} already playing'
            ', change episode to $episodeId ($index)',
          );
          if (index > -1) {
            if (_player.playing && autoplay != true) {
              await pause();
            }
            await seek(initialPosition, index: index);

            mediaSourceNotifier.value = TheoryMediaSource(
              content: content,
              episode: episode,
            );
            progressNotifier.value = progressNotifier.value.copyWith(
              current: initialPosition,
              buffered: initialPosition,
              total: initialDuration,
            );
            return;
          }
        }
      }
    }

    // set audio player type to theory for correct behavior
    playerType = PlayerType.theory;

    // init media items
    _mediaSources = episodes
        .map((e) => TheoryMediaSource(content: content, episode: e))
        .toList();

    // init player playlist with all episodes
    // with respect to initial episode and position
    final mediaItems = _mediaSources.map((m) => m.mediaItem).toList();

    await _loadPlaylist(
      mediaItems,
      initialMediaId: episodeId,
      initialPosition: initialPosition,
    );

    // init player UI notifiers
    mediaSourceNotifier.value = TheoryMediaSource(
      content: content,
      episode: episode,
    );
    playerStateNotifier.value = ps.PlayerState.zero;
    progressNotifier.value = progressNotifier.value.copyWith(
      current: initialPosition,
      buffered: initialPosition,
      total: initialDuration,
    );

    if (autoplay == true) {
      play();
    }
  }

  Future<void> _loadLesson({
    required Fragment$Unit unit,
    required Fragment$LessonFull lesson,
    required Fragment$LessonAudio audio,
    bool? autoplay,
  }) async {
    return;
  }

  /// init player with new playlist
  Future<void> _loadPlaylist(List<MediaItem> mediaItems,
      {String? initialMediaId, Duration? initialPosition}) async {
    _log.info('Load playlist start');

    // find initial media index by initial media id
    // if initial media is not found, set initial index to null
    final initialIndex = initialMediaId != null && initialMediaId != ''
        ? mediaItems.indexWhere((e) => e.id == initialMediaId)
        : null;

    // update queue and set current media item
    queue.add(mediaItems);
    mediaItem.add(
      initialIndex == null ? mediaItems.first : mediaItems[initialIndex],
    );

    // build audio sources from media items
    final audioSources = mediaItems.map(_createAudioSource);

    // replace items in playlist with new audio sources
    await _playlist.clear();
    await _playlist.addAll(audioSources.toList());
    await _initAudioSourceWithPlaylist(
      initialIndex: initialIndex,
      initialPosition: initialPosition,
    );

    _log.info('Load playlist end');
  }

  /// create audio source from media item
  AudioSource _createAudioSource(MediaItem mediaItem) {
    final file = mediaItem.extras?['file'] as String?;
    if (file != null) {
      return AudioSource.file(file, tag: mediaItem);
    }

    final url = mediaItem.extras?['url'] as String?;
    if (url != null) {
      return AudioSource.uri(Uri.parse(url), tag: mediaItem);
    }

    final silence = mediaItem.extras?['silence'] as int?;
    if (silence != null) {
      return SilenceAudio(Duration(seconds: silence), tag: mediaItem);
    }

    final infinity = mediaItem.extras?['infinity'] as bool?;
    if (infinity == true) {
      return InfiniteAudioSource(tag: mediaItem);
    }

    throw Exception('Invalid media item');
  }

  MediaItem? _getQueueMediaItem(int? index) =>
      index == null || index < 0 || index >= queue.value.length
          ? null
          : queue.value[index];

  MediaSource? _getMediaSourceItem(int? index) =>
      index == null || index < 0 || index >= _mediaSources.length
          ? null
          : _mediaSources[index];

  /// set player speed and save it to shared preferences
  @override
  Future<void> setSpeed(double newSpeed) async {
    final speedValidated = validateSpeed(newSpeed, defaultSpeedOptions);
    _log.info('Set speed: $newSpeed, validated: $speedValidated');
    _sharedPreferences.setDouble(speedPrefsKey, speedValidated);
    await _player.setSpeed(speedValidated);
    speedNotifier.value = speedValidated;
    playbackState.add(playbackState.value.copyWith(speed: speedValidated));
  }

  /// get previously saved media position from shared preferences
  Duration getPosition(String? mediaId, Duration defaultPosition) {
    if (mediaId == null || mediaId == '') return defaultPosition;
    final position = _sharedPreferences.getInt(positionPrefsKey(mediaId));
    return position != null ? Duration(seconds: position) : defaultPosition;
  }

  /// save media position to shared preferences
  void _savePosition(String? mediaId, Duration position) {
    if (mediaId == null || mediaId == '') return;
    _sharedPreferences.setInt(positionPrefsKey(mediaId), position.inSeconds);
  }

  /// dispose player by freeing all resources but keep the service running
  @override
  Future<void> customAction(String name, [Map<String, dynamic>? extras]) async {
    switch (name) {
      case 'dispose':
        _log.info('Dispose start');

        if (mediaSourceNotifier.value != null) {
          // save previous media source progress
          _saveMediaSourceProgress(
            mediaSourceNotifier.value!,
            progressNotifier.value.current,
            progressNotifier.value.total,
          );
        }

        playerType = PlayerType.none;

        await _player.stop();
        await _playlist.clear();
        await _initAudioSourceWithPlaylist();

        queue.add([]);
        mediaItem.add(null);

        _resetPlaybackState();

        super.stop();

        _log.info('Dispose end');
        break;
      case 'softDispose':
        if (!_player.playing) {
          _log.info('Player is not running, calling dispose');
          await customAction('dispose');
        }
        break;
    }
  }

  /// stop player and release all resources
  @override
  Future<void> stop() async {
    await _player.stop();
    return super.stop();
  }

  /// start playing media
  @override
  Future<void> play() => _player.play();

  /// pause playing media
  @override
  Future<void> pause() async {
    await _player.pause();
    if (mediaSourceNotifier.value != null) {
      // save previous media source progress
      _saveMediaSourceProgress(
        mediaSourceNotifier.value!,
        progressNotifier.value.current,
        progressNotifier.value.total,
      );
    }
  }

  /// skip to next media
  @override
  Future<void> skipToNext() => _player.seekToNext();

  /// skip to previous media
  @override
  Future<void> skipToPrevious() => _player.seekToPrevious();

  /// skip to queue item by index
  @override
  Future<void> skipToQueueItem(int index) async {
    if (index > 0 && index < queue.value.length) {
      seek(Duration.zero, index: index);
    }
  }

  /// seek to position
  @override
  Future<void> seek(Duration position, {int? index}) async {
    var newPosition = Duration(
      milliseconds: (position.inMilliseconds * speed).round(),
    );

    if (newPosition < Duration.zero) {
      newPosition = Duration.zero;
    }

    // final media = _getQueueMediaItem(_player.currentIndex!);
    // if (media?.duration != null && media!.duration!.inSeconds > 0) {
    //   if (newPosition > media.duration!) {
    //     newPosition = media.duration!;
    //   }
    // }

    _log.info(
      'Seek to $newPosition, index: $index'
      ', current index: ${_player.currentIndex}'
      ', requested position: $position',
    );

    await _player.seek(newPosition, index: index);
  }

  /// rewind media by 10 seconds
  @override
  Future<void> rewind() => _seekRelative(const Duration(seconds: -10));

  /// fast forward media by 10 seconds
  @override
  Future<void> fastForward() => _seekRelative(const Duration(seconds: 10));

  /// seek to relative position
  Future<void> _seekRelative(Duration offset) async {
    var newPosition = playbackState.value.position +
        Duration(milliseconds: (offset.inMilliseconds * speed).round());

    if (newPosition < Duration.zero) {
      newPosition = Duration.zero;
    }

    // final media = _getQueueMediaItem(_player.currentIndex!);
    // if (media?.duration != null && media!.duration!.inSeconds > 0) {
    //   if (newPosition > media.duration!) {
    //     newPosition = media.duration!;
    //   }
    // }

    await _player.seek(newPosition);
  }

  void _saveMediaSourceProgress(
    MediaSource mediaSource,
    Duration position,
    Duration duration,
  ) {
    if (mediaSource is TheoryMediaSource) {
      // stop or finish playing theory episode
      if (position >= duration - const Duration(seconds: 10)) {
        // save previous media source completion state to server
        _finishEpisode(mediaSource.episode.id);
      } else {
        // save previous media source progress to server
        _saveEpisodePosition(mediaSource.episode.id, position);
      }
    }
  }

  Future<void> _saveEpisodePosition(String episodeId, Duration position) async {
    if (position.inSeconds <= 0) {
      return;
    }

    _log.info('Save episode $episodeId position: $position');

    final result = await _gql.mutate$SaveContentEpisodeProgress(
      Options$Mutation$SaveContentEpisodeProgress(
        variables: Variables$Mutation$SaveContentEpisodeProgress(
          id: episodeId,
          input: Input$SaveContentEpisodeProgressInput(
            progress: position.inSeconds,
          ),
        ),
        update: (cache, result) {
          if (result == null || result.hasException) {
            return;
          }

          final fragmentRequest = FragmentRequest(
            fragment:
                const Fragment(document: documentNodeFragmentContentEpisode),
            idFields: {'__typename': 'ContentEpisode', 'id': episodeId},
          );

          final cached = cache.readFragment(fragmentRequest);
          if (cached != null) {
            cached['progress'] = position.inSeconds;
            cache.writeFragment(fragmentRequest, data: cached);
          }
        },
      ),
    );

    if (result.hasException) {
      Sentry.captureException(result.exception);
      _log.severe('Error while saving episode progress', result.exception);
      // WidgetsBinding.instance.addPostFrameCallback((_) {
      //   errorMessage(
      //     context,
      //     'Error while saving lesson progress.\n'
      //     'Check the internet connection and try again.',
      //     exception: result.exception.toString(),
      //   );
      // });
      return;
    }

    refetch(_gql, ['FetchContent', 'FetchActiveEpisodes']);

    _log.info('Save episode $episodeId position finish');
  }

  Future<void> _finishEpisode(String episodeId) async {
    _log.info('Save episode $episodeId completed state');

    final result = await _gql.mutate$FinishContentEpisode(
      Options$Mutation$FinishContentEpisode(
        variables: Variables$Mutation$FinishContentEpisode(
          id: episodeId,
          input: Input$FinishContentEpisodeInput(
            datetime: DateTime.now().toUtc().toIso8601String(),
          ),
        ),
      ),
    );

    if (result.hasException) {
      Sentry.captureException(result.exception);
      _log.severe('Error while saving episode completion', result.exception);
      // WidgetsBinding.instance.addPostFrameCallback((_) {
      //   errorMessage(
      //     context,
      //     'Error while saving lesson completion.\n'
      //     'Check the internet connection and try again.',
      //     exception: result.exception.toString(),
      //   );
      // });
      return;
    }

    refetch(_gql, ['FetchContent', 'FetchActiveEpisodes']);

    _log.info('Save episode $episodeId completed state finish');
  }
}

/// get episode by id from episodes list
Fragment$ContentEpisode? getEpisodeFromList(
  List<Fragment$ContentEpisode> episodes,
  String? episodeId,
) {
  if (episodeId == null) return null;
  final result = episodes.where((e) => e.id == episodeId);
  return result.isNotEmpty ? result.first : null;
}
