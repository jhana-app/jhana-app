import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:jhanas/api/graphql/content.graphql.dart';
import 'package:jhanas/api/graphql/content_episode.graphql.dart';
import 'package:jhanas/features/theory_listen/widgets/atoms/content_description.dart';
import 'package:jhanas/features/theory_listen/widgets/atoms/content_footer.dart';
import 'package:jhanas/features/theory_listen/widgets/atoms/content_image.dart';
import 'package:jhanas/features/theory_listen/widgets/atoms/settings_menu.dart';
import 'package:jhanas/features/theory_listen/widgets/episodes_list.dart';
import 'package:jhanas/layout/atoms/page_layout.dart';
import 'package:jhanas/player/audio_handler.dart';
import 'package:jhanas/router.dart';

class ContentInfo extends StatefulWidget {
  final Fragment$Content content;
  final List<Fragment$ContentEpisode> episodes;
  final Fragment$ContentEpisode? activeEpisode;

  const ContentInfo({
    super.key,
    required this.content,
    required this.episodes,
    this.activeEpisode,
  });

  @override
  State<ContentInfo> createState() => _ContentInfoState();
}

class _ContentInfoState extends State<ContentInfo> {
  final _audioHandler = GetIt.instance<AudioHandler>();
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color(0xff202629);

    return PageLayout(
      backgroundColor: backgroundColor,
      floatingAction: widget.activeEpisode != null ? _resumeFab() : null,
      floatingActionLocation: FloatingActionButtonLocation.centerFloat,
      child: Stack(
        children: [
          CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: ContentImage(widget.content.coverimage),
                    ),
                    const SizedBox(height: 22),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: AutoSizeText(
                        widget.content.title,
                        maxLines: 2,
                        style: const TextStyle(fontSize: 28),
                      ),
                    ),
                    const SizedBox(height: 12),
                    ContentDescription(content: widget.content),
                    EpisodesList(
                      content: widget.content,
                      episodes: widget.episodes,
                      activeEpisodeId: widget.activeEpisode?.id,
                      scrollController: _scrollController,
                    ),
                    ContentFooter(content: widget.content),
                    const SizedBox(height: 22),
                    if (widget.activeEpisode != null)
                      const SizedBox(height: 62),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: CircleAvatar(
                radius: 24,
                backgroundColor: backgroundColor,
                child: IconButton(
                  color: Colors.white,
                  icon: const Icon(Icons.chevron_left, size: 40),
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    if (context.canPop()) {
                      context.pop();
                    } else {
                      context.goNamed(APP_PAGE.theory.toName);
                    }
                  },
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: CircleAvatar(
                radius: 24,
                backgroundColor: backgroundColor,
                child: IconButton(
                  icon: const Icon(Icons.settings, size: 32),
                  color: Colors.white,
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) => SettingsMenuBottomSheet(
                        content: widget.content,
                        episodes: widget.episodes,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _resumeFab() {
    if (widget.activeEpisode == null) {
      return const SizedBox();
    }
    return ValueListenableBuilder(
      valueListenable: _audioHandler.mediaSourceNotifier,
      builder: (_, mediaSource, __) => mediaSource == null
          ? FloatingActionButton.extended(
              onPressed: () {
                context.pushNamed(
                  APP_PAGE.theoryListenEpisode.toName,
                  pathParameters: {
                    'contentId': widget.content.id,
                    'episodeId': widget.activeEpisode!.id,
                  },
                  queryParameters: {'play': 'true'},
                );
              },
              foregroundColor: const Color(0xFFD0BCFF),
              backgroundColor: const Color(0xff625b71),
              icon: const Icon(Icons.play_arrow, size: 32),
              label: Text(
                widget.activeEpisode!.progress > 0 ? 'Resume' : 'Play',
                style: const TextStyle(fontSize: 22),
              ),
            )
          : const SizedBox(),
    );
  }
}
