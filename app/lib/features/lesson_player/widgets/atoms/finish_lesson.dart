import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jhanas/api/graphql/lesson.graphql.dart';
import 'package:jhanas/atoms/button_contained.dart';
import 'package:jhanas/atoms/button_outline.dart';
import 'package:jhanas/features/lesson_player/widgets/atoms/lesson_player_manager.dart';
import 'package:jhanas/router.dart';

const minDurationToFinish = Duration(minutes: 1);

class FinishLesson extends StatelessWidget {
  final Fragment$LessonFull lesson;
  final LessonPlayerManager playerManager;

  const FinishLesson({
    super.key,
    required this.lesson,
    required this.playerManager,
  });

  void _back(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    } else {
      context.goNamed(
        APP_PAGE.lessonDetails.toName,
        pathParameters: {
          'courseId': lesson.unit.courseID,
          'unitId': lesson.unit.id,
          'lessonId': lesson.id,
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          flex: 5,
          child: ButtonOutline(
            height: 40,
            onPressed: () => _back(context),
            child: const Text(
              'Discard session',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Flexible(
          flex: 5,
          child: ValueListenableBuilder<Duration>(
            valueListenable: playerManager.timerNotifier,
            builder: (_, timer, __) {
              return ButtonContained(
                height: 40,
                disabled: timer < minDurationToFinish,
                onPressed: () => playerManager.finishLesson(true),
                child: const Text(
                  'Finish',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
