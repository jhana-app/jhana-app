import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jhanas/api/graphql/lesson.graphql.dart';
import 'package:jhanas/api/graphql/lesson_audio.graphql.dart';
import 'package:jhanas/features/lesson_player/widgets/atoms/finish_lesson.dart';
import 'package:jhanas/features/lesson_player/widgets/atoms/lesson_player_manager.dart';
import 'package:jhanas/player/play_button.dart';
import 'package:jhanas/player/player_speed.dart';
import 'package:jhanas/player/player_state.dart';
import 'package:jhanas/player/progress_bar_state.dart';

class PlayerControls extends StatelessWidget {
  final Fragment$LessonFull lesson;
  final Fragment$LessonAudio audio;
  final LessonPlayerManager playerManager;

  const PlayerControls({
    super.key,
    required this.lesson,
    required this.audio,
    required this.playerManager,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ValueListenableBuilder<PlayerState>(
        valueListenable: playerManager.playerStateNotifier,
        builder: (_, state, __) => Column(
          children: [
            ValueListenableBuilder<ProgressBarState>(
              valueListenable: playerManager.progressNotifier,
              builder: (_, value, __) {
                return ProgressBar(
                  progress: value.currentWithSpeed,
                  buffered: value.bufferedWithSpeed,
                  total: value.totalWithSpeed,
                  onSeek: playerManager.seek,
                  baseBarColor: const Color(0x66CCC2DC),
                  bufferedBarColor: const Color(0x66D0BCFF),
                  progressBarColor: const Color(0xffD0BCFF),
                  thumbColor: const Color(0xffD0BCFF),
                  thumbRadius: 6,
                  timeLabelType: TimeLabelType.remainingTime,
                );
              },
            ),
            const SizedBox(height: 22),
            _controls(state),
            const SizedBox(height: 22),
            SizedBox(
              height: 40,
              child: state.playing
                  ? Container(
                      alignment: Alignment.center,
                      child: _timerFinishesAt(),
                    )
                  : FinishLesson(
                      lesson: lesson,
                      playerManager: playerManager,
                    ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _controls(PlayerState state) {
    final disabled = state.idle || state.loading || state.finished;
    final loading = state.idle || state.loading || state.buffering;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ValueListenableBuilder<double>(
          valueListenable: playerManager.speedNotifier,
          builder: (_, speed, __) => PlayerSpeedButton(
            speed: speed,
            disabled: disabled,
            onChanged: (speed) => playerManager.setSpeed(speed),
          ),
        ),
        _replayButton(disabled),
        PlayButton(
          loading: loading,
          playing: state.playing,
          onPlay: playerManager.play,
          onPause: playerManager.pause,
          radius: 32,
          iconSize: 48,
        ),
        _forwardButton(disabled),
        const SizedBox(width: 60),
      ],
    );
  }

  Widget _replayButton(bool disabled) => CircleAvatar(
        radius: 30,
        backgroundColor: Colors.transparent,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: const Icon(Icons.replay_10_outlined),
          iconSize: 44,
          color: const Color.fromRGBO(204, 194, 220, 1),
          disabledColor: const Color.fromRGBO(204, 194, 220, 0.5),
          onPressed: disabled ? null : () => playerManager.rewind(),
        ),
      );

  Widget _forwardButton(bool disabled) => CircleAvatar(
        radius: 30,
        backgroundColor: Colors.transparent,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: const Icon(Icons.forward_10_outlined),
          iconSize: 44,
          color: const Color.fromRGBO(204, 194, 220, 1),
          disabledColor: const Color.fromRGBO(204, 194, 220, 0.5),
          onPressed: disabled ? null : () => playerManager.fastForward(),
        ),
      );

  Widget _timerFinishesAt() {
    return ValueListenableBuilder<ProgressBarState>(
      valueListenable: playerManager.progressNotifier,
      builder: (_, progress, __) {
        if (progress.total.inSeconds == 0) {
          return Container();
        }

        final timeLeft = progress.remainingWithSpeed;
        final finishesAt = DateFormat.jm().format(DateTime.now().add(timeLeft));

        return Text(
          'Timer finishes at $finishesAt',
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        );
      },
    );
  }
}
