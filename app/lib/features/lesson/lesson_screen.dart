import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/lesson.graphql.dart';
import 'package:jhanas/features/lesson/widgets/lesson_info.dart';
import 'package:jhanas/helpers/error.dart';

class LessonScreen extends StatelessWidget {
  final String courseId;
  final String unitId;
  final String lessonId;

  const LessonScreen({
    super.key,
    required this.courseId,
    required this.unitId,
    required this.lessonId,
  });

  @override
  Widget build(BuildContext context) {
    return Query$FetchLesson$Widget(
      options: Options$Query$FetchLesson(
        operationName: 'FetchLesson',
        variables: Variables$Query$FetchLesson(
          lessonId: lessonId,
        ),
      ),
      builder: (result, {fetchMore, refetch}) {
        final noLesson = result.data == null || result.data?['node'] == null;

        if (result.hasException) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            errorMessage(
              'Internal server error',
              exception: result.exception.toString(),
              alert: noLesson && !result.isLoading,
            );
          });
        }

        if (noLesson) {
          if (result.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          return const Center(child: Text('Lesson not found'));
        }

        final lesson = Fragment$LessonFull.fromJson(result.data?['node']);

        if (lesson.unit.id != unitId || lesson.unit.courseID != courseId) {
          return const Center(child: Text('Lesson not found'));
        }

        return LessonInfo(lesson: lesson);
      },
    );
  }
}
