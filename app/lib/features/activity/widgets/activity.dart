import 'dart:async';
import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/content_episode.graphql.dart';
import 'package:jhanas/api/graphql/lesson.graphql.dart';
import 'package:jhanas/features/activity/widgets/activity_episode.dart';
import 'package:jhanas/features/activity/widgets/activity_lesson.dart';
import 'package:jhanas/features/week_stats/week_stats.dart';
import 'package:jhanas/layout/layout.dart';

class Activity extends StatefulWidget {
  final List<Fragment$LessonFull> lessons;
  final List<Fragment$ContentEpisodeFull> listenEpisodes;
  final List<Fragment$ContentEpisodeFull> watchEpisodes;

  const Activity({
    super.key,
    required this.lessons,
    required this.listenEpisodes,
    required this.watchEpisodes,
  });

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  late Timer _timer;
  late String timeOfTheDay;

  @override
  void initState() {
    timeOfTheDay = _getTimeOfTheDay();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() => timeOfTheDay = _getTimeOfTheDay());
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  String _getTimeOfTheDay() {
    final hour = DateTime.now().hour;
    if (hour < 6) {
      return 'Night';
    }
    if (hour < 12) {
      return 'Morning';
    }
    if (hour < 18) {
      return 'Afternoon';
    }
    return 'Evening';
  }

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color(0xff202629);

    return PageLayout(
      backgroundColor: backgroundColor,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Good $timeOfTheDay',
                        style: const TextStyle(fontSize: 16),
                      ),
                      const CircleAvatar(
                        radius: 24,
                        backgroundColor: backgroundColor,
                        child: IconButton(
                          icon: Icon(Icons.settings, size: 32),
                          padding: EdgeInsets.zero,
                          onPressed: null,
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 6,
                      horizontal: 12,
                    ),
                    child: WeekStats(),
                  ),
                  _title('Today'),
                  const SizedBox(height: 6),
                  ...widget.lessons.map(
                    (l) => Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: ActivityLesson(lesson: l),
                    ),
                  ),
                  ..._listen(),
                  ..._watch(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _listen() {
    if (widget.listenEpisodes.isEmpty) {
      return [];
    }

    return [
      _title('Listening'),
      const SizedBox(height: 6),
      ...widget.listenEpisodes.map(
        (e) => Padding(
          padding: const EdgeInsets.only(top: 8),
          child: ActivityEpisode(episode: e),
        ),
      ),
    ];
  }

  List<Widget> _watch() {
    if (widget.watchEpisodes.isEmpty) {
      return [];
    }

    return [
      _title('Watching'),
      const SizedBox(height: 6),
      ...widget.watchEpisodes.map(
        (e) => Padding(
          padding: const EdgeInsets.only(top: 8),
          child: ActivityEpisode(episode: e),
        ),
      ),
    ];
  }

  Widget _title(String title) => Padding(
        padding: const EdgeInsets.only(top: 22),
        child: Text(
          title,
          style: const TextStyle(fontSize: 24),
        ),
      );
}
