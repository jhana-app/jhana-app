import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:jhanas/atoms/button_outline.dart';
import 'package:jhanas/models/meditation_timer.dart';

class SelectIntervalPosition extends StatelessWidget {
  final IntervalBellPosition position;
  final ValueChanged<IntervalBellPosition> onChanged;

  const SelectIntervalPosition({
    super.key,
    required this.position,
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
        if (position == IntervalBellPosition.fromStart) {
          onChanged(IntervalBellPosition.fromEnd);
        } else {
          onChanged(IntervalBellPosition.fromStart);
        }
      },
    );
  }

  String _buttonText() {
    if (position == IntervalBellPosition.fromStart) {
      return 'From Start';
    } else {
      return 'From End';
    }
  }
}
