import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:jhanas/atoms/button_contained.dart';
import 'package:jhanas/atoms/button_outline.dart';
import 'package:jhanas/atoms/pull_down_indicator.dart';
import 'package:jhanas/atoms/warmup_wheel.dart';

class WarmUpButton extends StatelessWidget {
  final int warmUp;
  final ValueChanged<int> onChanged;

  const WarmUpButton({
    super.key,
    required this.warmUp,
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
            return SelectWarmUpBottomSheet(
              warmUp: warmUp,
              valueChanged: onChanged,
            );
          },
        );
      },
    );
  }

  String _buttonText() {
    if (warmUp == 0) {
      return 'No Warm Up';
    } else if (warmUp < 60) {
      return 'Warm Up - $warmUp sec';
    } else {
      return 'Warm Up - ${warmUp ~/ 60} min';
    }
  }
}

class SelectWarmUpBottomSheet extends StatefulWidget {
  final int warmUp;
  final ValueChanged<int> valueChanged;

  const SelectWarmUpBottomSheet({
    super.key,
    required this.warmUp,
    required this.valueChanged,
  });

  @override
  SelectWarmUpBottomSheetState createState() => SelectWarmUpBottomSheetState();
}

class SelectWarmUpBottomSheetState extends State<SelectWarmUpBottomSheet> {
  late int _warmUp;

  @override
  void initState() {
    _warmUp = widget.warmUp;
    super.initState();
  }

  Future<void> _selectWarmUp(int warmUp) async {
    setState(() {
      _warmUp = warmUp;
    });
  }

  void _cancel() {
    Navigator.of(context).pop();
  }

  void _submit() {
    widget.valueChanged(_warmUp);
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
                    'Warm Up',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xffE6E1E5),
                    ),
                  ),
                ),
                WarmUpWheel(
                  seconds: _warmUp,
                  onChanged: _selectWarmUp,
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
