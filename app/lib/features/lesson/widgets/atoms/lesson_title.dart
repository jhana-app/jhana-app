import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/lesson.graphql.dart';

String humanDuration(int duration) {
  final int seconds = duration % 60;
  final int minutes = ((duration - seconds) / 60).floor() % 60;
  final int hours = ((duration - minutes * 60 - seconds) / 3600).floor();
  final parts = <String>[];
  if (hours > 0) {
    parts.add('${hours}h');
  }
  if (minutes > 0) {
    parts.add('${minutes}m');
  }
  if (seconds > 0) {
    parts.add('${seconds}s');
  }
  return parts.join(' ');
}

class LessonTitle extends StatelessWidget {
  final Fragment$LessonFull lesson;

  const LessonTitle({
    super.key,
    required this.lesson,
  });

  @override
  Widget build(BuildContext context) {
    int duration = 0;
    for (final audio in lesson.audios) {
      if (duration == 0 || duration < audio.duration) {
        duration = audio.duration;
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          lesson.title,
          style: const TextStyle(fontSize: 28),
        ),
        Text(
          humanDuration(duration),
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color(0xff938F99),
          ),
        ),
      ],
    );
  }
}
