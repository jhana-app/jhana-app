import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:jhanas/features/timer_play/widgets/timer_play.dart';
import 'package:jhanas/models/meditation_timer.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TimerPlayScreen extends StatefulWidget {
  const TimerPlayScreen({super.key});

  @override
  State<TimerPlayScreen> createState() => _TimerPlayScreenState();
}

class _TimerPlayScreenState extends State<TimerPlayScreen> {
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

  @override
  Widget build(BuildContext context) {
    return TimerPlay(timer: _timer);
  }
}
