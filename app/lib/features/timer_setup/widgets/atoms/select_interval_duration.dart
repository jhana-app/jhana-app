import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:jhanas/atoms/button_contained.dart';
import 'package:jhanas/atoms/button_outline.dart';
import 'package:jhanas/atoms/duration_wheel.dart';
import 'package:jhanas/atoms/pull_down_indicator.dart';

class SelectIntervalDuration extends StatelessWidget {
  final Duration duration;
  final ValueChanged<Duration> onChanged;

  const SelectIntervalDuration({
    super.key,
    required this.duration,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonOutline(
      height: 40,
      child: AutoSizeText(
        _buttonText(),
        minFontSize: 10,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        maxLines: 1,
      ),
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) {
            return _SelectIntervalDurationBottomSheet(
              duration: duration,
              valueChanged: onChanged,
            );
          },
        );
      },
    );
  }

  String _buttonText() {
    final hours = duration.inHours;
    final hoursText = hours == 0
        ? ''
        : hours == 1
            ? '1 hour'
            : '$hours hours';

    final minutes = duration.inMinutes.remainder(60);
    final minutesText = minutes == 0
        ? ''
        : minutes == 1
            ? '1 minute'
            : '$minutes minutes';

    if (hours > 0 && minutes > 0) {
      return '$hoursText $minutesText';
    } else if (hours > 0) {
      return hoursText;
    } else {
      return minutesText;
    }
  }
}

class _SelectIntervalDurationBottomSheet extends StatefulWidget {
  final Duration duration;
  final ValueChanged<Duration> valueChanged;

  const _SelectIntervalDurationBottomSheet({
    required this.duration,
    required this.valueChanged,
  });

  @override
  _SelectIntervalDurationBottomSheetState createState() =>
      _SelectIntervalDurationBottomSheetState();
}

class _SelectIntervalDurationBottomSheetState
    extends State<_SelectIntervalDurationBottomSheet> {
  late Duration _duration;

  @override
  void initState() {
    _duration = widget.duration;
    super.initState();
  }

  void _selectIntervalDuration(Duration value) {
    setState(() {
      _duration = value;
    });
  }

  void _cancel() {
    Navigator.of(context).pop();
  }

  void _submit() {
    widget.valueChanged(_duration);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        color: const Color.fromRGBO(36, 33, 43, 1),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const PullDownIndicator(),
                Container(
                  alignment: Alignment.topLeft,
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                  child: const Text(
                    'Duration',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xffE6E1E5),
                    ),
                  ),
                ),
                DurationWheel(
                  duration: _duration,
                  onChanged: _selectIntervalDuration,
                ),
                const SizedBox(height: 22),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      flex: 5,
                      child: ButtonOutline(
                        height: 40,
                        child: const Text('Cancel'),
                        onPressed: () => _cancel(),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      flex: 5,
                      child: ButtonContained(
                        height: 40,
                        child: const Text('Save'),
                        onPressed: () => _submit(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 22),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
