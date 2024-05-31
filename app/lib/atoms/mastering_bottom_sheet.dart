import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/unit.graphql.dart';
import 'package:jhanas/atoms/button_contained.dart';
import 'package:jhanas/atoms/button_outline.dart';
import 'package:jhanas/atoms/pull_down_indicator.dart';

Future<Fragment$Unit?> showStageMastering({
  required BuildContext context,
  required Fragment$Unit unit,
  required Fragment$Unit nextUnit,
}) {
  return showModalBottomSheet<Fragment$Unit>(
    context: context,
    isScrollControlled: true,
    builder: (context) => MasteringBottomSheet(unit: unit, nextUnit: nextUnit),
  );
}

class MasteringBottomSheet extends StatefulWidget {
  final Fragment$Unit unit;
  final Fragment$Unit nextUnit;

  const MasteringBottomSheet({
    super.key,
    required this.unit,
    required this.nextUnit,
  });

  @override
  MasteringBottomSheetState createState() => MasteringBottomSheetState();
}

class MasteringBottomSheetState extends State<MasteringBottomSheet> {
  void _cancel() => Navigator.pop(context);

  void _submit() => Navigator.pop(context, widget.nextUnit);

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
                const SizedBox(height: 6),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Finishing ${widget.unit.title}',
                    style: const TextStyle(
                      fontSize: 24,
                      color: Color(0xffE6E1E5),
                    ),
                  ),
                ),
                const SizedBox(height: 22),
                Text(
                  widget.unit.mastering,
                  style: const TextStyle(
                    fontSize: 16,
                    height: 24 / 16,
                  ),
                ),
                const SizedBox(height: 33),
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
                        child: Text('Go to ${widget.nextUnit.title}'),
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
