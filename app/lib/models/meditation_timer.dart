import 'package:flutter/material.dart';
import 'package:jhanas/models/ambient_sound.dart';
import 'package:jhanas/models/bell.dart';
import 'package:jhanas/models/timer_background_image.dart';
import 'package:json_annotation/json_annotation.dart';

part 'meditation_timer.g.dart';

const prefsKey = 'meditationTimer';

enum IntervalBellPosition {
  fromStart,
  fromEnd,
}

@immutable
@JsonSerializable()
class IntervalBellRepeat {
  final int interval;
  final int count; // -1 means infinite

  const IntervalBellRepeat({
    required this.interval,
    required this.count,
  });

  IntervalBellRepeat copyWith({
    int? interval,
    int? count,
  }) {
    return IntervalBellRepeat(
      interval: interval ?? this.interval,
      count: count ?? this.count,
    );
  }

  /// Connect the generated [_$IntervalBellRepeatFromJson] function
  /// to the `fromJson` factory.
  factory IntervalBellRepeat.fromJson(Map<String, dynamic> json) =>
      _$IntervalBellRepeatFromJson(json);

  /// Connect the generated [_$IntervalBellRepeatToJson] function
  /// to the `toJson` method.
  Map<String, dynamic> toJson() => _$IntervalBellRepeatToJson(this);
}

@immutable
@JsonSerializable()
class IntervalBell {
  final Bell bell;
  final int bellCount;
  final int interval;
  final IntervalBellPosition position;
  final IntervalBellRepeat? repeat;

  const IntervalBell({
    required this.bell,
    required this.bellCount,
    required this.interval,
    required this.position,
    this.repeat,
  });

  IntervalBell copyWith({
    Bell? bell,
    int? bellCount,
    int? interval,
    IntervalBellPosition? position,
    IntervalBellRepeat? repeat,
    bool noRepeat = false,
  }) {
    return IntervalBell(
      bell: bell ?? this.bell,
      bellCount: bellCount ?? this.bellCount,
      interval: interval ?? this.interval,
      position: position ?? this.position,
      repeat: repeat ?? (noRepeat ? null : this.repeat),
    );
  }

  /// Connect the generated [_$IntervalBellFromJson] function
  /// to the `fromJson` factory.
  factory IntervalBell.fromJson(Map<String, dynamic> json) =>
      _$IntervalBellFromJson(json);

  /// Connect the generated [_$IntervalBellToJson] function
  /// to the `toJson` method.
  Map<String, dynamic> toJson() => _$IntervalBellToJson(this);
}

@immutable
@JsonSerializable()
class MeditationTimer {
  final int duration; // -1 means infinite
  final AmbientSound ambientSound;
  final BackgroundImageType backgroundImage;
  final String? customBackgroundImage;

  final Bell startingBell;
  final int startingBellCount;

  final Bell endingBell;
  final int endingBellCount;

  final int warmUp;
  final List<IntervalBell> intervalBells;

  // duration helpers
  static final hourOptions = List<int>.generate(9, (i) => i, growable: false);
  static final minuteOptions =
      List<int>.generate(60, (i) => i, growable: false);
  static final maxDuration = hourOptions.last * 3600 + minuteOptions.last * 60;

  // warm up helpers
  static final warmUpOptions =
      List<int>.generate(13, (i) => i * 5, growable: false);

  const MeditationTimer({
    required this.duration,
    required this.ambientSound,
    required this.backgroundImage,
    this.customBackgroundImage,
    required this.startingBell,
    required this.startingBellCount,
    required this.endingBell,
    required this.endingBellCount,
    required this.warmUp,
    required this.intervalBells,
  });

  MeditationTimer copyWith({
    int? duration,
    AmbientSound? ambientSound,
    BackgroundImageType? backgroundImage,
    String? customBackgroundImage,
    Bell? startingBell,
    int? startingBellCount,
    Bell? endingBell,
    int? endingBellCount,
    int? warmUp,
    List<IntervalBell>? intervalBells,
  }) {
    return MeditationTimer(
      duration: duration ?? this.duration,
      ambientSound: ambientSound ?? this.ambientSound,
      backgroundImage: backgroundImage ?? this.backgroundImage,
      customBackgroundImage: customBackgroundImage == null
          ? this.customBackgroundImage
          : customBackgroundImage == ''
              ? null
              : customBackgroundImage,
      startingBell: startingBell ?? this.startingBell,
      startingBellCount: startingBellCount ?? this.startingBellCount,
      endingBell: endingBell ?? this.endingBell,
      endingBellCount: endingBellCount ?? this.endingBellCount,
      warmUp: warmUp ?? this.warmUp,
      intervalBells: intervalBells ?? this.intervalBells,
    );
  }

  /// Connect the generated [_$MeditationTimerFromJson] function
  /// to the `fromJson` factory.
  factory MeditationTimer.fromJson(Map<String, dynamic> json) =>
      _$MeditationTimerFromJson(json);

  /// Connect the generated [_$MeditationTimerToJson] function
  /// to the `toJson` method.
  Map<String, dynamic> toJson() => _$MeditationTimerToJson(this);

  MeditationTimer setDuration(int value) {
    int durationValue = value ~/ 60 * 60;

    if (durationValue < 60) {
      durationValue = 60;
    } else if (durationValue > maxDuration) {
      durationValue = maxDuration;
    }
    return copyWith(duration: durationValue);
  }

  MeditationTimer increaseDuration() {
    int minutes = duration ~/ 60;

    if (minutes < 15) {
      minutes += 1;
    } else {
      minutes = ((minutes + 5) / 5).floor() * 5;
    }

    if (minutes >= maxDuration ~/ 60) {
      minutes = maxDuration ~/ 60;
    }

    return copyWith(duration: minutes * 60);
  }

  MeditationTimer decreaseDuration() {
    int minutes = duration ~/ 60;

    if (minutes > 15) {
      minutes = ((minutes - 5) / 5).ceil() * 5;
    } else {
      minutes -= 1;
    }

    if (minutes < 1) {
      minutes = 1;
    }

    return copyWith(duration: minutes * 60);
  }

  MeditationTimer addIntervalBell(IntervalBell value) {
    final newIntervalBells = List<IntervalBell>.from(intervalBells);
    newIntervalBells.add(value);
    return copyWith(intervalBells: newIntervalBells);
  }

  MeditationTimer updateIntervalBell(int index, IntervalBell value) {
    final newIntervalBells = List<IntervalBell>.from(intervalBells);
    newIntervalBells[index] = value;
    return copyWith(intervalBells: newIntervalBells);
  }

  MeditationTimer removeIntervalBell(int index) {
    final newIntervalBells = List<IntervalBell>.from(intervalBells);
    newIntervalBells.removeAt(index);
    return copyWith(intervalBells: newIntervalBells);
  }

  DateTime diffNow() {
    return DateTime.now().add(Duration(seconds: duration + warmUp));
  }
}

const defaultTimer = MeditationTimer(
  duration: 25 * 60,
  ambientSound: AmbientSound.noSound,
  backgroundImage: BackgroundImageType.clouds,
  startingBell: Bell.bellBasu,
  startingBellCount: 1,
  endingBell: Bell.bellBasu,
  endingBellCount: 1,
  warmUp: 0,
  intervalBells: [],
);
