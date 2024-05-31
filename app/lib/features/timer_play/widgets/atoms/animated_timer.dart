import 'package:flutter/material.dart';
import 'package:jhanas/features/timer_play/widgets/atoms/timer_manager.dart';
import 'package:jhanas/helpers/duration.dart';

class AnimatedTimer extends StatefulWidget {
  final TimerManager timerManager;

  const AnimatedTimer({super.key, required this.timerManager});

  @override
  State<AnimatedTimer> createState() => _AnimatedTimerState();
}

class _AnimatedTimerState extends State<AnimatedTimer> {
  Size? _digitSize;

  final TextStyle textStyle = const TextStyle(
    fontSize: 57,
    height: 68 / 57,
  );
  final TextStyle dividerTextStyle = const TextStyle(
    fontSize: 57,
    height: 1,
  );

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _digitSize = _getSingleDigitSize();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<TimerStage>(
      valueListenable: widget.timerManager.stageNotifier,
      builder: (_, stage, __) {
        return ValueListenableBuilder<Duration>(
          valueListenable: widget.timerManager.progressNotifier,
          builder: (_, progress, __) {
            Duration duration = progress;
            switch (stage) {
              case TimerStage.warmUp:
                assert(widget.timerManager.warmUp != null);
                duration = widget.timerManager.warmUp! - progress;
                break;
              case TimerStage.meditation:
                if (widget.timerManager.duration == null) {
                  duration = progress;
                } else {
                  duration = widget.timerManager.duration! - progress;
                }
                break;
              case TimerStage.finished:
                duration = progress;
                break;
            }

            return _buildCounter(duration);
          },
        );
      },
    );
  }

  Widget _buildCounter(Duration duration) {
    _digitSize ??= _getSingleDigitSize();
    final timer = parseDuration(duration);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (timer.hours > 0) ..._buildDigits(timer.hoursStr()),
        if (timer.hours > 0) _buildDigitSeparator(),
        ..._buildDigits(timer.minutesStr()),
        _buildDigitSeparator(),
        ..._buildDigits(timer.secondsStr()),
      ],
    );
  }

  List<Widget> _buildDigits(String number) {
    _digitSize ??= _getSingleDigitSize();
    return number
        .split('')
        .map((e) => int.parse(e))
        .toList()
        .map(
          (e) => SizedBox(
            width: _digitSize!.width,
            height: _digitSize!.height,
            child: Center(
              child: Text(
                e.toString(),
                style: textStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        )
        .toList();
  }

  Widget _buildDigitSeparator() {
    _digitSize ??= _getSingleDigitSize();
    return SizedBox(
      height: _digitSize!.height,
      child: Center(
        child: Text(':', style: dividerTextStyle),
      ),
    );
  }

  Size _getSingleDigitSize() {
    final painter = TextPainter();
    painter.text = TextSpan(style: textStyle, text: '0');
    painter.textDirection = TextDirection.ltr;
    painter.textAlign = TextAlign.left;
    painter.textScaleFactor = 1.0;
    painter.layout();
    return painter.size;
  }
}
