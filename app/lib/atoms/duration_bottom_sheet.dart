import 'package:flutter/material.dart';
import 'package:jhanas/atoms/button_contained.dart';
import 'package:jhanas/atoms/button_outline.dart';
import 'package:jhanas/atoms/duration_wheel.dart';
import 'package:jhanas/atoms/pull_down_indicator.dart';

Future<Duration?> showDurationWheel({
  required BuildContext context,
  required Duration initialDuration,
}) {
  return showModalBottomSheet<Duration>(
    context: context,
    isScrollControlled: true,
    builder: (context) => DurationBottomSheet(initialDuration: initialDuration),
  );
}

class DurationBottomSheet extends StatefulWidget {
  final Duration initialDuration;

  const DurationBottomSheet({
    super.key,
    required this.initialDuration,
  });

  @override
  DurationBottomSheetState createState() => DurationBottomSheetState();
}

class DurationBottomSheetState extends State<DurationBottomSheet> {
  late Duration _duration;

  @override
  void initState() {
    _duration = widget.initialDuration;
    super.initState();
  }

  void _selectDuration(Duration value) {
    setState(() {
      _duration = value;
    });
  }

  void _cancel() {
    Navigator.pop(context);
  }

  void _submit() {
    Navigator.pop(context, _duration);
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
                  onChanged: _selectDuration,
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
