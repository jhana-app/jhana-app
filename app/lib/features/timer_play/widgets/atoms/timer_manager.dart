import 'package:flutter/material.dart';
import 'package:jhanas/models/ambient_sound.dart';
import 'package:jhanas/models/bell.dart';
import 'package:jhanas/models/meditation_timer.dart';
import 'package:just_audio/just_audio.dart';
import 'package:pausable_timer/pausable_timer.dart';
import 'package:vibration/vibration.dart';

enum TimerStage {
  warmUp,
  meditation,
  finished,
}

class TimerBellRepeat {
  final int interval;
  final int count; // -1 means infinite
  late int repeated;

  TimerBellRepeat(this.interval, this.count, {int? repeated}) {
    this.repeated = repeated ?? 0;
  }

  bool get isRepeatLeft => count == -1 || repeated < count;

  TimerBellRepeat minusOne() {
    return TimerBellRepeat(interval, count, repeated: repeated + 1);
  }
}

class TimerBell {
  final Duration duration;
  final Bell bell;
  final int bellCount;
  final TimerBellRepeat? repeat;
  late Duration initialDuration;

  late int _bellsLeft;
  AudioPlayer? _player;

  TimerBell(this.duration, this.bell, this.bellCount,
      {this.repeat, Duration? initialDuration}) {
    _bellsLeft = bellCount;

    if (bell == Bell.noSound) {
      _bellsLeft = 0;
      return;
    }

    this.initialDuration = initialDuration ?? duration;

    if (bell != Bell.vibration) {
      _player = AudioPlayer();
      _player!.setAsset(bells[bell]!.sound!);
      _player!.playerStateStream.listen((playerState) {
        if (playerState.processingState == ProcessingState.completed &&
            _bellsLeft <= 0) {
          dispose(); // dispose player when done, we won't need it anymore
        }
      });
    }
  }

  Future<void> dispose() async {
    if (_player != null) {
      await _player!.stop();
      await _player!.dispose();
      _player = null;
    }
  }

  void start() {
    _play();

    final repeatInterval = bells[bell]?.repeatInterval;
    if (repeatInterval != null) {
      Future.delayed(repeatInterval, _play);
    }
  }

  Future<void> _play() async {
    if (_bellsLeft <= 0) {
      return;
    }
    _bellsLeft--;

    if (bell == Bell.noSound) {
      return;
    } else if (bell == Bell.vibration) {
      if (await Vibration.hasVibrator() == true) {
        Vibration.vibrate();
      }
    } else {
      if (_player != null) {
        await _player!.seek(Duration.zero);
        await _player!.play();
      }
    }
  }
}

class TimerManager {
  final MeditationTimer meditation;
  late Duration? duration;
  late Duration? warmUp;

  late PausableTimer _timer;
  late AudioPlayer _ambientPlayer;
  List<TimerBell> _bells = [];
  List<TimerBell> _startedBells = [];

  late final ValueNotifier<TimerStage> stageNotifier;
  final pauseNotifier = ValueNotifier<bool>(false);
  final progressNotifier = ValueNotifier<Duration>(Duration.zero);
  late final ValueNotifier<DateTime?> finishesAtNotifier;
  late final ValueNotifier<int> bellsCountNotifier;

  TimerManager(this.meditation) {
    duration =
        meditation.duration > 0 ? Duration(seconds: meditation.duration) : null;
    warmUp =
        meditation.warmUp > 0 ? Duration(seconds: meditation.warmUp) : null;

    stageNotifier = ValueNotifier<TimerStage>(
      meditation.warmUp > 0 ? TimerStage.warmUp : TimerStage.meditation,
    );

    finishesAtNotifier = ValueNotifier<DateTime?>(
      duration != null ? DateTime.now().add(duration!) : null,
    );

    _ambientPlayer = AudioPlayer();
    _ambientPlayer.setLoopMode(LoopMode.one);
    _ambientPlayer.setAudioSource(AudioSource.asset(
      ambientSounds[meditation.ambientSound]!.sound ?? noAmbientSound,
    ));

    _timer = PausableTimer(const Duration(milliseconds: 100), () {
      _timer
        ..reset()
        ..start();

      final Duration prevValue = progressNotifier.value;
      progressNotifier.value += const Duration(milliseconds: 100);

      if (prevValue.inSeconds != progressNotifier.value.inSeconds) {
        if (stageNotifier.value == TimerStage.warmUp) {
          assert(warmUp != null);
          if (progressNotifier.value >= warmUp!) {
            stageNotifier.value = TimerStage.meditation;
            progressNotifier.value = Duration.zero;
          }
        } else if (stageNotifier.value == TimerStage.meditation) {
          if (duration != null && progressNotifier.value >= duration!) {
            stageNotifier.value = TimerStage.finished;
            progressNotifier.value = Duration.zero;
          }
        }

        if (stageNotifier.value == TimerStage.meditation) {
          _fireBells();
        }
      }
    });

    _initBells();

    bellsCountNotifier = ValueNotifier(_bellsLeft());

    play();
  }

  Future<void> dispose() async {
    _timer.cancel();
    await _ambientPlayer.dispose();
    for (final bell in _bells) {
      await bell.dispose();
    }
    for (final bell in _startedBells) {
      await bell.dispose();
    }
  }

  Future<void> _initBells() async {
    if (meditation.startingBell != Bell.noSound) {
      _bells.add(TimerBell(
        Duration.zero,
        meditation.startingBell,
        meditation.startingBellCount,
      ));
    }

    if (meditation.duration > 0 && meditation.endingBell != Bell.noSound) {
      _bells.add(TimerBell(
        Duration(seconds: meditation.duration),
        meditation.endingBell,
        meditation.endingBellCount,
      ));
    }

    for (final bell in meditation.intervalBells) {
      final TimerBellRepeat? repeat = bell.repeat != null
          ? TimerBellRepeat(
              bell.repeat!.interval,
              bell.repeat!.count,
            )
          : null;

      if (bell.position == IntervalBellPosition.fromStart) {
        _bells.add(TimerBell(
          Duration(seconds: bell.interval),
          bell.bell,
          bell.bellCount,
          repeat: repeat,
        ));
      } else if (bell.position == IntervalBellPosition.fromEnd &&
          meditation.duration > 0) {
        _bells.add(TimerBell(
          Duration(seconds: meditation.duration - bell.interval),
          bell.bell,
          bell.bellCount,
          repeat: repeat,
        ));
      }
    }
    _bells.sort((a, b) => a.duration.compareTo(b.duration));
  }

  void _fireBells() {
    final Duration timeToCheck =
        progressNotifier.value + const Duration(seconds: 1);

    for (int i = 0; i < _bells.length; i++) {
      if (_bells[i].duration <= timeToCheck) {
        _bells[i].start();
        final started = _bells.removeAt(i);

        final repeat = started.repeat?.minusOne();

        if (repeat != null && repeat.isRepeatLeft) {
          // if bell is repeated, add it to bells with new duration
          _bells.add(TimerBell(
            started.initialDuration +
                Duration(seconds: repeat.interval * repeat.repeated),
            started.bell,
            started.bellCount,
            repeat: repeat,
            initialDuration: started.initialDuration,
          ));
          _bells.sort((a, b) => a.duration.compareTo(b.duration));
        } else {
          // if bell is not repeated, or repeat count is 0,
          // add it to started bells
          _startedBells.add(started);
        }

        bellsCountNotifier.value = _bellsLeft();

        break;
      }
    }
  }

  int _bellsLeft() {
    int count = 0;
    for (final bell in _bells) {
      if (bell.repeat != null) {
        if (bell.repeat!.count == -1) {
          return -1;
        }
        count += bell.repeat!.count - bell.repeat!.repeated;
      } else {
        count += 1;
      }
    }
    return count;
  }

  void play() {
    _timer.start();
    _ambientPlayer.play();
    pauseNotifier.value = false;

    DateTime? finishesAt;
    if (duration != null) {
      final DateTime now = DateTime.now();
      finishesAt = now.add(duration!).subtract(progressNotifier.value);
      if (finishesAt.isAfter(now)) {
        finishesAt = null;
      }
    }
    finishesAtNotifier.value = finishesAt;
  }

  void pause() {
    pauseNotifier.value = true;
    finishesAtNotifier.value = null;
    _timer.pause();
    _ambientPlayer.pause();
  }

  void finish() {
    if (stageNotifier.value == TimerStage.finished) {
      assert(duration != null);
      duration = duration! + progressNotifier.value;
    } else {
      duration = progressNotifier.value;
      stageNotifier.value = TimerStage.finished;
    }
    pauseNotifier.value = true;
    finishesAtNotifier.value = null;
    _timer.pause();
    _ambientPlayer.pause();
  }
}
