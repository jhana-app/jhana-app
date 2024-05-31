import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:jhanas/api/graphql/content.graphql.dart';
import 'package:jhanas/api/graphql/content_episode.graphql.dart';
import 'package:jhanas/features/theory_listen/widgets/content_info.dart';
import 'package:jhanas/helpers/error.dart';
import 'package:jhanas/player/audio_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TheoryListenScreen extends StatefulWidget {
  final String contentId;

  const TheoryListenScreen({super.key, required this.contentId});

  @override
  State<TheoryListenScreen> createState() => _TheoryListenScreenState();
}

class _TheoryListenScreenState extends State<TheoryListenScreen> {
  final _prefs = GetIt.instance<SharedPreferences>();

  late final _playerSpeed = _prefs.getDouble(speedPrefsKey) ?? 1.0;

  @override
  Widget build(BuildContext context) {
    return Query$FetchActiveEpisode$Widget(
      options: Options$Query$FetchActiveEpisode(
        operationName: 'FetchActiveEpisode',
        variables: Variables$Query$FetchActiveEpisode(
          contentId: widget.contentId,
        ),
      ),
      builder: (activeEpisodeResult, {fetchMore, refetch}) =>
          Query$FetchContent$Widget(
        options: Options$Query$FetchContent(
          operationName: 'FetchContent',
          variables: Variables$Query$FetchContent(
            contentId: widget.contentId,
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
            return const Center(child: Text('Theory not found'));
          }

          final content = Fragment$ContentFull.fromJson(result.data?['node']);

          final episodes = content.episodesList.map((e) {
            var episode = e;

            if (e.finishedAt == null) {
              final episodePosition = _prefs.getInt(positionPrefsKey(e.id));
              if (episodePosition != null && episodePosition != e.progress) {
                episode = episode.copyWith(progress: episodePosition);
              }
            } else if (e.progress > 0) {
              episode = episode.copyWith(progress: 0);
            }

            if (_playerSpeed != 1.0) {
              episode = episode.copyWith(
                duration: (episode.duration / _playerSpeed).round(),
                progress: (episode.progress / _playerSpeed).round(),
              );
            }

            return episode;
          }).toList();

          episodes.sort((a, b) => a.order.compareTo(b.order));

          final activeEpisode = activeEpisodeResult.parsedData?.activeEpisode;

          return ContentInfo(
            content: content,
            episodes: episodes,
            activeEpisode: activeEpisode,
          );
        },
      ),
    );
  }
}
