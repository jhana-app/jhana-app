import 'package:flutter/material.dart';

@immutable
class ProgressBarState {
  final Duration current;
  final Duration buffered;
  final Duration total;
  final double speed;

  const ProgressBarState({
    required this.current,
    required this.buffered,
    required this.total,
    required this.speed,
  });

  @override
  String toString() => 'ProgressBarState('
      'current=${current.inSeconds}s,'
      'buffered=${buffered.inSeconds}s,'
      'total=${total.inSeconds}s,'
      'speed=${speed.toStringAsFixed(1)}'
      ')';

  static const ProgressBarState zero = ProgressBarState(
    current: Duration.zero,
    buffered: Duration.zero,
    total: Duration.zero,
    speed: 1,
  );

  ProgressBarState copyWith({
    Duration? current,
    Duration? buffered,
    Duration? total,
    double? speed,
  }) =>
      ProgressBarState(
        current: current ?? this.current,
        buffered: buffered ?? this.buffered,
        total: total ?? this.total,
        speed: speed ?? this.speed,
      );

  Duration get remaining => total - current;

  Duration get currentWithSpeed => Duration(
        milliseconds: (current.inMilliseconds / speed).round(),
      );
  Duration get bufferedWithSpeed => Duration(
        milliseconds: (buffered.inMilliseconds / speed).round(),
      );

  Duration get totalWithSpeed => Duration(
        milliseconds: (total.inMilliseconds / speed).round(),
      );

  Duration get remainingWithSpeed => totalWithSpeed - currentWithSpeed;
}
