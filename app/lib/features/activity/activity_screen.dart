import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/content_episode.graphql.dart';
import 'package:jhanas/api/graphql/lesson.graphql.dart';
import 'package:jhanas/api/graphql/schema.graphql.dart';
import 'package:jhanas/features/activity/widgets/activity.dart';
import 'package:jhanas/helpers/error.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Query$FetchActiveLessons$Widget(
      options: Options$Query$FetchActiveLessons(
        operationName: 'FetchActiveLessons',
      ),
      builder: (result, {fetchMore, refetch}) =>
          Query$FetchActiveEpisodes$Widget(
        options: Options$Query$FetchActiveEpisodes(
          operationName: 'FetchActiveEpisodes',
        ),
        builder: (activeEpisodeResult, {fetchMore, refetch}) {
          final List<Fragment$LessonFull> lessons =
              result.parsedData?.activeLessons ?? [];

          final List<Fragment$ContentEpisodeFull> activeEpisodes =
              activeEpisodeResult.parsedData?.activeEpisodes ?? [];

          final activeEpisodesSorted = [...activeEpisodes];
          activeEpisodesSorted
              .sort((a, b) => a.content.order.compareTo(b.content.order));

          if (result.hasException) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              errorMessage(
                'Internal server error',
                exception: result.exception.toString(),
                alert: lessons.isEmpty && !result.isLoading,
              );
            });
          } else if (activeEpisodeResult.hasException) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              errorMessage(
                'Internal server error',
                exception: activeEpisodeResult.exception.toString(),
                alert: lessons.isEmpty && !activeEpisodeResult.isLoading,
              );
            });
          }

          final listenEpisodes = activeEpisodesSorted
              .where((e) => e.type == Enum$ContentEpisodeContentType.audio)
              .toList();

          final watchEpisodes = activeEpisodesSorted
              .where((e) => e.type == Enum$ContentEpisodeContentType.video)
              .toList();

          return Activity(
            lessons: lessons,
            listenEpisodes: listenEpisodes,
            watchEpisodes: watchEpisodes,
          );
        },
      ),
    );
  }
}
