import 'dart:math';
import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/lesson.graphql.dart';
import 'package:jhanas/api/graphql/schema.graphql.dart';
import 'package:jhanas/api/graphql/technique.graphql.dart';
import 'package:jhanas/api/graphql/unit.graphql.dart';
import 'package:jhanas/api/graphql/unit_technique.graphql.dart';
import 'package:jhanas/atoms/lesson_icon.dart';
import 'package:jhanas/features/lessons_roadmap/widgets/atoms/lesson_item.dart';
import 'package:jhanas/features/lessons_roadmap/widgets/atoms/path_curve.dart';
import 'package:jhanas/features/lessons_roadmap/widgets/atoms/technique_item.dart';

const paddingTop = 35.0;
const paddingLeft = 22.0;
const paddingRight = 22.0;
const dy = 70.0;
const lessonRadius = 30.0;

const debugPositions = false;

class LessonPathItem {
  final Fragment$Lesson lesson;
  final LessonState? state;
  final double left;
  final double top;

  const LessonPathItem({
    required this.lesson,
    required this.state,
    required this.left,
    required this.top,
  });
}

class LessonsPath extends StatelessWidget {
  final Fragment$UnitFull unit;
  final List<Fragment$Lesson> lessons;
  final List<Fragment$UnitTechnique> techniques;
  final bool isVisited;
  final double screenWidth;
  final ScrollController scrollController;

  const LessonsPath({
    super.key,
    required this.unit,
    required this.lessons,
    required this.techniques,
    required this.isVisited,
    required this.screenWidth,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    final width = screenWidth - paddingLeft - paddingRight;

    final lessonsList = <LessonPathItem>[];
    final techniquesList = <Widget>[];
    final curvePoints = <Point<double>>[];
    final debugPoints = <Widget>[];

    void addDebugPoint(double left, double top) {
      if (!debugPositions) {
        return;
      }

      debugPoints.add(Positioned(
        left: left,
        top: top,
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 4),
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
            ),
          ),
        ),
      ));
    }

    void addTechnique(Fragment$Technique technique, double left, double top) {
      techniquesList.add(TechniqueItem(
        unit: unit,
        technique: technique,
        left: left,
        top: top,
        size: 80,
      ));
      addDebugPoint(left, top);
    }

    double height = 0;

    // how much space we have for content, in percents
    final centerX = screenWidth / 2;
    final wide = (width - lessonRadius * 2) / screenWidth;

    var distance = 0.0;
    double left, top;

    // calculate lessons positions

    int masteryLessonsCount = 0;
    int masteryLessonsFinished = 0;
    int masteryLessonsToShow = 5;
    bool? isPreviousMasteryLessonFinished;

    int i, i8;
    final tops = <double>[];
    for (i = 0; i < lessons.length; i++) {
      final lesson = lessons[i];
      i8 = i % 8;

      left = centerX + wide * centerX * sin(i8 * pi / 4);

      if (i == 0) {
        // first lesson top
        top = paddingTop;

        // we need this first point to calculate quadratic bezier curve
        curvePoints.add(Point(
          centerX + wide * centerX * sin(-1 * pi / 4),
          paddingTop - dy,
        ));
      } else if (i == 1) {
        // second lesson top
        top = paddingTop + dy;
      } else {
        // calculate distance for all lessons items based on first two items
        if (distance == 0) {
          distance = sqrt(pow(lessonsList[0].left - lessonsList[1].left, 2) +
              pow(lessonsList[0].top - lessonsList[1].top, 2));
        }
        // all other lessons top is based on previous lesson top and distance
        top = lessonsList[i - 1].top +
            sqrt(pow(distance, 2) - pow(left - lessonsList[i - 1].left, 2));
      }
      tops.add(top);

      LessonState? lessonState;
      if (!isVisited && i == 0) {
        lessonState = LessonState.current;
      }

      if (lesson.type == Enum$LessonLessonType.mastery) {
        masteryLessonsCount++;

        if (isPreviousMasteryLessonFinished == false) {
          lessonState = LessonState.disabled;
        } else {
          if (lesson.finishedAt != null) {
            masteryLessonsFinished++;
            masteryLessonsToShow = (masteryLessonsFinished ~/ 5 + 1) * 5;
            isPreviousMasteryLessonFinished = true;
          } else {
            isPreviousMasteryLessonFinished = false;
          }
        }

        if (masteryLessonsCount > masteryLessonsToShow) {
          i--;
          break;
        }
      }

      lessonsList.add(LessonPathItem(
        lesson: lesson,
        state: lessonState,
        top: top,
        left: left,
      ));
      curvePoints.add(Point(left, top));

      addDebugPoint(left, top);

      height = top + lessonRadius * 2;
    }

    if (i >= lessons.length) {
      i = lessons.length - 1;
    }

    // we need this last point to calculate quadratic bezier curve
    i8 = (i + 1) % 8;
    left = centerX + wide * centerX * sin(i8 * pi / 4);
    top = lessonsList[i].top +
        sqrt(pow(distance, 2) - pow(left - lessonsList[i].left, 2));
    curvePoints.add(Point(left, top));

    // calculate techniques positions

    // split all techniques into blocks of three
    final techniquesBlock = <List<Fragment$Technique>>[];
    for (var i = 0; i < (techniques.last.position / 3).ceil(); i++) {
      techniquesBlock.add([]);
    }
    for (final t in techniques) {
      techniquesBlock[((t.position - 1) / 3).floor()].add(t.technique);
    }

    // put techniques on the path
    for (var i = 0; i < techniquesBlock.length; i++) {
      final sideSign = i % 2 == 0 ? -1 : 1;

      if (techniquesBlock[i].length == 3) {
        addTechnique(
          techniquesBlock[i][0],
          centerX + sideSign * centerX * wide * 0.8,
          tops[i * 4 + 1],
        );

        addTechnique(
          techniquesBlock[i][1],
          centerX - sideSign * centerX * wide * 0.1,
          tops[i * 4 + 2],
        );

        addTechnique(
          techniquesBlock[i][2],
          centerX + sideSign * centerX * wide * 0.8,
          tops[i * 4 + 3],
        );
      } else if (techniquesBlock[i].length == 2) {
        addTechnique(
          techniquesBlock[i][0],
          centerX + sideSign * centerX * wide * 0.7,
          (3 * tops[i * 4 + 1] + tops[i * 4 + 2]) / 4,
        );

        addTechnique(
          techniquesBlock[i][1],
          centerX + sideSign * centerX * wide * 0.1,
          (tops[i * 4 + 2] + tops[i * 4 + 3]) / 2,
        );
      } else if (techniquesBlock[i].length == 1) {
        final pos = (techniquesBlock[i].first.order - 1) % 3;
        switch (pos) {
          case 0:
            addTechnique(
              techniquesBlock[i][0],
              centerX + sideSign * centerX * wide * 0.7,
              (3 * tops[i * 4 + 1] + tops[i * 4 + 2]) / 4,
            );
            break;
          case 1:
            addTechnique(
              techniquesBlock[i][0],
              centerX,
              tops[i * 4 + 2],
            );
            break;
          case 2:
            addTechnique(
              techniquesBlock[i][0],
              centerX + sideSign * centerX * wide * 0.1,
              (tops[i * 4 + 2] + tops[i * 4 + 3]) / 2,
            );
            break;
          default:
            continue;
        }
      }
    }

    return SizedBox(
      width: screenWidth,
      height: height,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomPaint(
            size: Size.infinite,
            painter: PathCurve(points: curvePoints),
          ),
          ...lessonsList
              .map(
                (l) => LessonItem(
                  key: UniqueKey(),
                  left: l.left,
                  top: l.top,
                  unit: unit,
                  lesson: l.lesson,
                  state: l.state,
                  radius: lessonRadius,
                  scrollController: scrollController,
                ),
              )
              .toList(),
          ...techniquesList,
          if (debugPositions) ...debugPoints,
        ],
      ),
    );
  }
}
