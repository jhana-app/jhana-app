import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jhanas/api/graphql/unit.graphql.dart';
import 'package:jhanas/router.dart';

class UnitCard extends StatelessWidget {
  final Fragment$Unit unit;

  const UnitCard({
    super.key,
    required this.unit,
  });

  @override
  Widget build(BuildContext context) {
    final lessonsTotal = unit.lessonsTotal > 0 ? unit.lessonsTotal : unit.days;

    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      child: Container(
        color: const Color.fromRGBO(103, 80, 164, 0.16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                unit.title,
                style: const TextStyle(
                  fontSize: 22,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                '${unit.lessonsCompleted}/$lessonsTotal days',
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: AutoSizeText(
                  unit.description,
                  maxLines: 99,
                  minFontSize: 10,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16,
                    height: 1.4,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              FilledButton(
                style: FilledButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                ),
                onPressed: () => context.pushNamed(
                  APP_PAGE.unitRoadmap.toName,
                  pathParameters: {
                    'courseId': unit.courseID,
                    'unitId': unit.id,
                  },
                ),
                child: const Text('Continue'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
