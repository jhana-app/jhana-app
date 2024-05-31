import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/content.graphql.dart';
import 'package:jhanas/atoms/under_development.dart';
import 'package:jhanas/features/theory_list/widget/atoms/content_item_audio.dart';
import 'package:jhanas/features/theory_list/widget/atoms/content_item_video.dart';
import 'package:jhanas/layout/atoms/page_layout.dart';

enum TheoryType { audio, video, text }

class ContentList extends StatefulWidget {
  final List<Fragment$Content> audio;
  final List<Fragment$Content> video;
  final List<Fragment$Content> text;
  final TheoryType type;

  const ContentList({
    super.key,
    required this.audio,
    required this.video,
    required this.text,
    required this.type,
  });

  @override
  State<ContentList> createState() => _ContentListState();
}

class _ContentListState extends State<ContentList>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();

    var initialIndex = 0;
    switch (widget.type) {
      case TheoryType.audio:
        initialIndex = 0;
        break;
      case TheoryType.video:
        initialIndex = 1;
        break;
      case TheoryType.text:
        initialIndex = 2;
        break;
    }

    _tabController = TabController(
      initialIndex: initialIndex,
      length: 3,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color.fromARGB(0xff, 0x20, 0x26, 0x29);

    return PageLayout(
      backgroundColor: backgroundColor,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Theory', style: TextStyle(fontSize: 16)),
                CircleAvatar(
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
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TabBar(
              controller: _tabController,
              indicatorColor: const Color(0xffD0BCFF),
              tabs: const [
                Tab(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.headset),
                      SizedBox(width: 8),
                      Text('Listen'),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.video_library),
                      SizedBox(width: 8),
                      Text('Watch'),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.menu_book),
                      SizedBox(width: 8),
                      Text('Read'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
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
          const SizedBox(height: 12),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                widget.audio.isEmpty
                    ? _noContent()
                    : CustomScrollView(
                        slivers: [
                          SliverToBoxAdapter(
                            child: Column(
                              children: widget.audio
                                  .map((e) => ContentItemAudio(content: e))
                                  .toList(),
                            ),
                          ),
                        ],
                      ),
                widget.video.isEmpty
                    ? _noContent()
                    : CustomScrollView(
                        slivers: [
                          SliverToBoxAdapter(
                            child: Column(
                              children: widget.video
                                  .map((e) => ContentItemVideo(content: e))
                                  .toList(),
                            ),
                          ),
                        ],
                      ),
                _noContent(),
                // widget.text.isEmpty
                //     ? _noContent()
                //     : CustomScrollView(
                //         slivers: [
                //           SliverToBoxAdapter(
                //             child: Column(
                //               children: widget.text
                //                   .map((e) => ContentItem(content: e))
                //                   .toList(),
                //             ),
                //           ),
                //         ],
                //       ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _noContent() => const Center(child: UnderDevelopment());
}
