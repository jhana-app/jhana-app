import 'package:audio_service/audio_service.dart' as audio_service;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:intl/intl.dart';
import 'package:jhanas/api/cache/common.dart';
import 'package:jhanas/api/graphql/journal_record.graphql.dart';
import 'package:jhanas/api/graphql/schema.graphql.dart';
import 'package:jhanas/atoms/button_contained.dart';
import 'package:jhanas/atoms/button_outline.dart';
import 'package:jhanas/atoms/edit_note.dart';
import 'package:jhanas/atoms/page_title.dart';
import 'package:jhanas/features/consecutive_days/consecutive_days.dart';
import 'package:jhanas/features/timer_play/widgets/atoms/animated_timer.dart';
import 'package:jhanas/features/timer_play/widgets/atoms/timer_manager.dart';
import 'package:jhanas/features/week_stats/week_stats.dart';
import 'package:jhanas/helpers/battery_optimizations.dart';
import 'package:jhanas/helpers/duration.dart';
import 'package:jhanas/helpers/error.dart';
import 'package:jhanas/layout/layout.dart';
import 'package:jhanas/models/meditation_timer.dart';
import 'package:jhanas/models/timer_background_image.dart';
import 'package:jhanas/player/audio_handler.dart';
import 'package:jhanas/router.dart';
import 'package:jhanas/services/app_service.dart';
import 'package:mindful_minutes/mindful_minutes.dart';
import 'package:shared_preferences/shared_preferences.dart';

const minDurationToFinish = Duration(minutes: 1);

class TimerPlay extends StatefulWidget {
  final MeditationTimer timer;

  const TimerPlay({
    super.key,
    required this.timer,
  });

  @override
  State<TimerPlay> createState() => _TimerSetupState();
}

class _TimerSetupState extends State<TimerPlay> {
  final _prefs = GetIt.instance<SharedPreferences>();
  final _app = GetIt.instance<AppService>();
  final _gql = GetIt.instance<GraphQLClient>();
  final _audioHandler = GetIt.instance<AudioHandler>();
  final health = const MindfulMinutesPlugin();
  late final TimerManager timerManager;

  String note = '';
  double bottomPadding = 0;

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

    timerManager = TimerManager(widget.timer);
    if (_audioHandler.playerType != PlayerType.none) {
      _audioHandler.dispose();
    }

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      setState(() => bottomPadding = MediaQuery.of(context).padding.bottom);
      await _initBatteryOptimizationWarning();
    });
  }

  @override
  void dispose() {
    timerManager.dispose();
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

  Future<bool> _confirmExit(BuildContext context) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text('You are going to lose your progress.'),
        actions: [
          TextButton(
            onPressed: () => context.pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => context.pop(true),
            child: const Text('Yes'),
          ),
        ],
      ),
    );
    return result == true;
  }

  Future<void> _back(BuildContext context, {bool? saved}) async {
    if (saved != true && !await _confirmExit(context)) {
      return;
    }

    if (context.mounted) {
      if (context.canPop()) {
        context.pop();
      } else {
        context.goNamed(APP_PAGE.timer.toName);
      }
    }
  }

  void syncWithHealth(DateTime dateStart, DateTime dateEnd) {
    if (_app.healthSyncEnabled) {
      health.writeMindfulMinutes(dateStart, dateEnd);
    }
  }

  Future<void> _save(BuildContext context) async {
    final now = DateTime.now();

    syncWithHealth(now.subtract(timerManager.duration!), now);

    final input = Input$CreateJournalRecordInput(
      duration: timerManager.duration!.inSeconds,
      note: note,
    );

    final result = await _gql.mutate$CreateJournalRecord(
      Options$Mutation$CreateJournalRecord(
        variables: Variables$Mutation$CreateJournalRecord(
          input: input,
        ),
        update: (cache, result) {
          if (kDebugMode) {
            print(cache);
          }
        },
      ),
    );

    if (result.hasException) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        errorMessage(
          'Error while saving meditation progress.\n'
          'Check the internet connection and try again.',
          exception: result.exception.toString(),
        );
      });
      return;
    }

    // journal records list changed, refetch all queries that might depend on it
    refetch(_gql, [
      'FetchJournalRecords',
      'FetchWeekStats',
      'FetchMeditationsStats',
    ]);

    if (context.mounted) {
      _back(context, saved: true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      backgroundColor: const Color(0xff0E0E0F),
      backgroundImage: timerBackgroundImageWidget(widget.timer),
      child: ValueListenableBuilder<TimerStage>(
        valueListenable: timerManager.stageNotifier,
        builder: (_, stage, __) {
          return ValueListenableBuilder<bool>(
              valueListenable: timerManager.pauseNotifier,
              builder: (_, isPause, __) {
                return stage == TimerStage.finished
                    ? _completed(context, isPause)
                    : _timer(context, stage, isPause);
              });
        },
      ),
    );
  }

  Widget _timer(BuildContext context, TimerStage stage, bool isPause) {
    return Column(
      children: [
        const PageTitle('Meditation'),
        const Spacer(),
        _bellsLeft(stage),
        const SizedBox(height: 6),
        AnimatedTimer(timerManager: timerManager),
        const SizedBox(
          // calculate free space height based on timer setup layout:
          height: 40 * 3 + 22 * 5 + 17 + 29,
        ),
        CircleAvatar(
          radius: 32,
          backgroundColor: const Color(0xff4A4458),
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(isPause ? Icons.play_arrow : Icons.pause),
            iconSize: 48,
            color: const Color(0xffCCC2DC),
            onPressed: isPause ? timerManager.play : timerManager.pause,
          ),
        ),
        const SizedBox(height: 22),
        SizedBox(
            height: 113 - bottomPadding,
            child: isPause
                ? _finishControls(context)
                : Container(
                    alignment: Alignment.center,
                    child: _timerFinishesAt(),
                  )),
      ],
    );
  }

  Widget _completed(BuildContext context, bool isPause) {
    final now = DateTime.now().toUtc();
    final draftRecord = Fragment$JournalRecord(
      id: '',
      datetime: now.toIso8601String(),
      duration: timerManager.duration!.inSeconds,
      note: note,
      createdat: now.toIso8601String(),
    );

    return WillPopScope(
      onWillPop: () => _confirmExit(context),
      child: Column(
        children: [
          const PageTitle('Complete'),
          const SizedBox(height: 22),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ConsecutiveDays(lastMeditationDate: now),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(103, 80, 164, 0.16),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: WeekStats(draftRecord: draftRecord),
                ),
              ),
            ],
          ),
          const Spacer(),
          const Text(
            'You completed',
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 6),
          AutoSizeText(
            formatDurationHuman(timerManager.duration!),
            style: const TextStyle(fontSize: 57),
            maxLines: 1,
          ),
          const SizedBox(height: 6),
          Center(
            child: SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width / 2.5,
              child: isPause
                  ? null
                  : ValueListenableBuilder<Duration>(
                      valueListenable: timerManager.progressNotifier,
                      builder: (_, progress, __) {
                        return ButtonContained(
                          height: 40,
                          dark: true,
                          onPressed: timerManager.finish,
                          child: AutoSizeText(
                            'Add ${formatDuration(progress)}',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            maxLines: 1,
                          ),
                        );
                      },
                    ),
            ),
          ),
          const SizedBox(
            // calculate free space height based on timer setup layout:
            height: 40 * 2 + 22 * 4,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 5,
                  child: EditNoteButton(
                    note: note,
                    onChanged: (value) {
                      setState(() => note = value);
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Flexible(
                  flex: 5,
                  child: ButtonOutline(
                    height: 40,
                    disabled: true,
                    child: const AutoSizeText(
                      'Record your experience',
                      minFontSize: 10,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                      maxLines: 1,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ButtonContained(
              height: 64,
              dark: true,
              child: const Text(
                'Save',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              onPressed: () => _save(context),
            ),
          ),
          const SizedBox(height: 22),
          SizedBox(
            height: 113 - bottomPadding,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextButton(
                child: const Text('Discard'),
                onPressed: () => _back(context),
              ),
            ),
          ),
          // SizedBox(height: bottomPadding),
        ],
      ),
    );
  }

  Widget _bellsLeft(TimerStage stage) {
    if (stage == TimerStage.warmUp) {
      return const Text(
        'Warm Up',
        style: TextStyle(fontSize: 14),
      );
    }

    return ValueListenableBuilder<int>(
      valueListenable: timerManager.bellsCountNotifier,
      builder: (_, bellsLeft, __) {
        if (bellsLeft == 0) {
          return const Text(
            'No bells remaining',
            style: TextStyle(fontSize: 14),
          );
        }

        if (bellsLeft == -1) {
          return const Text(
            '∞ bells remaining',
            style: TextStyle(fontSize: 14),
          );
        } else if (bellsLeft == 1) {
          return const Text(
            '1 bell remaining',
            style: TextStyle(fontSize: 14),
          );
        } else {
          return Text(
            '$bellsLeft bells remaining',
            style: const TextStyle(fontSize: 14),
          );
        }
      },
    );
  }

  Widget _timerFinishesAt() {
    return ValueListenableBuilder<DateTime?>(
      valueListenable: timerManager.finishesAtNotifier,
      builder: (_, finishesAt, __) {
        if (finishesAt == null) {
          return const SizedBox(height: 17);
        }

        return Text(
          'Timer finishes at ${DateFormat.jm().format(finishesAt)}',
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        );
      },
    );
  }

  Widget _finishControls(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          flex: 5,
          child: ButtonOutline(
            height: 40,
            onPressed: () => _back(context, saved: true),
            child: const Text(
              'Discard session',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Flexible(
          flex: 5,
          child: ValueListenableBuilder<TimerStage>(
            valueListenable: timerManager.stageNotifier,
            builder: (_, stage, __) {
              return ValueListenableBuilder<Duration>(
                valueListenable: timerManager.progressNotifier,
                builder: (_, progress, __) {
                  return ButtonContained(
                    height: 40,
                    disabled: stage == TimerStage.warmUp ||
                        progress < minDurationToFinish,
                    onPressed: timerManager.finish,
                    child: const Text(
                      'Finish',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
