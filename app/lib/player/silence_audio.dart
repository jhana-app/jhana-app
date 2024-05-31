import 'dart:async';
import 'dart:math';
import 'package:jhanas/player/silence_mp3.dart';
import 'package:just_audio/just_audio.dart';

class SilenceAudio extends StreamAudioSource {
  final Duration _duration;

  SilenceAudio(this._duration, {dynamic tag}) : super(tag: tag);

  late final _mp3 = SilenceMP3(_duration);

  @override
  Future<StreamAudioResponse> request([int? start, int? end]) {
    final effectiveStart = start ?? 0;
    final effectiveEnd = min(end ?? _mp3.fileSize, _mp3.fileSize);

    return Future.value(
      StreamAudioResponse(
        sourceLength: start != null ? _mp3.fileSize : null,
        contentLength: effectiveEnd - effectiveStart,
        offset: start,
        stream: _mp3.content(start: effectiveStart, end: effectiveEnd),
        contentType: 'audio/mp3',
      ),
    );
  }
}
