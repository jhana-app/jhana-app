import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jhanas/api/graphql/content.graphql.dart';
import 'package:jhanas/api/graphql/content_episode.graphql.dart';
import 'package:jhanas/atoms/episode_controls.dart';
import 'package:jhanas/router.dart';

class EpisodeItem extends StatefulWidget {
  final Fragment$Content content;
  final Fragment$ContentEpisode episode;
  final bool isFirst;
  final bool isActive;
  final ScrollController scrollController;

  const EpisodeItem({
    super.key,
    required this.content,
    required this.episode,
    this.isFirst = false,
    this.isActive = false,
    required this.scrollController,
  });

  @override
  State<EpisodeItem> createState() => _EpisodeItemState();
}

class _EpisodeItemState extends State<EpisodeItem> {
  GlobalKey? _key;

  @override
  void initState() {
    super.initState();

    if (widget.isActive &&
        (widget.episode.finishedAt != null || widget.episode.progress > 0)) {
      _key = GlobalKey();
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_key != null && _key!.currentContext != null) {
        final screenHeight = MediaQuery.of(context).size.height;
        final scrollTo = screenHeight / 3;

        final box = _key!.currentContext!.findRenderObject() as RenderBox;
        final position = box.localToGlobal(Offset.zero);

        if (position.dy > scrollTo) {
          widget.scrollController.jumpTo(
            widget.scrollController.offset + position.dy - scrollTo,
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      key: _key,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!widget.isFirst)
          Padding(
            padding:
                const EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 16),
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Color(0xff625b71),
                  ),
                ),
              ),
            ),
          ),
        InkWell(
          onTap: () {
            context.pushNamed(
              APP_PAGE.theoryListenEpisode.toName,
              pathParameters: {
                'contentId': widget.content.id,
                'episodeId': widget.episode.id,
              },
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  widget.episode.title,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              if (widget.episode.subtitle.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
                  child: Text(
                    widget.episode.subtitle,
                    style: const TextStyle(
                      fontSize: 12,
                      height: 16 / 12,
                      color: Color(0xff938F99),
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(top: 4, left: 12, right: 12),
                child: EpisodeControls(
                  content: widget.content,
                  episode: widget.episode,
                  isActive: widget.isActive,
                  allowDownload: true,
                  withMenu: true,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
