import 'package:audio_service/audio_service.dart' as audio_service;
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:jhanas/api/graphql/lesson.graphql.dart';
import 'package:jhanas/api/graphql/lesson_audio.graphql.dart';
import 'package:jhanas/api/graphql/unit.graphql.dart';
import 'package:jhanas/player/audio_handler.dart';
import 'package:jhanas/player/cache_manager.dart';
import 'package:jhanas/player/infinite_audio_source.dart';
import 'package:jhanas/player/player_state.dart';
import 'package:jhanas/player/progress_bar_state.dart';
import 'package:jhanas/services/download_service.dart';
import 'package:logging/logging.dart';
import 'package:pausable_timer/pausable_timer.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum Stage { lesson, meditation }

/// Lesson player manager
class LessonPlayerManager {
  final _log = Logger('LessonPlayerManager');

  final _prefs = GetIt.instance<SharedPreferences>();
  final _audioHandler = GetIt.instance<AudioHandler>();
  final _cache = LessonCacheManager();

  final Fragment$Unit unit;
  final Fragment$LessonFull lesson;
  final Fragment$LessonAudio audio;

  late final Duration _initialPosition;

  // player notifiers for UI
  final stageNotifier = ValueNotifier<Stage>(Stage.lesson);
  final playerStateNotifier = ValueNotifier<PlayerState>(PlayerState.zero);
  late final ValueNotifier<ProgressBarState> progressNotifier;
  late final ValueNotifier<double> speedNotifier;

  late PausableTimer _timer;

  final timerDurationNotifier = ValueNotifier<Duration>(Duration.zero);
  final timerNotifier = ValueNotifier<Duration>(Duration.zero);
  final timerPausedNotifier = ValueNotifier<bool>(false);

  bool _initialized = false; // skip some notifies until initialized
  bool _disposed = false; // no more notifies after being disposed

  LessonPlayerManager({
    required this.unit,
    required this.lesson,
    required this.audio,
  }) {
    _log.info('Constructor start');

    var initialPosition = Duration.zero;
    if (lesson.finishedAt == null) {
      // load initial media position from shared preferences
      initialPosition = _audioHandler.getPosition(lesson.id, Duration.zero);
    }
    if (initialPosition.inSeconds >= audio.duration - 10) {
      initialPosition = Duration.zero;
    }

    _initialPosition = initialPosition;

    final playerSpeed = _audioHandler.speed;

    progressNotifier = ValueNotifier<ProgressBarState>(ProgressBarState(
      current: initialPosition,
      buffered: Duration.zero,
      total: Duration(seconds: audio.duration),
      speed: playerSpeed,
    ));

    speedNotifier = ValueNotifier<double>(playerSpeed);

    // set audio player type to theory for correct behavior
    _audioHandler.playerType = PlayerType.lesson;

    // listen to player state changes
    _listenToPlaybackState();
    _listenToCurrentPosition();
    _listenToMediaItem();

    // count lesson time
    _timer = PausableTimer(const Duration(milliseconds: 100), () {
      _timer
        ..reset()
        ..start();
      timerNotifier.value += const Duration(milliseconds: 100);
    });

    _log.info('Constructor end');
  }

  Future<void> init(bool autoplay) async {
    _log.info('Init start');

    // init player playlist with lesson audio with respect to initial position
    await _initPlaylist(initialPosition: _initialPosition);

    if (autoplay) {
      play();
    }

    _log.info('Init end');
  }

  /// dispose all notifiers and audio handler
  Future<void> dispose() async {
    _log.info('Dispose start');

    _disposed = true;

    playerStateNotifier.dispose();
    progressNotifier.dispose();
    speedNotifier.dispose();
    await _audioHandler.dispose();

    _log.info('Dispose end');
  }

  Future<void> finishLesson(bool manual) async {
    timerDurationNotifier.value = timerNotifier.value;
    stageNotifier.value = Stage.meditation;

    if (manual) {
      await finishTimer();
    }

    _prefs.remove(positionPrefsKey(audio.id));
  }

  Future<void> finishTimer() async {
    await _audioHandler.stop();

    _timer.pause();
    timerPausedNotifier.value = true;

    timerDurationNotifier.value = timerNotifier.value;

    _prefs.remove(positionPrefsKey(audio.id));
  }

  Future<Map<String, dynamic>> _lessonExtras() async {
    final downloadMedia = DownloadMedia(
      type: ContentType.lesson,
      parentId: unit.id,
      mediaId: lesson.id,
      url: audio.audiourl,
    );

    if (downloadMedia.file.existsSync()) {
      progressNotifier.value = progressNotifier.value.copyWith(
        buffered: progressNotifier.value.total,
      );
      return {'file': downloadMedia.file.path};
    }

    progressNotifier.value = progressNotifier.value.copyWith(
      buffered: Duration.zero,
    );

    final cacheStream = _cache.getFileStream(
      audio.audiourl,
      withProgress: true,
    );

    final cached = await _cacheDownloadStream(cacheStream);

    progressNotifier.value = progressNotifier.value.copyWith(
      buffered: progressNotifier.value.total,
    );

    return {'file': cached.file.path}; // {'url': audio.audiourl};
  }

  Future<FileInfo> _cacheDownloadStream(Stream<FileResponse> stream) async {
    late FileInfo file;
    await for (final value in stream) {
      if (value is DownloadProgress) {
        progressNotifier.value = progressNotifier.value.copyWith(
          buffered:
              progressNotifier.value.total * (value.progress ?? 0).clamp(0, 1),
        );
      } else if (value is FileInfo) {
        file = value;
      }
    }
    return file;
  }

  /// init player playlist with all episodes with initial episode and position
  Future<void> _initPlaylist({Duration? initialPosition}) async {
    final mediaItem = audio_service.MediaItem(
      id: lesson.id,
      title: lesson.title,
      album: unit.title,
      artUri: Uri.parse(lesson.coverimage),
    );

    final mediaItems = <audio_service.MediaItem>[
      mediaItem.copyWith(
        duration: Duration(seconds: audio.duration),
        extras: await _lessonExtras(),
      ),
      mediaItem.copyWith(
        id: '${lesson.id}-meditation',
        title: '${lesson.title} finished',
        duration: InfiniteAudioSource.infinity,
        extras: {'infinity': true},
      )
    ];

    await _audioHandler.loadPlaylist(
      mediaItems,
      initialMediaId: lesson.id,
      initialPosition: initialPosition,
    );

    _initialized = true;
  }

  void _listenToPlaybackState() {
    // listen for playback state events
    _audioHandler.playbackState.listen((playbackState) {
      if (!_initialized || _disposed) {
        return; // no more notifies before init and after dispose
      }

      _log.info('Playback state: $playbackState');

      // notify UI about player state
      playerStateNotifier.value = playerStateNotifier.value.copyWith(
        processingState: playbackState.processingState,
        playing: playbackState.playing,
        finished: playbackState.processingState ==
                audio_service.AudioProcessingState.completed
            ? true
            : null,
      );

      // notify UI about media buffered position
      progressNotifier.value = progressNotifier.value.copyWith(
        // buffered: playbackState.bufferedPosition,
        speed: playbackState.speed,
      );

      // notify UI about player speed
      speedNotifier.value = playbackState.speed;
    });
  }

  void _listenToCurrentPosition() {
    // listen for current position changes
    audio_service.AudioService.position.listen((position) {
      if (!_initialized || _disposed) {
        return; // no more notifies before init and after dispose
      }

      // notify UI about current position
      if (_initialized) {
        progressNotifier.value = progressNotifier.value.copyWith(
          current: position,
        );
      }
    });
  }

  void _listenToMediaItem() {
    _audioHandler.mediaItem.listen((mediaItem) {
      if (!_initialized || _disposed) {
        return; // no more notifies before init and after dispose
      }

      if (mediaItem == null) return; // no media item, nothing to notify about

      _log.info('Media item: $mediaItem');

      if (mediaItem.extras?['infinity'] == true) {
        finishLesson(false);
      }

      // notify UI about current episode duration if current episode is set
      if ((mediaItem.duration?.inSeconds ?? 0) > 0) {
        progressNotifier.value = progressNotifier.value.copyWith(
          total: mediaItem.duration,
        );
      }
    });
  }

  /// start playing media
  void play() {
    _audioHandler.play();
    _timer.start();
  }

  /// pause playing media
  void pause() {
    _audioHandler.pause();
    _timer.pause();
  }

  /// stop playing media and free all resources
  void stop() {
    _audioHandler.stop();
    _timer.pause();
  }

  /// seek to position
  void seek(Duration position) => _audioHandler.seek(position);

  /// rewind media by 10 seconds
  void rewind() => _audioHandler.rewind();

  /// fast forward media by 10 seconds
  void fastForward() => _audioHandler.fastForward();

  /// set player speed
  void setSpeed(double speed) => _audioHandler.setSpeed(speed);
}
