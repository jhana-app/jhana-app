import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:jhanas/atoms/button_contained.dart';
import 'package:jhanas/atoms/page_title.dart';
import 'package:jhanas/features/timer_setup/widgets/atoms/select_ambient_sound.dart';
import 'package:jhanas/features/timer_setup/widgets/atoms/select_background_image.dart';
import 'package:jhanas/features/timer_setup/widgets/atoms/select_bell.dart';
import 'package:jhanas/features/timer_setup/widgets/atoms/select_duration.dart';
import 'package:jhanas/features/timer_setup/widgets/atoms/select_warmup.dart';
import 'package:jhanas/features/timer_setup/widgets/atoms/setup_interval_bells.dart';
import 'package:jhanas/layout/layout.dart';
import 'package:jhanas/models/ambient_sound.dart';
import 'package:jhanas/models/bell.dart';
import 'package:jhanas/models/meditation_timer.dart';
import 'package:jhanas/models/timer_background_image.dart';
import 'package:jhanas/router.dart';

class TimerSetup extends StatefulWidget {
  final MeditationTimer timer;
  final Function(MeditationTimer) saveTimer;

  const TimerSetup({
    super.key,
    required this.timer,
    required this.saveTimer,
  });

  @override
  State<TimerSetup> createState() => _TimerSetupState();
}

class _TimerSetupState extends State<TimerSetup> {
  late MeditationTimer _timer;
  late DateTime _finishesAt;
  bool _isRunning = true;

  @override
  void initState() {
    _timer = widget.timer;
    _finishesAt = _timer.diffNow();
    Timer.periodic(
        const Duration(seconds: 1),
        (t) => {
              if (_isRunning)
                {
                  setState(() {
                    _finishesAt = _timer.diffNow();
                  })
                }
              else
                {t.cancel()}
            });
    super.initState();
  }

  @override
  void dispose() {
    _isRunning = false;
    super.dispose();
  }

  void _decreaseDuration() {
    setState(() {
      _timer = _timer.decreaseDuration();
      _finishesAt = _timer.diffNow();
      widget.saveTimer(_timer);
    });
  }

  void _setDuration(Duration duration) {
    setState(() {
      _timer = _timer.setDuration(duration.inSeconds);
      widget.saveTimer(_timer);
    });
  }

  void _increaseDuration() {
    setState(() {
      _timer = _timer.increaseDuration();
      _finishesAt = _timer.diffNow();
      widget.saveTimer(_timer);
    });
  }

  void _setBackgroundImage(BackgroundImage image) {
    setState(() {
      _timer = _timer.copyWith(
        backgroundImage: image.type,
        customBackgroundImage: image.customImage,
      );
      widget.saveTimer(_timer);
    });
  }

  void _setAmbientSound(AmbientSound ambientSound) {
    setState(() {
      _timer = _timer.copyWith(ambientSound: ambientSound);
      widget.saveTimer(_timer);
    });
  }

  void _setStatringBell(Bell bell, int count) {
    setState(() {
      _timer = _timer.copyWith(startingBell: bell, startingBellCount: count);
      widget.saveTimer(_timer);
    });
  }

  void _setEndingBell(Bell bell, int count) {
    setState(() {
      _timer = _timer.copyWith(endingBell: bell, endingBellCount: count);
      widget.saveTimer(_timer);
    });
  }

  void _setWarmUp(int warmUp) {
    setState(() {
      _timer = _timer.copyWith(warmUp: warmUp);
      widget.saveTimer(_timer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      backgroundColor: const Color(0xff141a1d),
      backgroundImage: timerBackgroundImageWidget(_timer),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(children: [
          const PageTitle('Timer'),
          const Spacer(),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundColor: const Color(0xff4A4458),
                  child: IconButton(
                    padding: const EdgeInsets.all(20),
                    icon: const Icon(Icons.remove_outlined),
                    iconSize: 24,
                    color: const Color(0xffCCC2DC),
                    onPressed: () => _decreaseDuration(),
                  ),
                ),
                const SizedBox(width: 32),
                DurationButton(
                  duration: Duration(seconds: _timer.duration),
                  onChanged: _setDuration,
                ),
                const SizedBox(width: 32),
                CircleAvatar(
                  radius: 32,
                  backgroundColor: const Color(0xff4A4458),
                  child: IconButton(
                    padding: const EdgeInsets.all(20),
                    icon: const Icon(Icons.add_outlined),
                    iconSize: 24,
                    color: const Color(0xffCCC2DC),
                    onPressed: () => _increaseDuration(),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 22),
          _timerFinishesAt(),
          const SizedBox(height: 22),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: 5,
                child: BellButton(
                  title: 'Starting bell',
                  bell: _timer.startingBell,
                  count: _timer.startingBellCount,
                  onChanged: _setStatringBell,
                ),
              ),
              const SizedBox(width: 10),
              Flexible(
                flex: 5,
                child: BackgroundImageButton(
                  title: 'Background image',
                  image: BackgroundImage(
                    type: _timer.backgroundImage,
                    customImage: _timer.customBackgroundImage,
                  ),
                  onChanged: _setBackgroundImage,
                ),
              ),
            ],
          ),
          const SizedBox(height: 22),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: 5,
                child: BellButton(
                  title: 'Ending bell',
                  bell: _timer.endingBell,
                  count: _timer.endingBellCount,
                  onChanged: _setEndingBell,
                ),
              ),
              const SizedBox(width: 10),
              Flexible(
                flex: 5,
                child: AmbientSoundButton(
                  title: 'Ambient sound',
                  ambientSound: _timer.ambientSound,
                  onChanged: _setAmbientSound,
                ),
              ),
            ],
          ),
          const SizedBox(height: 22),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: 5,
                child: SetupIntervalBells(intervalBells: _timer.intervalBells),
              ),
              const SizedBox(width: 10),
              Flexible(
                flex: 5,
                child: WarmUpButton(
                  warmUp: _timer.warmUp,
                  onChanged: _setWarmUp,
                ),
              ),
            ],
          ),
          const SizedBox(height: 22),
          ButtonContained(
            height: 64,
            dark: true,
            child: const Text(
              'START',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            onPressed: () => context.pushNamed(APP_PAGE.timerPlay.toName),
          ),
          const SizedBox(height: 22),
        ]),
      ),
    );
  }

  Widget _timerFinishesAt() {
    final finishesAtStr = DateFormat.jm().format(_finishesAt);

    return Text(
      'Timer finishes at $finishesAtStr',
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
