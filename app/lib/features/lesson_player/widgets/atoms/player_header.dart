import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/lesson.graphql.dart';
import 'package:jhanas/atoms/page_title.dart';
import 'package:jhanas/router.dart';

class PlayerHeader extends StatelessWidget {
  final Fragment$LessonFull lesson;

  const PlayerHeader({
    super.key,
    required this.lesson,
  });

  @override
  Widget build(BuildContext context) {
    final backRoute = TitleButtonRoute(
      APP_PAGE.lessonDetails.toName,
      {
        'courseId': lesson.unit.courseID,
        'unitId': lesson.unit.id,
        'lessonId': lesson.id,
      },
    );

    return PageTitle(
      lesson.title,
      left: TitleButton(
        icon: const Icon(Icons.chevron_left, size: 40),
        isBack: true,
        route: backRoute,
      ),
      right: TitleButton(
        icon: const Icon(Icons.close_outlined, size: 32),
        isBack: true,
        route: backRoute,
      ),
    );
  }
}
