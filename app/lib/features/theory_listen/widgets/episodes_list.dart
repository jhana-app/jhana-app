import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/content.graphql.dart';
import 'package:jhanas/api/graphql/content_episode.graphql.dart';
import 'package:jhanas/features/theory_listen/widgets/atoms/episode_item.dart';

class EpisodesList extends StatelessWidget {
  final Fragment$Content content;
  final List<Fragment$ContentEpisode> episodes;
  final String? activeEpisodeId;
  final ScrollController scrollController;

  const EpisodesList({
    super.key,
    required this.content,
    required this.episodes,
    required this.scrollController,
    this.activeEpisodeId,
  });

  @override
  Widget build(BuildContext context) {
    if (episodes.isEmpty) {
      return Container();
    }

    final firstEpisodeId = episodes.first.id;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 22),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Color(0xff938F99),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 22),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Episodes',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: 22),
        ...episodes.map(
          (e) => EpisodeItem(
            content: content,
            episode: e,
            isFirst: e.id == firstEpisodeId,
            isActive: e.id == activeEpisodeId,
            scrollController: scrollController,
          ),
        ),
      ],
    );
  }
}
