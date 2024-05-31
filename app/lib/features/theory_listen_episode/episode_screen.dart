import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/content.graphql.dart';
import 'package:jhanas/features/theory_listen_episode/widgets/episode_info.dart';
import 'package:jhanas/features/theory_listen_episode/widgets/episode_not_found.dart';
import 'package:jhanas/helpers/error.dart';

class TheoryListenEpisodeScreen extends StatelessWidget {
  final String contentId;
  final String episodeId;
  final bool play;

  const TheoryListenEpisodeScreen({
    super.key,
    required this.contentId,
    required this.episodeId,
    this.play = false,
  });

  @override
  Widget build(BuildContext context) {
    return Query$FetchContent$Widget(
      options: Options$Query$FetchContent(
        operationName: 'FetchContent',
        variables: Variables$Query$FetchContent(
          contentId: contentId,
        ),
      ),
      builder: (result, {fetchMore, refetch}) {
        final noContent = result.data == null || result.data?['node'] == null;

        if (result.hasException) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            errorMessage(
              'Internal server error',
              exception: result.exception.toString(),
              alert: noContent && !result.isLoading,
            );
          });
        }

        if (noContent) {
          if (result.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          return EpisodeNotFound(contentId: contentId);
        }

        final content = Fragment$ContentFull.fromJson(result.data?['node']);

        return ListenEpisodeInfo(
          content: content,
          episodes: content.episodesList,
          episodeId: episodeId,
          autoplay: play,
        );
      },
    );
  }
}
