import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jhanas/api/graphql/lesson.graphql.dart';
import 'package:jhanas/api/graphql/technique.graphql.dart';
import 'package:jhanas/atoms/technique_icon.dart';
import 'package:jhanas/router.dart';

class TechniqueItem extends StatelessWidget {
  final Fragment$LessonFull lesson;
  final Fragment$Technique technique;

  const TechniqueItem({
    super.key,
    required this.lesson,
    required this.technique,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(APP_PAGE.techniqueDetails.toName, pathParameters: {
          'courseId': lesson.unit.courseID,
          'unitId': lesson.unitID,
          'techniqueId': technique.id,
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TechniqueIcon(technique: technique),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      technique.title,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      technique.subtitle,
                      style: const TextStyle(
                        fontSize: 12,
                        height: 16 / 12,
                        color: Color(0xff938F99),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              const Icon(Icons.chevron_right, size: 40),
            ],
          ),
        ),
      ),
    );
  }
}
