import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/lesson.graphql.dart';
import 'package:jhanas/api/graphql/schema.graphql.dart';
import 'package:jhanas/api/graphql/unit.graphql.dart';
import 'package:jhanas/helpers/color.dart';

enum LessonState {
  none,
  current,
  completed,
  disabled,
}

class LessonIcon extends StatelessWidget {
  final Fragment$Unit unit;
  final Fragment$Lesson lesson;
  final LessonState? state;
  final double radius;
  final double iconSize;
  final void Function()? onPressed;

  const LessonIcon({
    super.key,
    required this.unit,
    required this.lesson,
    this.state,
    this.radius = 30,
    this.iconSize = 44,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    late LessonState lessonState;

    if (state != null) {
      lessonState = state!;
    } else if (lesson.finishedAt != null) {
      lessonState = LessonState.completed;
    } else if (lesson.isNext) {
      lessonState = LessonState.current;
    } else {
      lessonState = LessonState.none;
    }

    return lessonState == LessonState.current
        ? CircleAvatar(
            radius: radius + 2,
            backgroundColor: Colors.white,
            child: _button(context, lessonState),
          )
        : _button(context, lessonState);
  }

  Widget _button(BuildContext context, LessonState lessonState) {
    final color =
        lessonButtonColor(unit.color, lessonState == LessonState.completed);

    IconData icon;
    switch (lesson.type) {
      case Enum$LessonLessonType.guided:
        if (lessonState == LessonState.completed) {
          icon = Icons.local_library;
        } else {
          icon = Icons.local_library_outlined;
        }
        break;
      case Enum$LessonLessonType.mastery:
        if (lessonState == LessonState.completed) {
          icon = Icons.local_fire_department;
        } else {
          icon = Icons.local_fire_department_outlined;
        }
        break;
      case Enum$LessonLessonType.$unknown:
        icon = Icons.question_mark;
    }

    return CircleAvatar(
      radius: radius,
      backgroundColor: color,
      child: onPressed == null || lessonState == LessonState.disabled
          ? Padding(
              padding: EdgeInsets.all((iconSize - radius) / 2),
              child: Icon(
                icon,
                color: lessonState == LessonState.disabled
                    ? const Color.fromRGBO(255, 255, 255, 0.1)
                    : Colors.white,
                size: iconSize,
              ),
            )
          : IconButton(
              padding: EdgeInsets.all((iconSize - radius) / 2),
              icon: Icon(icon, color: Colors.white, size: iconSize),
              iconSize: iconSize,
              color: const Color(0xffCCC2DC),
              onPressed: onPressed,
            ),
    );
  }
}
