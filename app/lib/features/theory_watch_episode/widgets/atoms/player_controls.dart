import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:jhanas/api/cache/common.dart';
import 'package:jhanas/api/graphql/content_episode.graphql.dart';
import 'package:jhanas/api/graphql/schema.graphql.dart';
import 'package:jhanas/features/theory_watch_episode/widgets/atoms/select_player_speed.dart';
import 'package:jhanas/player/play_button.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart' as ytp;

class PlayerControls extends StatefulWidget {
  final Fragment$ContentEpisodeFull episode;
  final ytp.YoutubePlayerController controller;

  const PlayerControls({
    required this.episode,
    required this.controller,
    super.key,
  });

  @override
  State<PlayerControls> createState() => _PlayerControlsState();
}

class _PlayerControlsState extends State<PlayerControls> {
  /// GraphQL client used to store player state on server
  final _gql = GetIt.instance<GraphQLClient>();

  bool _loading = false;
  bool _playing = false;

  late Duration _position = Duration(seconds: widget.controller.flags.startAt);
  late Duration _buffered = Duration(seconds: widget.controller.flags.startAt);
  late Duration _total = widget.controller.metadata.duration.inSeconds > 0
      ? widget.controller.metadata.duration
      : Duration(seconds: widget.episode.duration);

  ytp.PlayerState _state = ytp.PlayerState.unknown;
  double _speed = 1.0;

  Duration? _positionSaved;
  bool _finishedSaved = false;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(positionListener);
    positionListener();
  }

  @override
  void dispose() {
    final position = widget.controller.value.position;

    widget.controller.removeListener(positionListener);
    super.dispose();

    Future.delayed(Duration.zero, () async {
      // stop or finish playing theory episode
      if (_total.inSeconds > 0 &&
          position >= _total - const Duration(seconds: 10)) {
        // save previous media source completion state to server
        await _finishEpisode(widget.episode.id);
      } else {
        // save previous media source progress to server
        await _saveEpisodePosition(widget.episode.id, position);
      }
    });
  }

  void positionListener() {
    final totalDuration = widget.controller.metadata.duration.inMilliseconds;
    if (mounted && !totalDuration.isNaN && totalDuration != 0) {
      bool needToSaveProgress = false;
      bool needToFinishProgress = false;
      final position = widget.controller.value.position;
      final duration = widget.controller.metadata.duration;

      if (widget.controller.value.playerState == ytp.PlayerState.ended &&
          _state != ytp.PlayerState.ended) {
        // video state has been changed to 'ended',
        // need to mark video as finished
        needToFinishProgress = true;
      } else if (widget.controller.value.playerState ==
              ytp.PlayerState.paused &&
          _state == ytp.PlayerState.playing) {
        // video has been paused, need to save progress
        if (position >= duration - const Duration(seconds: 10)) {
          // watched to the end, need to mark video as finished
          needToFinishProgress = true;
        } else {
          // need to save progress
          needToSaveProgress = true;
        }
      }

      setState(() {
        _loading = false;
        _playing =
            widget.controller.value.playerState == ytp.PlayerState.playing;
        _position = widget.controller.value.position;
        _buffered = Duration(
          milliseconds:
              (totalDuration * widget.controller.value.buffered).round(),
        );
        _total = widget.controller.metadata.duration;

        _state = widget.controller.value.playerState;
        _speed = widget.controller.value.playbackRate;
      });

      if (needToFinishProgress) {
        // save previous media source completion state to server
        _finishEpisode(widget.episode.id);
      } else if (needToSaveProgress) {
        // save previous media source progress to server
        _saveEpisodePosition(widget.episode.id, position);
      }
    } else {
      setState(() => _loading = !widget.controller.value.isReady);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          _progress(),
          const SizedBox(height: 22),
          _controls(),
          const SizedBox(height: 82),
        ],
      ),
    );
  }

  Widget _progress() {
    return ProgressBar(
      progress: _position,
      buffered: _buffered,
      total: _total,
      onSeek: _loading ? null : widget.controller.seekTo,
      baseBarColor: const Color(0x66CCC2DC),
      progressBarColor: const Color(0xffD0BCFF),
      thumbColor: const Color(0xffD0BCFF),
      thumbRadius: 6,
      timeLabelType: TimeLabelType.remainingTime,
    );
  }

  Widget _controls() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        PlayerSpeedButton(
          speed: _speed,
          disabled: _loading,
          onChanged: (speed) => widget.controller.setPlaybackRate(speed),
        ),
        _rewindButton(),
        PlayButton(
          loading: _loading,
          playing: _playing,
          onPlay: widget.controller.play,
          onPause: widget.controller.pause,
          radius: 32,
          iconSize: 48,
        ),
        _fastForwardButton(),
        _fullscreenButton(),
      ],
    );
  }

  Widget _rewindButton() => CircleAvatar(
        radius: 30,
        backgroundColor: Colors.transparent,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: const Icon(Icons.replay_10_outlined),
          iconSize: 44,
          color: const Color.fromRGBO(204, 194, 220, 1),
          disabledColor: const Color.fromRGBO(204, 194, 220, 0.5),
          onPressed: _loading
              ? null
              : () => widget.controller
                  .seekTo(_position - const Duration(seconds: 10)),
        ),
      );

  Widget _fastForwardButton() => CircleAvatar(
        radius: 30,
        backgroundColor: Colors.transparent,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: const Icon(Icons.forward_10_outlined),
          iconSize: 44,
          color: const Color.fromRGBO(204, 194, 220, 1),
          disabledColor: const Color.fromRGBO(204, 194, 220, 0.5),
          onPressed: _loading
              ? null
              : () => widget.controller
                  .seekTo(_position + const Duration(seconds: 10)),
        ),
      );

  Widget _fullscreenButton() => CircleAvatar(
        radius: 30,
        backgroundColor: Colors.transparent,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: const Icon(Icons.fullscreen_outlined),
          iconSize: 44,
          color: const Color.fromRGBO(204, 194, 220, 1),
          disabledColor: const Color.fromRGBO(204, 194, 220, 0.5),
          onPressed: _loading ? null : widget.controller.toggleFullScreenMode,
        ),
      );

  Future<void> _saveEpisodePosition(String episodeId, Duration position) async {
    if (position.inSeconds <= 0) {
      return;
    }

    if (_positionSaved != null &&
        (_positionSaved!.inSeconds - position.inSeconds).abs() < 5) {
      return;
    }

    if (mounted) {
      setState(() => _positionSaved = position);
    }

    if (kDebugMode) {
      print('Save episode $episodeId position: $position');
    }

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
      if (kDebugMode) {
        print('Error while saving episode progress: ${result.exception}');
      }
      return;
    }

    refetch(_gql, ['FetchContent', 'FetchActiveEpisodes']);

    if (kDebugMode) {
      print('Save episode $episodeId position finish');
    }
  }

  Future<void> _finishEpisode(String episodeId) async {
    if (_finishedSaved) {
      return;
    }

    if (mounted) {
      setState(() => _finishedSaved = true);
    }

    if (kDebugMode) {
      print('Save episode $episodeId completed state');
    }

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
      if (kDebugMode) {
        print('Error while saving episode completion: ${result.exception}');
      }
      return;
    }

    refetch(_gql, ['FetchContent', 'FetchActiveEpisodes']);

    if (kDebugMode) {
      print('Save episode $episodeId completed state finish');
    }
  }
}
