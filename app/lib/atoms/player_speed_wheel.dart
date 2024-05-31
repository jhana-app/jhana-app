// This widget is based on https://github.com/icemanbsi/flutter_time_picker_spinner

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jhanas/atoms/scroll_physics.dart';

const defaultSpeedOptions = [0.6, 0.7, 0.8, 0.9, 1.0, 1.1, 1.2];

double validateSpeed(double speed, List<double> options) {
  if (options.isEmpty) {
    return 1.0;
  } else if (options.length == 1) {
    return options.first;
  }

  for (int i = 0; i < options.length - 1; i++) {
    if (speed < (options[i] + options[i + 1]) / 2) {
      return options[i];
    }
  }

  return options.last;
}

class PlayerSpeedWheel extends StatefulWidget {
  final double speed;
  final void Function(double) onChanged;
  final List<double> speedOptions;

  const PlayerSpeedWheel({
    super.key,
    required this.speed,
    required this.onChanged,
    this.speedOptions = defaultSpeedOptions,
  });

  @override
  State<PlayerSpeedWheel> createState() => _PlayerSpeedWheelState();
}

class _PlayerSpeedWheelState extends State<PlayerSpeedWheel> {
  ScrollController _controller = ScrollController();
  int _selected = -1;

  final _wheelSize = 2; // show 2 items above and below the selected item
  final _cellHeight = 60.0;
  double _cellWidth = 0;

  @override
  void initState() {
    final speed = validateSpeed(widget.speed, widget.speedOptions);

    _selected = 0;
    for (int i = 0; i < widget.speedOptions.length; i++) {
      if (widget.speedOptions[i] > speed) {
        break;
      } else {
        _selected = i;
      }
    }

    _controller =
        ScrollController(initialScrollOffset: _selected * _cellHeight);

    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _cellWidth = View.of(context).physicalSize.width /
          View.of(context).devicePixelRatio /
          3;

      widget.onChanged(widget.speedOptions[_selected]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _cellWidth,
      height: _cellHeight * (_wheelSize * 2 + 1),
      child: Stack(
        children: [
          Positioned(
            width: _cellWidth,
            height: _cellHeight,
            top: _cellHeight * _wheelSize,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff49454F),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          Positioned.fill(
            child: NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                if (notification is UserScrollNotification) {
                  if (notification.direction == ScrollDirection.idle) {
                    widget.onChanged(widget.speedOptions[_selected]);
                  }
                } else if (notification is ScrollUpdateNotification) {
                  setState(() {
                    _selected = (_controller.offset / _cellHeight).round();
                  });
                }
                return true;
              },
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final optionIndex = index - _wheelSize;

                  if (optionIndex < 0 ||
                      optionIndex >= widget.speedOptions.length) {
                    // return empty space before and after the list
                    return SizedBox(height: _cellHeight);
                  }

                  final double diff =
                      (_selected - optionIndex).abs().toDouble();
                  final double opacity = diff > 3 ? 0 : 1 - diff / 3;

                  return InkWell(
                    onTap: () async {
                      if (optionIndex == _selected) {
                        return;
                      }
                      await _controller.animateTo(
                        _cellHeight * optionIndex,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeOut,
                      );
                      widget.onChanged(widget.speedOptions[optionIndex]);
                    },
                    child: Container(
                      height: _cellHeight,
                      alignment: Alignment.center,
                      child: Text(
                        '${widget.speedOptions[optionIndex]}x',
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.white.withOpacity(opacity),
                        ),
                      ),
                    ),
                  );
                },
                controller: _controller,
                itemCount: widget.speedOptions.length + _wheelSize * 2,
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
    );
  }
}
