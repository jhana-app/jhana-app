import 'dart:async';
import 'dart:math';

/// Generate MP3 file with silence.
///
/// MPEG version: MPEG2.5/layer III
/// Bitrate: 8KBps
/// Frequency: 8KHz

// frame_size = sample_count / sampling_rate * bit_rate / 8
// sample_count  = 1152 (for MPEG2.5/layer III)
// sampling_rate = 8 kHz = 8000
// bit_rate      = 8 kbps = 8000
// frame_size    = 1152 / 8000 * 8000 / 8 = 144
const _frameSize = 144;

// frame is 72 bytes of MPEG2.5/layer III silence
// (hardcoded magic, please, do not ask)
const _frame = [
  0xFF,
  0xE3,
  0x18,
  0xC4,
  0x00,
  0x00,
  0x00,
  0x03,
  0x48,
  0x00,
  0x00,
  0x00,
  0x00,
  0x4C,
  0x41,
  0x4D,
  0x45,
  0x33,
  0x2E,
  0x31,
  0x30,
  0x30,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x4C,
  0x41,
  0x4D,
  0x45,
  0x33,
  0x2E,
  0x31,
  0x30,
  0x30,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0xFF,
  0xE3,
  0x18,
  0xC4,
  0x3B,
  0x00,
  0x00,
  0x03,
  0x48,
  0x00,
  0x00,
  0x00,
  0x00,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x4C,
  0x41,
  0x4D,
  0x45,
  0x33,
  0x2E,
  0x31,
  0x30,
  0x30,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
  0x55,
];

class SilenceMP3 {
  final Duration duration;

  SilenceMP3(this.duration);

  int get framesCount => (duration.inMilliseconds / _frameSize).ceil();

  int get fileSize => framesCount * _frame.length;

  Future<List<int>> response(int from, int to) async {
    final int responseSize = to - from;

    if (responseSize <= 0) {
      return [];
    }

    final range = <int>[];

    final int frameSize = _frame.length;
    final int framesCount = (responseSize / frameSize).ceil();
    final int fromRel = from % frameSize;
    final int toRel = to % frameSize;

    for (var i = 0; i < framesCount; i++) {
      if (i == 0 && fromRel != 0) {
        range.addAll(_frame.sublist(
            fromRel, framesCount == 1 && toRel != 0 ? toRel : null));
      } else if (i == framesCount - 1 && toRel != 0) {
        range.addAll(_frame.sublist(
            framesCount == 1 && fromRel != 0 ? fromRel : 0, toRel));
      } else {
        range.addAll(_frame);
      }
    }

    return range;
  }

  Stream<List<int>> content({int? start, int? end}) {
    final effectiveStart = start ?? 0;
    final effectiveEnd = min(end ?? fileSize, fileSize);
    return Stream.fromFuture(response(effectiveStart, effectiveEnd));
  }
}
