import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:jhanas/api/cache/common.dart';
import 'package:jhanas/api/graphql/journal_record.graphql.dart';
import 'package:jhanas/api/graphql/lesson.graphql.dart';
import 'package:jhanas/api/graphql/schema.graphql.dart';
import 'package:jhanas/api/graphql/unit.graphql.dart';
import 'package:jhanas/atoms/button_contained.dart';
import 'package:jhanas/atoms/button_outline.dart';
import 'package:jhanas/atoms/edit_note.dart';
import 'package:jhanas/atoms/page_title.dart';
import 'package:jhanas/features/consecutive_days/consecutive_days.dart';
import 'package:jhanas/features/lesson_player/widgets/atoms/lesson_player_manager.dart';
import 'package:jhanas/features/week_stats/week_stats.dart';
import 'package:jhanas/helpers/duration.dart';
import 'package:jhanas/helpers/error.dart';
import 'package:jhanas/layout/layout.dart';
import 'package:jhanas/router.dart';
import 'package:jhanas/services/app_service.dart';
import 'package:mindful_minutes/mindful_minutes.dart';

class PlayerFinished extends StatefulWidget {
  final Fragment$Unit unit;
  final Fragment$LessonFull lesson;
  final LessonPlayerManager playerManager;

  const PlayerFinished({
    super.key,
    required this.unit,
    required this.lesson,
    required this.playerManager,
  });

  @override
  State<PlayerFinished> createState() => _PlayerFinishedState();
}

class _PlayerFinishedState extends State<PlayerFinished> {
  final appService = GetIt.instance<AppService>();
  final gqlClient = GetIt.instance<GraphQLClient>();
  final health = const MindfulMinutesPlugin();

  late String note;
  late Duration timerDuration;
  late bool timerPaused;

  double bottomPadding = 0;

  @override
  void initState() {
    note = '${widget.unit.title} - ${widget.lesson.title}';

    timerDuration = widget.playerManager.timerDurationNotifier.value;
    widget.playerManager.timerDurationNotifier
        .addListener(_onTimerDurationChanged);

    timerPaused = widget.playerManager.timerPausedNotifier.value;
    widget.playerManager.timerPausedNotifier.addListener(_onTimerPausedChanged);

    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        bottomPadding = MediaQuery.of(context).padding.bottom;
      });
    });
  }

  @override
  void dispose() {
    widget.playerManager.timerDurationNotifier
        .removeListener(_onTimerDurationChanged);
    widget.playerManager.timerPausedNotifier
        .removeListener(_onTimerPausedChanged);
    super.dispose();
  }

  void _onTimerDurationChanged() => setState(() {
        timerDuration = widget.playerManager.timerDurationNotifier.value;
      });

  void _onTimerPausedChanged() => setState(() {
        timerPaused = widget.playerManager.timerPausedNotifier.value;
      });

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
    if (saved != null) {
      if (context.canPop()) {
        context.pop();
        context.pop<bool?>(true);
      } else {
        context.goNamed(
          APP_PAGE.unitRoadmap.toName,
          pathParameters: {
            'courseId': widget.unit.course.id,
            'unitId': widget.unit.id
          },
        );
      }
    } else {
      if (!await _confirmExit(context)) {
        return;
      }

      if (context.mounted) {
        if (context.canPop()) {
          context.pop();
        } else {
          context.goNamed(APP_PAGE.lessonDetails.toName, pathParameters: {
            'courseId': widget.unit.course.id,
            'unitId': widget.unit.id,
            'lessonId': widget.lesson.id,
          });
        }
      }
    }
  }

  void syncWithHealth(DateTime dateStart, DateTime dateEnd) {
    if (appService.healthSyncEnabled) {
      health.writeMindfulMinutes(dateStart, dateEnd);
    }
  }

  Future<void> _save(BuildContext context) async {
    final now = DateTime.now();

    syncWithHealth(now.subtract(timerDuration), now);

    final input = Input$FinishLessonInput(
      datetime: now.toUtc().toIso8601String(),
      duration: timerDuration.inSeconds,
      note: note,
    );

    final result = await gqlClient.mutate$FinishLesson(
      Options$Mutation$FinishLesson(
        variables: Variables$Mutation$FinishLesson(
          id: widget.lesson.id,
          input: input,
        ),
      ),
    );

    if (result.hasException) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        errorMessage(
          'Error while saving lesson progress.\n'
          'Check the internet connection and try again.',
          exception: result.exception.toString(),
        );
      });
      return;
    }

    // journal records list changed, refetch all queries that might depend on it
    refetch(gqlClient, [
      'FetchUnit',
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
    final now = DateTime.now().toUtc();
    final draftRecord = Fragment$JournalRecord(
      id: '',
      datetime: now.toIso8601String(),
      duration: timerDuration.inSeconds,
      note: note,
      unitColor: widget.unit.color,
      createdat: now.toIso8601String(),
    );

    return WillPopScope(
      onWillPop: () => _confirmExit(context),
      child: PageLayout(
        backgroundColor: const Color(0xff0E0E0F),
        backgroundImage: cloudsBackgroundImage,
        child: Column(
          children: [
            const PageTitle('Completed'),
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
              formatDurationHuman(timerDuration),
              style: const TextStyle(fontSize: 57),
              maxLines: 1,
            ),
            const SizedBox(height: 6),
            Center(
              child: SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width / 2.5,
                child: timerPaused
                    ? null
                    : ValueListenableBuilder<Duration>(
                        valueListenable: widget.playerManager.timerNotifier,
                        builder: (_, timer, __) {
                          final additionalTime = timer - timerDuration;
                          return additionalTime.inSeconds > 0
                              ? ButtonContained(
                                  height: 40,
                                  dark: true,
                                  onPressed: widget.playerManager.finishTimer,
                                  child: AutoSizeText(
                                    'Add ${formatDuration(additionalTime)}',
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    maxLines: 1,
                                  ),
                                )
                              : Container();
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
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
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
      ),
    );
  }
}
