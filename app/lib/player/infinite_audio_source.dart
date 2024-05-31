import 'package:jhanas/player/silence_audio.dart';

class InfiniteAudioSource extends SilenceAudio {
  static const infinity = Duration(hours: 12);
  InfiniteAudioSource({dynamic tag}) : super(infinity, tag: tag);
}
