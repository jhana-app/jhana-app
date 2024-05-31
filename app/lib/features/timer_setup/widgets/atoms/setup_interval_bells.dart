import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jhanas/atoms/button_outline.dart';
import 'package:jhanas/models/meditation_timer.dart';
import 'package:jhanas/router.dart';

class SetupIntervalBells extends StatelessWidget {
  final List<IntervalBell> intervalBells;

  const SetupIntervalBells({
    super.key,
    required this.intervalBells,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonOutline(
      height: 40,
      child: AutoSizeText(
        _buttonText(),
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        maxLines: 1,
      ),
      onPressed: () {
        context.pushNamed(APP_PAGE.timerIntervalBellsSetup.toName);
      },
    );
  }

  String _buttonText() {
    if (intervalBells.isEmpty) {
      return 'No Interval Bells';
    } else if (intervalBells.length == 1) {
      return '1 Interval Bell';
    } else {
      return '${intervalBells.length} Interval Bells';
    }
  }
}
