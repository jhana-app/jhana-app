import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/unit.graphql.dart';
import 'package:jhanas/features/units_list/widgets/atoms/unit_card.dart';

class UnitInfo extends StatelessWidget {
  final Fragment$Unit unit;
  final int count;
  final int position;

  const UnitInfo({
    super.key,
    required this.unit,
    required this.count,
    required this.position,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: UnitCard(unit: unit),
    );
  }
}
