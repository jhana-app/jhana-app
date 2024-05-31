import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';

@immutable
class PlayerState {
  final AudioProcessingState processingState;
  final bool playing;
  final bool finished;

  const PlayerState({
    required this.processingState,
    required this.playing,
    required this.finished,
  });

  static const PlayerState zero = PlayerState(
    processingState: AudioProcessingState.idle,
    playing: false,
    finished: false,
  );

  PlayerState copyWith({
    AudioProcessingState? processingState,
    bool? playing,
    bool? finished,
  }) =>
      PlayerState(
        processingState: processingState ?? this.processingState,
        playing: playing ?? this.playing,
        finished: finished ?? this.finished,
      );

  bool get idle => processingState == AudioProcessingState.idle;
  bool get loading => processingState == AudioProcessingState.loading;
  bool get buffering => processingState == AudioProcessingState.buffering;
  bool get ready => processingState == AudioProcessingState.ready;
  bool get completed => processingState == AudioProcessingState.completed;

  @override
  String toString() => 'processingState=$processingState,'
      'playing=$playing,'
      'finished=$finished';

  @override
  int get hashCode => Object.hash(processingState, playing, finished);

  @override
  bool operator ==(Object other) =>
      other.runtimeType == runtimeType &&
      other is PlayerState &&
      other.processingState == processingState &&
      other.playing == playing &&
      other.finished == finished;
}
