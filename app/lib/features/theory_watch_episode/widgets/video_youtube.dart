import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:jhanas/api/graphql/content_episode.graphql.dart';
import 'package:jhanas/atoms/markdown.dart';
import 'package:jhanas/features/theory_watch_episode/widgets/atoms/player_controls.dart';
import 'package:jhanas/features/theory_watch_episode/widgets/atoms/player_header.dart';
import 'package:jhanas/layout/layout.dart';
import 'package:jhanas/player/audio_handler.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class WatchYoutubeEpisode extends StatefulWidget {
  final Fragment$ContentEpisodeFull episode;
  final String youtubeVideoId;
  final bool autoplay;

  const WatchYoutubeEpisode({
    super.key,
    required this.episode,
    required this.youtubeVideoId,
    this.autoplay = false,
  });

  @override
  State<WatchYoutubeEpisode> createState() => _WatchEpisodeInfoState();
}

class _WatchEpisodeInfoState extends State<WatchYoutubeEpisode> {
  final _audioHandler = GetIt.instance<AudioHandler>();

  late final _controller = YoutubePlayerController(
    initialVideoId: widget.youtubeVideoId,
    flags: YoutubePlayerFlags(
      autoPlay: widget.autoplay,
      hideThumbnail: true,
      startAt: widget.episode.progress,
    ),
  );

  @override
  void initState() {
    super.initState();

    if (_audioHandler.playerType != PlayerType.none) {
      _audioHandler.dispose();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      backgroundImage: cloudsBackgroundImage,
      child: YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: _controller,
          progressIndicatorColor: const Color(0xffD0BCFF),
          progressColors: const ProgressBarColors(
            backgroundColor: Color(0x66CCC2DC),
            playedColor: Color(0xffD0BCFF),
            bufferedColor: Color(0xaaCCC2DC),
            handleColor: Color(0xffD0BCFF),
          ),
        ),
        builder: (context, player) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PlayerHeader(episode: widget.episode),
            const SizedBox(height: 22),
            player,
            const SizedBox(height: 11),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Markdown(data: widget.episode.description),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 22),
            PlayerControls(
              episode: widget.episode,
              controller: _controller,
            ),
          ],
        ),
      ),
    );
  }
}
