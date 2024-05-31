import 'package:flutter/material.dart';
import 'package:jhanas/atoms/button_contained.dart';
import 'package:jhanas/atoms/button_outline.dart';
import 'package:jhanas/atoms/pull_down_indicator.dart';
import 'package:jhanas/features/timer_setup/widgets/atoms/select_bell.dart';
import 'package:jhanas/features/timer_setup/widgets/atoms/select_interval_bell_repeat.dart';
import 'package:jhanas/features/timer_setup/widgets/atoms/select_interval_duration.dart';
import 'package:jhanas/features/timer_setup/widgets/atoms/select_interval_position.dart';
import 'package:jhanas/models/bell.dart';
import 'package:jhanas/models/meditation_timer.dart';

class IntervalBellBottomSheet extends StatefulWidget {
  final IntervalBell? bell;
  final ValueSetter<IntervalBell> onSave;

  const IntervalBellBottomSheet({
    super.key,
    this.bell,
    required this.onSave,
  });

  @override
  IntervalBellBottomSheetState createState() => IntervalBellBottomSheetState();
}

class IntervalBellBottomSheetState extends State<IntervalBellBottomSheet> {
  late bool _isNew;
  late IntervalBell _intervalBell;

  @override
  void initState() {
    _isNew = widget.bell == null;
    _intervalBell = widget.bell ??
        const IntervalBell(
          bell: Bell.bellBasu,
          bellCount: 1,
          interval: 60,
          position: IntervalBellPosition.fromStart,
        );
    super.initState();
  }

  void _bellChanged(Bell bell, int count) {
    setState(() {
      _intervalBell = _intervalBell.copyWith(bell: bell, bellCount: count);
    });
  }

  void _repeatChanged(IntervalBellRepeat? repeat) {
    setState(() {
      if (repeat == null) {
        _intervalBell = _intervalBell.copyWith(noRepeat: true);
      } else {
        _intervalBell = _intervalBell.copyWith(repeat: repeat);
      }
    });
  }

  void _intervalChanged(Duration interval) {
    setState(() {
      _intervalBell = _intervalBell.copyWith(interval: interval.inSeconds);
    });
  }

  void _positionChanged(IntervalBellPosition position) {
    setState(() {
      _intervalBell = _intervalBell.copyWith(position: position);
    });
  }

  void _cancel() {
    Navigator.of(context).pop();
  }

  void _submit() {
    widget.onSave(_intervalBell);
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
                  child: Text(
                    _isNew ? 'New interval bell' : 'Edit interval bell',
                    style: const TextStyle(
                      fontSize: 24,
                      color: Color(0xffE6E1E5),
                    ),
                  ),
                ),
                const SizedBox(height: 13),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      flex: 5,
                      child: BellButton(
                        title: 'Bell',
                        bell: _intervalBell.bell,
                        count: _intervalBell.bellCount,
                        onChanged: _bellChanged,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      flex: 5,
                      child: SelectIntervalBellRepeat(
                        repeat: _intervalBell.repeat,
                        onChanged: _repeatChanged,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 22),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      flex: 5,
                      child: SelectIntervalDuration(
                        duration: Duration(seconds: _intervalBell.interval),
                        onChanged: _intervalChanged,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      flex: 5,
                      child: SelectIntervalPosition(
                        position: _intervalBell.position,
                        onChanged: _positionChanged,
                      ),
                    ),
                  ],
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
