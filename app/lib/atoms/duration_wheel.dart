// This widget is based on https://github.com/icemanbsi/flutter_time_picker_spinner

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jhanas/atoms/scroll_physics.dart';
import 'package:jhanas/models/meditation_timer.dart';

class DurationWheel extends StatefulWidget {
  final Duration duration;
  final void Function(Duration) onChanged;

  const DurationWheel({
    super.key,
    required this.duration,
    required this.onChanged,
  });

  @override
  State<DurationWheel> createState() => _DurationWheelState();
}

class _DurationWheelState extends State<DurationWheel> {
  ScrollController _hourController = ScrollController();
  int _hourSelected = -1;

  ScrollController _minuteController = ScrollController();
  int _minuteSelected = -1;

  final _wheelSize = 2; // show 2 items above and below the selected item
  final _cellHeight = 60.0;
  double _cellWidth = 0;
  final _space = 0.1;

  @override
  void initState() {
    final hours = widget.duration.inHours;
    final minutes = widget.duration.inMinutes.remainder(60);

    _hourSelected = 0;
    for (int i = 0; i < MeditationTimer.hourOptions.length; i++) {
      if (MeditationTimer.hourOptions[i] > hours) {
        break;
      } else {
        _hourSelected = i;
      }
    }
    _hourController = ScrollController(
      initialScrollOffset: _hourSelected * _cellHeight,
    );

    _minuteSelected = 0;
    for (int i = 0; i < MeditationTimer.minuteOptions.length; i++) {
      if (MeditationTimer.minuteOptions[i] > minutes) {
        break;
      } else {
        _minuteSelected = i;
      }
    }
    _minuteController = ScrollController(
      initialScrollOffset: _minuteSelected * _cellHeight,
    );

    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _cellWidth = View.of(context).physicalSize.width /
          View.of(context).devicePixelRatio /
          4;

      _onChanged();
    });
  }

  void _onChanged() {
    widget.onChanged(Duration(
      hours: MeditationTimer.hourOptions[_hourSelected],
      minutes: MeditationTimer.minuteOptions[_minuteSelected],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: (2 + _space * 2) * _cellWidth,
          height: _cellHeight * (_wheelSize * 2 + 1),
          child: Stack(
            children: [
              Positioned(
                width: _cellWidth,
                height: _cellHeight,
                top: _cellHeight * _wheelSize,
                left: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff49454F),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Positioned.fill(
                right: _cellWidth * (1 + _space),
                child: NotificationListener<ScrollNotification>(
                  onNotification: (notification) {
                    if (notification is UserScrollNotification) {
                      if (notification.direction == ScrollDirection.idle) {
                        _onChanged();
                      }
                    } else if (notification is ScrollUpdateNotification) {
                      setState(() {
                        _hourSelected =
                            (_hourController.offset / _cellHeight).round();
                      });
                    }
                    return true;
                  },
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      final optionIndex = index - _wheelSize;

                      if (optionIndex < 0 ||
                          optionIndex >= MeditationTimer.hourOptions.length) {
                        // return empty space before and after the list
                        return SizedBox(height: _cellHeight);
                      }

                      final double diff =
                          (_hourSelected - optionIndex).abs().toDouble();
                      final double opacity = diff > 3 ? 0 : 1 - diff / 3;

                      return InkWell(
                        onTap: () async {
                          if (optionIndex == _hourSelected) {
                            return;
                          }
                          await _hourController.animateTo(
                            _cellHeight * optionIndex,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeOut,
                          );
                          _onChanged();
                        },
                        child: Container(
                          width: _cellWidth,
                          height: _cellHeight,
                          alignment: Alignment.center,
                          child: Text(
                            '${MeditationTimer.hourOptions[optionIndex]}h',
                            style: TextStyle(
                              fontSize: 32,
                              color: Colors.white.withOpacity(opacity),
                            ),
                          ),
                        ),
                      );
                    },
                    controller: _hourController,
                    itemCount:
                        MeditationTimer.hourOptions.length + _wheelSize * 2,
                    physics: ItemScrollPhysics(
                      parent: const ClampingScrollPhysics(),
                      itemHeight: _cellHeight,
                      targetPixelsLimit: 1,
                    ),
                  ),
                ),
              ),
              Positioned(
                width: _cellWidth,
                height: _cellHeight,
                top: _cellHeight * _wheelSize,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff49454F),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Positioned.fill(
                left: _cellWidth * (1 + _space),
                child: NotificationListener<ScrollNotification>(
                  onNotification: (notification) {
                    if (notification is UserScrollNotification) {
                      if (notification.direction == ScrollDirection.idle) {
                        _onChanged();
                      }
                    } else if (notification is ScrollUpdateNotification) {
                      setState(() {
                        _minuteSelected =
                            (_minuteController.offset / _cellHeight).round();
                      });
                    }
                    return true;
                  },
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      final optionIndex = index - _wheelSize;

                      if (optionIndex < 0 ||
                          optionIndex >= MeditationTimer.minuteOptions.length) {
                        // return empty space before and after the list
                        return SizedBox(height: _cellHeight);
                      }

                      final double diff =
                          (_minuteSelected - optionIndex).abs().toDouble();
                      final double opacity = diff > 3 ? 0 : 1 - diff / 3;

                      return InkWell(
                        onTap: () async {
                          if (optionIndex == _minuteSelected) {
                            return;
                          }
                          await _minuteController.animateTo(
                            _cellHeight * optionIndex,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeOut,
                          );
                          _onChanged();
                        },
                        child: Container(
                          width: _cellWidth,
                          height: _cellHeight,
                          alignment: Alignment.center,
                          child: Text(
                            '${MeditationTimer.minuteOptions[optionIndex]}m',
                            style: TextStyle(
                              fontSize: 32,
                              color: Colors.white.withOpacity(opacity),
                            ),
                          ),
                        ),
                      );
                    },
                    controller: _minuteController,
                    itemCount:
                        MeditationTimer.minuteOptions.length + _wheelSize * 2,
                    physics: ItemScrollPhysics(
                      parent: const ClampingScrollPhysics(),
                      itemHeight: _cellHeight,
                      targetPixelsLimit: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
