import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:jhanas/api/graphql/lesson.graphql.dart';
import 'package:jhanas/api/graphql/schema.graphql.dart';
import 'package:jhanas/api/graphql/unit.graphql.dart';
import 'package:jhanas/features/lessons_roadmap/widgets/lessons_roadmap.dart';
import 'package:jhanas/helpers/error.dart';
import 'package:jhanas/player/audio_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LessonsRoadmapScreen extends StatefulWidget {
  final String courseId;
  final String unitId;

  const LessonsRoadmapScreen({
    super.key,
    required this.courseId,
    required this.unitId,
  });

  @override
  State<LessonsRoadmapScreen> createState() => _LessonsRoadmapScreenState();
}

class _LessonsRoadmapScreenState extends State<LessonsRoadmapScreen> {
  final _prefs = GetIt.instance<SharedPreferences>();

  @override
  Widget build(BuildContext context) {
    final options = Options$Query$FetchUnit(
      operationName: 'FetchUnit',
      variables: Variables$Query$FetchUnit(
        unitId: widget.unitId,
      ),
    );

    return Query$FetchUnit$Widget(
      options: options,
      builder: (result, {fetchMore, refetch}) {
        final noUnit = result.data == null || result.data?['node'] == null;
        if (result.hasException) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            errorMessage(
              'Internal server error',
              exception: result.exception.toString(),
              alert: noUnit && !result.isLoading,
            );
          });
        }

        if (noUnit) {
          if (result.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          return const Center(child: Text('Unit not found'));
        }

        final unit = Fragment$UnitFull.fromJson(result.data?['node']);

        if (unit.course.id != widget.courseId) {
          return const Center(child: Text('Unit not found'));
        }

        final playerSpeed = _prefs.getDouble(speedPrefsKey) ?? 1.0;

        final List<Fragment$Lesson> lessons = [];

        for (final e in unit.lessons.edges ?? []) {
          var lesson = e.node! as Fragment$Lesson;

          if (lesson.finishedAt == null) {
            final episodePosition = _prefs.getInt(positionPrefsKey(lesson.id));
            if (episodePosition != null && episodePosition != lesson.progress) {
              lesson = lesson.copyWith(progress: episodePosition);
            }
          } else if (lesson.progress > 0) {
            lesson = lesson.copyWith(progress: 0);
          }

          if (playerSpeed != 1.0) {
            lesson = lesson.copyWith(
              progress: (lesson.progress / playerSpeed).round(),
            );
          }

          lessons.add(lesson);
        }

        var isVisited = false;
        var guidedLessonsCount = 0;
        var guidedLessonsFinished = 0;

        for (final l in lessons) {
          if (l.isLast || l.isNext || l.finishedAt != null) {
            isVisited = true;
          }

          if (l.type == Enum$LessonLessonType.guided) {
            guidedLessonsCount++;
            if (l.finishedAt != null) {
              guidedLessonsFinished++;
            }
          }
        }

        lessons.sort((a, b) => a.order.compareTo(b.order));

        return LessonsRoadmap(
          course: unit.course,
          unit: unit,
          lessons: lessons,
          isVisited: isVisited,
          isFinished: guidedLessonsCount == guidedLessonsFinished,
        );
      },
    );
  }
}
