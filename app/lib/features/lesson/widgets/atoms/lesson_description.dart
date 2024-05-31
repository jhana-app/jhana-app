import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/lesson.graphql.dart';
import 'package:jhanas/atoms/markdown.dart';

class LessonDescription extends StatelessWidget {
  final Fragment$Lesson lesson;

  const LessonDescription({super.key, required this.lesson});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Markdown(data: lesson.description),
    );
  }
}
