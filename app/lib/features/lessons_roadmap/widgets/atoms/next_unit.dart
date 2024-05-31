import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jhanas/api/graphql/unit.graphql.dart';
import 'package:jhanas/atoms/button_contained.dart';
import 'package:jhanas/atoms/mastering_bottom_sheet.dart';
import 'package:jhanas/router.dart';

class NextUnit extends StatefulWidget {
  final Fragment$Unit unit;
  final Fragment$Unit nextUnit;

  const NextUnit({
    super.key,
    required this.unit,
    required this.nextUnit,
  });

  @override
  State<NextUnit> createState() => _NextUnitState();
}

class _NextUnitState extends State<NextUnit> {
  Future<void> _continue() async {
    final nextUnit = await showStageMastering(
      context: context,
      unit: widget.unit,
      nextUnit: widget.nextUnit,
    );

    if (nextUnit != null && context.mounted) {
      context.pushNamed(
        APP_PAGE.unitRoadmap.toName,
        pathParameters: {
          'courseId': widget.unit.courseID,
          'unitId': nextUnit.id,
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: Color(0xff625b71))),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 42),
        child: Column(
          children: [
            Text('${widget.nextUnit.title} - ${widget.nextUnit.subtitle}'),
            const SizedBox(height: 20),
            Center(
              child: SizedBox(
                width: 125,
                child: ButtonContained(
                  height: 40,
                  onPressed: _continue,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_forward, size: 18),
                      SizedBox(width: 8),
                      Text(
                        'Continue',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
