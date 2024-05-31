import 'package:audio_service/audio_service.dart' as audio_service;
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:jhanas/api/graphql/lesson.graphql.dart';
import 'package:jhanas/api/graphql/lesson_audio.graphql.dart';
import 'package:jhanas/api/graphql/unit.graphql.dart';
import 'package:jhanas/atoms/markdown.dart';
import 'package:jhanas/features/lesson_player/widgets/atoms/lesson_player_manager.dart';
import 'package:jhanas/features/lesson_player/widgets/atoms/player_controls.dart';
import 'package:jhanas/features/lesson_player/widgets/atoms/player_finished.dart';
import 'package:jhanas/features/lesson_player/widgets/atoms/player_header.dart';
import 'package:jhanas/helpers/battery_optimizations.dart';
import 'package:jhanas/layout/layout.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LessonPlayer extends StatefulWidget {
  final Fragment$Unit unit;
  final Fragment$LessonFull lesson;
  final Fragment$LessonAudio audio;

  const LessonPlayer({
    super.key,
    required this.unit,
    required this.lesson,
    required this.audio,
  });

  @override
  State<LessonPlayer> createState() => _LessonPlayerState();
}

class _LessonPlayerState extends State<LessonPlayer> {
  final _prefs = GetIt.instance<SharedPreferences>();

  late final _playerManager = LessonPlayerManager(
    unit: widget.unit,
    lesson: widget.lesson,
    audio: widget.audio,
  );

  /// Whether the 'foreground service start is not allowed' error happens before
  bool get foregroundServiceStartError =>
      _prefs.getBool(
        foregroundServiceStartNotAllowedPrefsKey,
      ) ??
      false;

  set foregroundServiceStartError(bool value) {
    if (value) {
      _prefs.setBool(foregroundServiceStartNotAllowedPrefsKey, true);
    } else {
      _prefs.remove(foregroundServiceStartNotAllowedPrefsKey);
    }
  }

  /// Whether the user has chosen to 'skip the battery optimization' dialog
  bool get skipBatteryOptimizationDialog =>
      _prefs.getBool(
        skipBatteryOptimizationDialogPrefsKey,
      ) ??
      false;

  /// Whether we show the 'skip battery optimization' notify
  bool get showSkipBatteryOptimizationNotify =>
      _prefs.getBool(
        skipBatteryOptimizationNotifyPrefsKey,
      ) ??
      false;
  set showSkipBatteryOptimizationNotify(bool value) {
    if (value) {
      _prefs.setBool(skipBatteryOptimizationNotifyPrefsKey, true);
    } else {
      _prefs.remove(skipBatteryOptimizationNotifyPrefsKey);
    }
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _initBatteryOptimizationWarning();
      await _playerManager.init(true);
    });
  }

  @override
  void dispose() {
    _playerManager.dispose();
    super.dispose();
  }

  Future<void> _initBatteryOptimizationWarning() async {
    if (!await isAndroid12()) {
      return;
    }

    audio_service.AudioService.foregroundServiceStartNotAllowedStream
        .listen((event) {
      foregroundServiceStartError = event;
    });

    if (skipBatteryOptimizationDialog) {
      return;
    }

    if (!showSkipBatteryOptimizationNotify) {
      if (context.mounted) {
        batteryOptimizationNotify(context);
        showSkipBatteryOptimizationNotify = true;
      }
    } else if (foregroundServiceStartError) {
      final isBatteryOptimizationsOn = await getBatteryOptimizationsState();
      if (isBatteryOptimizationsOn && context.mounted) {
        batteryOptimizationNotify(context);
        audio_service.AudioService.foregroundServiceStartNotAllowed.add(false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _playerManager.stageNotifier,
      builder: (_, stage, __) => stage == Stage.meditation
          ? PlayerFinished(
              unit: widget.unit,
              lesson: widget.lesson,
              playerManager: _playerManager,
            )
          : PageLayout(
              backgroundImage: cloudsBackgroundImage,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PlayerHeader(lesson: widget.lesson),
                  const SizedBox(height: 22),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Markdown(data: widget.lesson.description),
                    ),
                  ),
                  const SizedBox(height: 22),
                  PlayerControls(
                    lesson: widget.lesson,
                    audio: widget.audio,
                    playerManager: _playerManager,
                  ),
                ],
              ),
            ),
    );
  }
}
