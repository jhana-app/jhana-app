import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jhanas/atoms/button_contained.dart';
import 'package:jhanas/atoms/button_outline.dart';
import 'package:jhanas/atoms/player_speed_wheel.dart';
import 'package:jhanas/atoms/pull_down_indicator.dart';

class PlayerSpeedButton extends StatelessWidget {
  final double speed;
  final bool disabled;
  final ValueChanged<double> onChanged;

  const PlayerSpeedButton({
    super.key,
    required this.speed,
    required this.disabled,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(shape: BoxShape.circle),
      child: InkWell(
        onTap: disabled
            ? null
            : () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return SelectPlayerSpeedBottomSheet(
                      speed: speed,
                      valueChanged: onChanged,
                    );
                  },
                );
              },
        customBorder: const CircleBorder(),
        child: Container(
          height: 60,
          width: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              '${speed}x',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: disabled
                    ? const Color(0x80CCC2DC)
                    : const Color(0xffCCC2DC),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SelectPlayerSpeedBottomSheet extends StatefulWidget {
  final double speed;
  final ValueChanged<double> valueChanged;

  const SelectPlayerSpeedBottomSheet({
    super.key,
    required this.speed,
    required this.valueChanged,
  });

  @override
  SelectPlayerSpeedBottomSheetState createState() =>
      SelectPlayerSpeedBottomSheetState();
}

class SelectPlayerSpeedBottomSheetState
    extends State<SelectPlayerSpeedBottomSheet> {
  late double _speed;

  @override
  void initState() {
    _speed = widget.speed;
    super.initState();
  }

  Future<void> _selectSpeed(double speed) async {
    setState(() => _speed = speed);
  }

  void _cancel() {
    context.pop();
  }

  void _submit() {
    widget.valueChanged(_speed);
    context.pop();
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
                    'Change speed',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xffE6E1E5),
                    ),
                  ),
                ),
                PlayerSpeedWheel(
                  speed: _speed,
                  onChanged: _selectSpeed,
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
                        onPressed: () => _submit(),
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
}
