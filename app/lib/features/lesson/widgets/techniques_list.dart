import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/lesson.graphql.dart';
import 'package:jhanas/api/graphql/technique.graphql.dart';
import 'package:jhanas/features/lesson/widgets/atoms/technique_item.dart';

class TechniquesList extends StatelessWidget {
  final Fragment$LessonFull lesson;
  final List<Fragment$Technique> techniques;

  const TechniquesList({
    super.key,
    required this.lesson,
    required this.techniques,
  });

  @override
  Widget build(BuildContext context) {
    if (techniques.isEmpty) {
      return Container();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 22),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Color(0xff625b71),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 22),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Techniques',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: 12),
        ...techniques.map(
          (e) => TechniqueItem(lesson: lesson, technique: e),
        ),
      ],
    );
  }
}
