import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  final bool loading;
  final bool playing;
  final Function() onPlay;
  final Function() onPause;
  final double radius;
  final double iconSize;

  const PlayButton({
    super.key,
    required this.loading,
    required this.playing,
    required this.onPlay,
    required this.onPause,
    required this.radius,
    required this.iconSize,
  });

  @override
  Widget build(BuildContext context) => loading
      ? Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: radius * 2,
              height: radius * 2,
              child: const CircularProgressIndicator(
                color: Color(0xffCCC2DC),
              ),
            ),
            _button(),
          ],
        )
      : _button();

  Widget _button() => CircleAvatar(
        radius: radius,
        backgroundColor: const Color(0xff4A4458),
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(playing ? Icons.pause : Icons.play_arrow),
          iconSize: iconSize,
          color: const Color(0xffCCC2DC),
          onPressed: playing ? onPause : onPlay,
        ),
      );
}
