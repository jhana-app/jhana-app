import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jhanas/api/graphql/technique.graphql.dart';
import 'package:jhanas/api/graphql/unit.graphql.dart';
import 'package:jhanas/atoms/technique_icon_big.dart';
import 'package:jhanas/router.dart';

class TechniqueItem extends StatelessWidget {
  final Fragment$Unit unit;
  final Fragment$Technique technique;
  final double left;
  final double top;
  final double size;
  final double borderWidth;

  const TechniqueItem({
    super.key,
    required this.unit,
    required this.technique,
    required this.left,
    required this.top,
    this.size = 128,
    this.borderWidth = 4,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top - size / 2 - 8,
      child: FractionalTranslation(
        translation: const Offset(-0.5, 0),
        child: InkWell(
          onTap: () {
            context
                .pushNamed(APP_PAGE.techniqueDetails.toName, pathParameters: {
              'courseId': unit.courseID,
              'unitId': unit.id,
              'techniqueId': technique.id,
            });
          },
          borderRadius: BorderRadius.circular(8),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                TechniqueIconBig(
                  technique: technique,
                  size: size,
                  borderWidth: borderWidth,
                ),
                const SizedBox(height: 6),
                SizedBox(
                  width: size * 2,
                  child: Text(
                    technique.title,
                    style: const TextStyle(fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
