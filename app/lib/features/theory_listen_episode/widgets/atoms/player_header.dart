import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/content_episode.graphql.dart';
import 'package:jhanas/atoms/page_title.dart';
import 'package:jhanas/router.dart';

class PlayerHeader extends StatelessWidget {
  final Fragment$ContentEpisode episode;

  const PlayerHeader({super.key, required this.episode});

  @override
  Widget build(BuildContext context) {
    final backRoute = TitleButtonRoute(
      APP_PAGE.theoryListenDetails.toName,
      {
        'contentId': episode.contentID,
      },
    );

    return PageTitle(
      episode.title,
      fontSize: 24,
      maxLines: 3,
      left: TitleButton(
        icon: const Icon(Icons.chevron_left, size: 40),
        isBack: true,
        route: backRoute,
      ),
      right: TitleButton(
        icon: const Icon(Icons.close_outlined, size: 32),
        isBack: true,
        route: backRoute,
      ),
    );
  }
}
