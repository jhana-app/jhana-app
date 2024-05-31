import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:jhanas/features/theory_listen_episode/widgets/atoms/select_player_speed.dart';
import 'package:jhanas/player/audio_handler.dart';
import 'package:jhanas/player/play_button.dart';
import 'package:jhanas/player/player_state.dart';
import 'package:jhanas/player/progress_bar_state.dart';

class PlayerControls extends StatefulWidget {
  const PlayerControls({super.key});

  @override
  State<PlayerControls> createState() => _PlayerControlsState();
}

class _PlayerControlsState extends State<PlayerControls> {
  final _audioHandler = GetIt.instance<AudioHandler>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          _progress(),
          const SizedBox(height: 22),
          ValueListenableBuilder<PlayerState>(
            valueListenable: _audioHandler.playerStateNotifier,
            builder: (_, state, __) => _controls(state),
          ),
          const SizedBox(height: 82),
        ],
      ),
    );
  }

  Widget _progress() {
    return ValueListenableBuilder<ProgressBarState>(
      valueListenable: _audioHandler.progressNotifier,
      builder: (_, value, __) {
        return ProgressBar(
          progress: value.currentWithSpeed,
          buffered: value.bufferedWithSpeed,
          total: value.totalWithSpeed,
          onSeek: _audioHandler.seek,
          baseBarColor: const Color(0x66CCC2DC),
          progressBarColor: const Color(0xffD0BCFF),
          thumbColor: const Color(0xffD0BCFF),
          thumbRadius: 6,
          timeLabelType: TimeLabelType.remainingTime,
        );
      },
    );
  }

  Widget _controls(PlayerState state) {
    final disabled = state.idle || state.loading || state.finished;
    final loading = state.idle || state.loading || state.buffering;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ValueListenableBuilder<double>(
          valueListenable: _audioHandler.speedNotifier,
          builder: (_, value, __) => PlayerSpeedButton(
            speed: value,
            disabled: disabled,
            onChanged: (speed) => _audioHandler.setSpeed(speed),
          ),
        ),
        _rewindButton(disabled),
        PlayButton(
          loading: loading,
          playing: state.playing,
          onPlay: _audioHandler.play,
          onPause: _audioHandler.pause,
          radius: 32,
          iconSize: 48,
        ),
        _fastForwardButton(disabled),
        const SizedBox(width: 60),
      ],
    );
  }

  Widget _rewindButton(bool disabled) => CircleAvatar(
        radius: 30,
        backgroundColor: Colors.transparent,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: const Icon(Icons.replay_10_outlined),
          iconSize: 44,
          color: const Color.fromRGBO(204, 194, 220, 1),
          disabledColor: const Color.fromRGBO(204, 194, 220, 0.5),
          onPressed: disabled ? null : _audioHandler.rewind,
        ),
      );

  Widget _fastForwardButton(bool disabled) => CircleAvatar(
        radius: 30,
        backgroundColor: Colors.transparent,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: const Icon(Icons.forward_10_outlined),
          iconSize: 44,
          color: const Color.fromRGBO(204, 194, 220, 1),
          disabledColor: const Color.fromRGBO(204, 194, 220, 0.5),
          onPressed: disabled ? null : _audioHandler.fastForward,
        ),
      );
}
