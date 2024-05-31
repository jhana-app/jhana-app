import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:jhanas/atoms/button_contained.dart';
import 'package:jhanas/atoms/button_outline.dart';
import 'package:jhanas/atoms/pull_down_indicator.dart';
import 'package:jhanas/models/meditation_timer.dart';

const minInterval = 1.0; // 1 second
const maxInterval = 30.0 * 60; // 30 minutes
const repeatingButtonWidth = 50.0;

class SelectIntervalBellRepeat extends StatelessWidget {
  final IntervalBellRepeat? repeat;
  final ValueChanged<IntervalBellRepeat?> onChanged;

  const SelectIntervalBellRepeat({
    super.key,
    required this.repeat,
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
            return _SelectIntervalBellRepeatBottomSheet(
              repeat: repeat,
              onChanged: onChanged,
            );
          },
        );
      },
    );
  }

  String _buttonText() {
    if (repeat == null) {
      return 'No Repeat';
    }

    final int seconds = repeat!.interval % 60;
    final String secondsText = seconds > 0 ? ' $seconds sec' : '';
    final int minutes = ((repeat!.interval - seconds / 60) / 60).floor();
    final String minutesText = minutes > 0 ? ' $minutes min' : '';

    return 'Repeat every$minutesText$secondsText';
  }
}

class _SelectIntervalBellRepeatBottomSheet extends StatefulWidget {
  final IntervalBellRepeat? repeat;
  final ValueChanged<IntervalBellRepeat?> onChanged;

  const _SelectIntervalBellRepeatBottomSheet({
    required this.repeat,
    required this.onChanged,
  });

  @override
  _SelectIntervalBellRepeatBottomSheetState createState() =>
      _SelectIntervalBellRepeatBottomSheetState();
}

class _SelectIntervalBellRepeatBottomSheetState
    extends State<_SelectIntervalBellRepeatBottomSheet> {
  late bool enabled;
  late IntervalBellRepeat repeat;

  PageController repeatController = PageController();

  @override
  void initState() {
    enabled = true;
    repeat = widget.repeat ?? const IntervalBellRepeat(interval: 60, count: 1);
    super.initState();
  }

  @override
  void dispose() {
    repeatController.dispose();
    super.dispose();
  }

  Future<bool> _initializeController() {
    final Completer<bool> completer = Completer<bool>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      repeatController = PageController(
        viewportFraction:
            repeatingButtonWidth / MediaQuery.of(context).size.width,
        initialPage: repeat.count == -1 ? 0 : repeat.count,
      );
      completer.complete(true);
    });
    return completer.future;
  }

  Future<void> _decreaseInterval() async {
    if (repeat.interval == minInterval) {
      return;
    }
    setState(() {
      if (repeat.interval <= minInterval) {
        repeat = repeat.copyWith(interval: minInterval.round());
      } else {
        repeat = repeat.copyWith(interval: repeat.interval - 1);
      }
    });
  }

  Future<void> _setInterval(double value) async {
    setState(() {
      repeat = repeat.copyWith(interval: value.round());
    });
  }

  Future<void> _increaseInterval() async {
    if (repeat.interval == maxInterval) {
      return;
    }
    setState(() {
      if (repeat.interval >= maxInterval) {
        repeat = repeat.copyWith(interval: maxInterval.round());
      } else {
        repeat = repeat.copyWith(interval: repeat.interval + 1);
      }
    });
  }

  Future<void> _setRepeat(int index) async {
    setState(() {
      repeat = repeat.copyWith(count: index == 0 ? -1 : index);
    });
  }

  void _cancel() {
    Navigator.of(context).pop();
  }

  void _submit() {
    widget.onChanged(enabled ? repeat : null);
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
                Row(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 8),
                      child: const Text(
                        'Repeat',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xffE6E1E5),
                        ),
                      ),
                    ),
                    Switch(
                      value: enabled,
                      onChanged: (value) {
                        setState(() {
                          enabled = value;
                        });
                      },
                      activeColor: const Color(0xffD0BCFF),
                      activeTrackColor: const Color(0x88D0BCFF),
                      inactiveThumbColor: const Color(0xff938F99),
                      inactiveTrackColor: const Color(0x88938F99),
                    ),
                  ],
                ),
                const SizedBox(height: 22),
                Opacity(
                  opacity: enabled ? 1 : 0.3,
                  child: IgnorePointer(
                    ignoring: !enabled,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(child: _repeatText()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 40,
                              height: 40,
                              child: ButtonOutline(
                                height: 40,
                                padding: EdgeInsets.zero,
                                onPressed: _decreaseInterval,
                                child: const Icon(
                                  Icons.remove,
                                  size: 30,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Slider(
                                min: minInterval,
                                max: maxInterval,
                                activeColor: const Color(0xffD0BCFF),
                                inactiveColor: const Color(0x44D0BCFF),
                                value: repeat.interval.toDouble(),
                                onChanged: _setInterval,
                              ),
                            ),
                            SizedBox(
                              width: 40,
                              height: 40,
                              child: ButtonOutline(
                                height: 40,
                                padding: EdgeInsets.zero,
                                onPressed: _increaseInterval,
                                child: const Icon(
                                  Icons.add,
                                  size: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        const Center(
                          child: Text(
                            'number of repeating bells',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xffE6E1E5),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          width: double.infinity,
                          height: 40,
                          child: FutureBuilder(
                            future: _initializeController(),
                            builder: (context, snap) {
                              if (!snap.hasData) {
                                return const SizedBox(
                                  width: double.infinity,
                                  height: 40,
                                );
                              }
                              return PageView.builder(
                                physics: const PageScrollPhysics(),
                                controller: repeatController,
                                onPageChanged: _setRepeat,
                                itemCount: 51,
                                itemBuilder: (context, index) => repeat.count ==
                                            index ||
                                        (repeat.count == -1 && index == 0)
                                    ? ButtonOutline(
                                        height: 40,
                                        width: repeatingButtonWidth,
                                        padding: EdgeInsets.zero,
                                        onPressed: () {},
                                        child: Text(
                                          index == 0 ? '∞' : '$index',
                                        ),
                                      )
                                    : InkWell(
                                        onTap: () {
                                          if (repeat.count == index ||
                                              (repeat.count == -1 &&
                                                  index == 0)) {
                                            return;
                                          }
                                          repeatController.animateToPage(
                                            index,
                                            duration: const Duration(
                                                milliseconds: 300),
                                            curve: Curves.easeInOut,
                                          );
                                        },
                                        child: SizedBox(
                                          height: 40,
                                          width: repeatingButtonWidth,
                                          child: Center(
                                            child: Text(
                                                index == 0 ? '∞' : '$index'),
                                          ),
                                        ),
                                      ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 22),
                Row(
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
                const SizedBox(height: 22),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _repeatText() {
    final int seconds = repeat.interval % 60;
    final String secondsText = seconds > 0 ? ' $seconds sec' : '';
    final int minutes = ((repeat.interval - seconds / 60) / 60).floor();
    final String minutesText = minutes > 0 ? ' $minutes min' : '';
    return Text(
      'every$minutesText$secondsText',
      style: const TextStyle(
        fontSize: 16,
        color: Color(0xffE6E1E5),
      ),
    );
  }
}
