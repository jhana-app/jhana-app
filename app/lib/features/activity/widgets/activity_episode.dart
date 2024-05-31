import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jhanas/api/graphql/content_episode.graphql.dart';
import 'package:jhanas/api/graphql/schema.graphql.dart';
import 'package:jhanas/atoms/episode_controls.dart';
import 'package:jhanas/router.dart';

class ActivityEpisode extends StatelessWidget {
  final Fragment$ContentEpisodeFull episode;

  const ActivityEpisode({
    super.key,
    required this.episode,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.goNamed(APP_PAGE.theoryListenEpisode.toName, pathParameters: {
          'contentId': episode.contentID,
          'episodeId': episode.id,
        });
      },
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: const Color(0xff4A4458),
                child: Padding(
                  padding: const EdgeInsets.all(5.5),
                  child: _icon(),
                ),
              ),
              const SizedBox(width: 12),
              Flexible(
                fit: FlexFit.tight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      episode.content.title,
                      maxLines: 3,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 4),
                    EpisodeControls(
                      content: episode.content,
                      episode: episode,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              const Icon(Icons.chevron_right, size: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _icon() {
    switch (episode.type) {
      case Enum$ContentEpisodeContentType.audio:
        return const Icon(
          Icons.headset,
          color: Colors.white,
          size: 32,
        );
      case Enum$ContentEpisodeContentType.video:
        return const Icon(
          Icons.video_library,
          color: Colors.white,
          size: 32,
        );
      default:
        return const Icon(
          Icons.menu_book_outlined,
          color: Colors.white,
          size: 32,
        );
    }
  }
}
