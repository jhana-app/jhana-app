// import 'package:flutter/material.dart';

// const zeroProgressState = ProgressBarState.zero();

// @immutable
// class ProgressBarState {
//   final Duration current;
//   final Duration buffered;
//   final Duration total;
//   final double speed;

//   const ProgressBarState({
//     required this.current,
//     required this.buffered,
//     required this.total,
//     required this.speed,
//   });

//   const ProgressBarState.zero({
//     this.current = Duration.zero,
//     this.buffered = Duration.zero,
//     this.total = Duration.zero,
//     this.speed = 1,
//   });

//   ProgressBarState copyWith({
//     Duration? current,
//     Duration? buffered,
//     Duration? total,
//     double? speed,
//   }) =>
//       ProgressBarState(
//         current: current ?? this.current,
//         buffered: buffered ?? this.buffered,
//         total: total ?? this.total,
//         speed: speed ?? this.speed,
//       );

//   Duration get remaining => total - current;

//   Duration get currentWithSpeed => Duration(
//         milliseconds: (current.inMilliseconds / speed).round(),
//       );
//   Duration get bufferedWithSpeed => Duration(
//         milliseconds: (buffered.inMilliseconds / speed).round(),
//       );

//   Duration get totalWithSpeed => Duration(
//         milliseconds: (total.inMilliseconds / speed).round(),
//       );

//   Duration get remainingWithSpeed => totalWithSpeed - currentWithSpeed;
// }
