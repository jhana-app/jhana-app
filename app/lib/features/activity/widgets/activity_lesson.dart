import 'dart:math';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jhanas/api/graphql/lesson.graphql.dart';
import 'package:jhanas/atoms/lesson_icon.dart';
import 'package:jhanas/helpers/duration.dart';
import 'package:jhanas/router.dart';

class ActivityLesson extends StatelessWidget {
  final Fragment$LessonFull lesson;

  const ActivityLesson({
    super.key,
    required this.lesson,
  });

  @override
  Widget build(BuildContext context) {
    final List<int> audioDurations = lesson.audios.isNotEmpty
        ? lesson.audios.map((a) => a.duration).toList()
        : [];
    final duration = audioDurations.isNotEmpty ? audioDurations.reduce(max) : 0;

    return InkWell(
      onTap: () {
        context.goNamed(APP_PAGE.lessonDetails.toName, pathParameters: {
          'courseId': lesson.unit.courseID,
          'unitId': lesson.unit.id,
          'lessonId': lesson.id,
        });
      },
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              LessonIcon(
                unit: lesson.unit,
                lesson: lesson,
                radius: 23,
                iconSize: 34,
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: duration > 0
                    ? [
                        Text(
                          '${lesson.unit.title}. ${lesson.title}',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Icon(Icons.access_time, size: 24),
                            const SizedBox(width: 6),
                            Text(
                              formatDurationHuman(Duration(seconds: duration)),
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ]
                    : [
                        Text(
                          '${lesson.unit.title}. ${lesson.title}',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
              ),
              const Spacer(),
              const SizedBox(width: 10),
              const Icon(Icons.chevron_right, size: 40),
            ],
          ),
        ),
      ),
    );
  }
}
