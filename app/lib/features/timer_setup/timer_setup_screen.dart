import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:jhanas/features/timer_setup/widgets/interval_bells_setup.dart';
import 'package:jhanas/features/timer_setup/widgets/timer_setup.dart';
import 'package:jhanas/models/meditation_timer.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum TimerSetupScreenRoute {
  timerSetup,
  intervalBellsSetup,
}

class TimerSetupScreen extends StatefulWidget {
  final TimerSetupScreenRoute route;

  const TimerSetupScreen({
    super.key,
    required this.route,
  });

  @override
  State<TimerSetupScreen> createState() => _TimerSetupScreenState();
}

class _TimerSetupScreenState extends State<TimerSetupScreen> {
  final sharedPreferences = GetIt.instance<SharedPreferences>();
  late MeditationTimer _timer;

  @override
  void initState() {
    final String? timerStr = sharedPreferences.getString(prefsKey);
    if (timerStr != null) {
      try {
        final Map<String, dynamic> timerMap =
            jsonDecode(timerStr) as Map<String, dynamic>;
        _timer = MeditationTimer.fromJson(timerMap);
      } catch (e) {
        if (kDebugMode) {
          print('Failed to parse timer from prefs: $e');
        }
        sharedPreferences.setString(
            prefsKey, jsonEncode(defaultTimer.toJson()));
        _timer = defaultTimer;
      }
    } else {
      sharedPreferences.setString(prefsKey, jsonEncode(defaultTimer.toJson()));
      _timer = defaultTimer;
    }

    super.initState();
  }

  Future<void> _saveTimer(MeditationTimer timer) async {
    sharedPreferences.setString(prefsKey, jsonEncode(timer.toJson()));
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.route) {
      case TimerSetupScreenRoute.timerSetup:
        return TimerSetup(
          timer: _timer,
          saveTimer: _saveTimer,
        );
      case TimerSetupScreenRoute.intervalBellsSetup:
        return IntervalBellsSetup(
          timer: _timer,
          saveTimer: _saveTimer,
        );
    }
  }
}
