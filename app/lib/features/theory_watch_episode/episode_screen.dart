import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/content_episode.graphql.dart';
import 'package:jhanas/features/theory_watch_episode/widgets/episode_not_found.dart';
import 'package:jhanas/features/theory_watch_episode/widgets/video_unknown.dart';
import 'package:jhanas/features/theory_watch_episode/widgets/video_youtube.dart';
import 'package:jhanas/helpers/error.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TheoryWatchEpisodeScreen extends StatelessWidget {
  final String contentId;
  final String episodeId;
  final bool play;

  const TheoryWatchEpisodeScreen({
    super.key,
    required this.contentId,
    required this.episodeId,
    this.play = false,
  });

  @override
  Widget build(BuildContext context) {
    return Query$FetchContentEpisode$Widget(
      options: Options$Query$FetchContentEpisode(
        operationName: 'FetchContentEpisode',
        variables: Variables$Query$FetchContentEpisode(
          contentEpisodeId: episodeId,
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

        final episode =
            Fragment$ContentEpisodeFull.fromJson(result.data?['node']);

        final youtubeVideoId = YoutubePlayer.convertUrlToId(episode.streamurl);

        if (youtubeVideoId != null) {
          return WatchYoutubeEpisode(
            episode: episode,
            youtubeVideoId: youtubeVideoId,
            autoplay: play,
          );
        } else {
          return VideoUnknown(contentId: contentId);
        }
      },
    );
  }
}
