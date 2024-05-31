import 'package:audio_video_progress_bar/audio_video_progress_bar.dart' as pb;
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeProgressBar extends StatefulWidget {
  final YoutubePlayerController controller;

  const YoutubeProgressBar({required this.controller, super.key});

  @override
  _YoutubeProgressBarState createState() {
    return _YoutubeProgressBarState();
  }
}

class _YoutubeProgressBarState extends State<YoutubeProgressBar> {
  bool _ready = false;
  Duration _position = Duration.zero;
  Duration _buffered = Duration.zero;
  late Duration _total = widget.controller.metadata.duration;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(positionListener);
    positionListener();
  }

  @override
  void dispose() {
    widget.controller.removeListener(positionListener);
    super.dispose();
  }

  void positionListener() {
    final totalDuration = widget.controller.metadata.duration.inMilliseconds;
    if (mounted && !totalDuration.isNaN && totalDuration != 0) {
      setState(() {
        _ready = true;
        _position = widget.controller.value.position;
        _buffered = Duration(
          milliseconds:
              (totalDuration * widget.controller.value.buffered).round(),
        );
        _total = widget.controller.metadata.duration;
      });
    } else {
      setState(() => _ready = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return pb.ProgressBar(
      progress: _position,
      buffered: _buffered,
      total: _total,
      onSeek: _ready ? widget.controller.seekTo : null,
      baseBarColor: const Color(0x66CCC2DC),
      progressBarColor: const Color(0xffD0BCFF),
      thumbColor: const Color(0xffD0BCFF),
      thumbRadius: 6,
      timeLabelType: pb.TimeLabelType.remainingTime,
    );
  }
}
