import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:jhanas/player/audio_handler.dart';
import 'package:jhanas/player/media_source.dart';
import 'package:jhanas/player/play_button.dart';
import 'package:jhanas/router.dart';

class WithMiniPlayer extends StatefulWidget {
  final bool isFullscreen;
  final Widget child;

  const WithMiniPlayer({
    super.key,
    required this.isFullscreen,
    required this.child,
  });

  @override
  State<WithMiniPlayer> createState() => _WithMiniPlayerState();
}

class _WithMiniPlayerState extends State<WithMiniPlayer> {
  final _audioHandler = GetIt.instance<AudioHandler>();
  // final _router = GetIt.instance<GoRouter>();

  // @override
  // void initState() {
  //   super.initState();
  //   _router.addListener(_routeListener);
  // }

  // @override
  // void dispose() {
  //   _router.removeListener(_routeListener);
  //   super.dispose();
  // }

  // void _routeListener() {
  //   // NOTE(vlad): kind of dirty hack to pause player when
  //   // navigating to fullscreen pages outside of theory retreats
  //   if (widget.isFullscreen &&
  //       !_router.location.startsWith('/theory/listen') &&
  //       _audioHandler.playerStateNotifier.value.playing) {
  //     _audioHandler.pause();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _audioHandler.mediaSourceNotifier,
      builder: (_, mediaSource, __) {
        final hidden = widget.isFullscreen || mediaSource == null;
        return Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: hidden ? 0 : 64),
              child: widget.child,
            ),
            if (!hidden)
              Align(
                alignment: Alignment.bottomCenter,
                child: MiniPlayer(mediaSource: mediaSource),
              ),
          ],
        );
      },
    );
  }
}

class MiniPlayer extends StatefulWidget {
  final MediaSource mediaSource;

  const MiniPlayer({
    super.key,
    required this.mediaSource,
  });

  @override
  State<MiniPlayer> createState() => _MiniPlayerState();
}

class _MiniPlayerState extends State<MiniPlayer> {
  final _audioHandler = GetIt.instance<AudioHandler>();

  void _onTap(MediaSource mediaSource) {
    if (mediaSource is TheoryMediaSource) {
      context.pushNamed(
        APP_PAGE.theoryListenEpisode.toName,
        pathParameters: {
          'contentId': mediaSource.content.id,
          'episodeId': mediaSource.episode.id,
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: const BoxDecoration(
        color: Color(0xff303030),
        border: Border(
          top: BorderSide(
            color: Color(0xff505050),
          ),
          // bottom: BorderSide(
          //   color: Color(0xff505050),
          // ),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
              height: 62,
              child: Center(
                child: Row(
                  children: [
                    const SizedBox(width: 8),
                    Expanded(
                      child: InkWell(
                        onTap: () => _onTap(widget.mediaSource),
                        child: Row(
                          children: [
                            _image(widget.mediaSource),
                            const SizedBox(width: 8),
                            _info(widget.mediaSource),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: ValueListenableBuilder(
                        valueListenable: _audioHandler.playerStateNotifier,
                        builder: (_, state, __) => PlayButton(
                          loading:
                              state.idle || state.loading || state.buffering,
                          playing: state.playing,
                          onPlay: _audioHandler.play,
                          onPause: _audioHandler.pause,
                          radius: 24,
                          iconSize: 32,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          _progress(),
        ],
      ),
    );
  }

  Widget _image(MediaSource mediaSource) {
    if (mediaSource is TheoryMediaSource) {
      // theory content
      return SizedBox(
        width: 48,
        height: 48,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          child: Image(
            image: ExtendedNetworkImageProvider(
              mediaSource.content.iconimage,
              cache: true,
            ),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    // unknown media source
    return SizedBox(
      width: 48,
      height: 48,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        child: Container(
          color: const Color(0xff4A4458),
        ),
      ),
    );
  }

  Widget _info(MediaSource mediaSource) {
    if (mediaSource is TheoryMediaSource) {
      // theory content
      return Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              mediaSource.content.title,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: const TextStyle(
                fontSize: 14,
                height: 1.5,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            // const SizedBox(height: 4),
            Text(
              mediaSource.episode.title,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: const TextStyle(
                fontSize: 14,
                height: 1.5,
                color: Color(0xFFCCCCCC),
              ),
            ),
            const SizedBox(height: 4),
          ],
        ),
      );
    }

    // unknown media source
    return Expanded(child: Container());
  }

  Widget _progress() {
    return ValueListenableBuilder(
      valueListenable: _audioHandler.progressNotifier,
      builder: (_, position, __) => SizedBox(
        height: 1,
        child: Stack(
          children: [
            Container(
              color: const Color(0xff505050),
            ),
            if (position.total.inSeconds > 0)
              FractionallySizedBox(
                widthFactor: (position.current.inMilliseconds /
                        position.total.inMilliseconds)
                    .clamp(0, 1),
                child: Container(
                  color: const Color(0xffCCC2DC),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
