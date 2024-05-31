import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:jhanas/atoms/button_contained.dart';
import 'package:jhanas/atoms/button_outline.dart';
import 'package:jhanas/atoms/page_title.dart';
import 'package:jhanas/features/timer_setup/widgets/atoms/interval_bell_window.dart';
import 'package:jhanas/helpers/duration.dart';
import 'package:jhanas/layout/layout.dart';
import 'package:jhanas/models/bell.dart';
import 'package:jhanas/models/meditation_timer.dart';

class IntervalBellsSetup extends StatefulWidget {
  final MeditationTimer timer;
  final Function(MeditationTimer) saveTimer;

  const IntervalBellsSetup({
    super.key,
    required this.timer,
    required this.saveTimer,
  });

  @override
  State<IntervalBellsSetup> createState() => _IntervalBellsSetupState();
}

class _IntervalBellsSetupState extends State<IntervalBellsSetup> {
  late MeditationTimer _timer;

  @override
  void initState() {
    _timer = widget.timer;
    super.initState();
  }

  void _addIntervalBell(IntervalBell intervalBell) {
    setState(() {
      _timer = _timer.addIntervalBell(intervalBell);
    });
  }

  void _updateIntervalBell(int index, IntervalBell intervalBell) {
    setState(() {
      _timer = _timer.updateIntervalBell(index, intervalBell);
    });
  }

  void _removeIntervalBell(int index) {
    setState(() {
      _timer = _timer.removeIntervalBell(index);
    });
  }

  void _cancel() {
    Navigator.of(context).pop();
  }

  void _submit() {
    widget.saveTimer(_timer);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      backgroundColor: const Color.fromRGBO(36, 33, 43, 1),
      child: Column(
        children: [
          PageTitle(
            'Interval bells',
            left: TitleButton(
              icon: const Icon(Icons.chevron_left, size: 40),
              isBack: true,
            ),
            right: TitleButton(
              icon: const Icon(Icons.add, size: 40),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return IntervalBellBottomSheet(
                      onSave: _addIntervalBell,
                    );
                  },
                );
              },
            ),
          ),
          Expanded(
            child: _timer.intervalBells.isEmpty
                ? const Center(
                    child: Text(
                      'No interval bells yet',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  )
                : Column(
                    children: [
                      ..._timer.intervalBells.asMap().entries.map((entry) {
                        return _intervalBell(entry.value, entry.key);
                      }).toList(),
                    ],
                  ),
          ),
          const SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  flex: 5,
                  child: ButtonOutline(
                    height: 40,
                    onPressed: _cancel,
                    child: const Text('Cancel'),
                  ),
                ),
                const SizedBox(width: 10),
                Flexible(
                  flex: 5,
                  child: ButtonContained(
                    height: 40,
                    onPressed: _submit,
                    child: const Text('Save'),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 22),
        ],
      ),
    );
  }

  Widget _intervalBell(IntervalBell bell, int index) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) {
            return IntervalBellBottomSheet(
              bell: bell,
              onSave: (intervalBell) {
                _updateIntervalBell(index, intervalBell);
              },
            );
          },
        );
      },
      child: Slidable(
        key: ValueKey(index),
        closeOnScroll: false,
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          extentRatio: 0.25,
          children: [
            SlidableAction(
              onPressed: (context) {
                _removeIntervalBell(index);
              },
              backgroundColor: const Color(0xFFFE4A49),
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: Center(
                  child: _bellImage(bell.bell),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _bellTitle(bell),
                    if (bell.repeat != null) _bellSubtitle(bell.repeat!),
                  ],
                ),
              ),
              _bellInterval(bell.interval),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bellImage(Bell bell) {
    if (bell == Bell.noSound) {
      return const Icon(Icons.volume_off_outlined, size: 28);
    }

    if (bell == Bell.vibration) {
      return const Icon(Icons.vibration, size: 28);
    }

    final image = bells[bell]!.image;

    if (image == null) {
      return Container();
    }

    return Image.asset(
      image,
      fit: BoxFit.cover,
      height: 40,
    );
  }

  Widget _bellTitle(IntervalBell bell) {
    var title = bells[bell.bell]!.name;
    if (bell.bellCount > 1) {
      title += ' x${bell.bellCount}';
    }

    return Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    );
  }

  Widget _bellSubtitle(IntervalBellRepeat repeat) {
    final int seconds = repeat.interval % 60;
    final String secondsText = seconds > 0 ? ' $seconds sec' : '';
    final int minutes = ((repeat.interval - seconds / 60) / 60).floor();
    final String minutesText = minutes > 0 ? ' $minutes min' : '';

    return Text(
      'every$minutesText$secondsText',
      style: const TextStyle(
        color: Colors.grey,
        fontSize: 14,
      ),
    );
  }

  Widget _bellInterval(int interval) {
    return Text(
      formatDuration(Duration(seconds: interval)),
      style: const TextStyle(
        color: Colors.white,
        fontSize: 24,
      ),
    );
  }
}
