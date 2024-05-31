import 'package:flutter/material.dart';
import 'package:flutter_download_manager/flutter_download_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:jhanas/api/cache/common.dart';
import 'package:jhanas/api/graphql/lesson.graphql.dart';
import 'package:jhanas/api/graphql/schema.graphql.dart';
import 'package:jhanas/api/graphql/unit.graphql.dart';
import 'package:jhanas/atoms/button_contained.dart';
import 'package:jhanas/atoms/button_outline.dart';
import 'package:jhanas/atoms/pull_down_indicator.dart';
import 'package:jhanas/helpers/error.dart';
import 'package:jhanas/helpers/toast.dart';
import 'package:jhanas/player/audio_handler.dart';
import 'package:jhanas/services/download_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsMenuBottomSheet extends StatefulWidget {
  final Fragment$Unit unit;
  final List<Fragment$Lesson> lessons;

  const SettingsMenuBottomSheet({
    super.key,
    required this.unit,
    required this.lessons,
  });

  @override
  SettingsMenuBottomSheetState createState() => SettingsMenuBottomSheetState();
}

class SettingsMenuBottomSheetState extends State<SettingsMenuBottomSheet> {
  final _gql = GetIt.instance<GraphQLClient>();
  final _dl = GetIt.instance<DownloadService>();
  final _prefs = GetIt.instance<SharedPreferences>();

  bool loading = false;

  bool isStarted = false;
  bool isDownloaded = false;
  bool isNotDownloaded = false;

  @override
  void initState() {
    super.initState();

    final Map<String, DownloadTask> tasksMap = {};
    for (final task in _dl.getAllTasks()) {
      tasksMap[task.request.url] = task;
    }

    for (final lesson in widget.lessons) {
      if (lesson.finishedAt != null || lesson.progress > 0) {
        isStarted = true;
      }

      final audio = lesson.audios.isNotEmpty ? lesson.audios.first : null;
      if (audio != null) {
        final downloadMedia = DownloadMedia(
          type: ContentType.lesson,
          parentId: widget.unit.id,
          mediaId: lesson.id,
          url: audio.audiourl,
        );

        final task = tasksMap[audio.audiourl];
        if (task != null && task.status.value != DownloadStatus.canceled) {
          isDownloaded = true;
        } else if (downloadMedia.file.existsSync()) {
          isDownloaded = true;
        } else {
          isNotDownloaded = true;
        }
      }
    }
  }

  Future<void> _downloadAll() async {
    setState(() {
      loading = true;
      isNotDownloaded = false;
    });

    await _gql.mutate$DownloadUnit(
      Options$Mutation$DownloadUnit(
        variables: Variables$Mutation$DownloadUnit(
          id: widget.unit.id,
          input: Input$DownloadUnitInput(finished: false),
        ),
      ),
    );

    final List<String> urls = [];
    final List<DownloadTask> tasks = [];

    for (final lesson in widget.lessons) {
      final audio = lesson.audios.isNotEmpty ? lesson.audios.first : null;
      if (audio != null && !urls.contains(audio.audiourl)) {
        final media = DownloadMedia(
          type: ContentType.lesson,
          parentId: widget.unit.id,
          mediaId: lesson.id,
          url: audio.audiourl,
        );
        DownloadTask? task = _dl.getTask(media);
        if (task == null) {
          task = _dl.download(media);
        } else if (task.status.value.isInactive) {
          _dl.resume(media);
        }
        urls.add(audio.audiourl);
        tasks.add(task);
      }
    }

    setState(() {
      loading = false;
      isDownloaded = true;
    });

    _dl.whenBatchDownloadsComplete(tasks).then((_) async {
      var downloaded = true;
      for (final task in tasks) {
        if (task.status.value != DownloadStatus.completed) {
          downloaded = false;
          break;
        }
      }
      if (downloaded) {
        toastInfo('Lessons have been downloaded');
        await _gql.mutate$DownloadUnit(
          Options$Mutation$DownloadUnit(
            variables: Variables$Mutation$DownloadUnit(
              id: widget.unit.id,
              input: Input$DownloadUnitInput(finished: true),
            ),
          ),
        );
      }
    });
  }

  Future<void> _deleteAll(BuildContext context) async {
    final confirm = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Remove from downloads?'),
        content: const Text("You won't be able to play this offline."),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Remove'),
          ),
        ],
      ),
    );

    if (confirm) {
      setState(() {
        loading = true;
        isDownloaded = false;
      });

      for (final lesson in widget.lessons) {
        final audio = lesson.audios.isNotEmpty ? lesson.audios.first : null;
        if (audio != null) {
          await _dl.delete(DownloadMedia(
            type: ContentType.lesson,
            parentId: widget.unit.id,
            mediaId: lesson.id,
            url: audio.audiourl,
          ));
        }
      }

      setState(() {
        loading = false;
        isNotDownloaded = true;
      });
    }
  }

  Future<void> _resetProgress() async {
    setState(() => loading = true);

    final input = Input$ResetUnitProgressInput(
      confirm: true,
    );

    final result = await _gql.mutate$ResetUnitProgress(
      Options$Mutation$ResetUnitProgress(
        variables: Variables$Mutation$ResetUnitProgress(
          id: widget.unit.id,
          input: input,
        ),
      ),
    );

    if (result.hasException) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        errorMessage(
          'Error while reseting unit progress.',
          exception: result.exception.toString(),
        );
      });
    }

    for (final lesson in widget.lessons) {
      _prefs.remove(positionPrefsKey(lesson.id));
    }

    refetch(_gql, ['FetchUnit']);

    setState(() => loading = false);

    toastInfo('Progress has been reset');
  }

  Future<void> _handleResetProgress(BuildContext context) async {
    if (!isStarted) return;

    final reset = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Reset ${widget.unit.title} progress'),
        content: const Text(
          'Are you sure you want to reset your progress for this stage?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Reset'),
          ),
        ],
      ),
    );

    if (reset) {
      await _resetProgress();
      if (context.mounted) {
        Navigator.of(context).pop();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        color: const Color.fromRGBO(36, 33, 43, 1),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const PullDownIndicator(),
                const SizedBox(height: 13),
                ButtonOutline(
                  height: 40,
                  disabled: !isNotDownloaded || loading,
                  onPressed: () => _downloadAll(),
                  child: const Text('Download all lessons'),
                ),
                const SizedBox(height: 22),
                ButtonOutline(
                  height: 40,
                  disabled: !isDownloaded || loading,
                  onPressed: () => _deleteAll(context),
                  child: const Text('Delete all downloads'),
                ),
                const SizedBox(height: 22),
                ButtonOutline(
                  height: 40,
                  disabled: !isStarted || loading,
                  onPressed: () => _handleResetProgress(context),
                  child: const Text('Reset stage progress'),
                ),
                const SizedBox(height: 22),
                ButtonContained(
                  height: 40,
                  disabled: loading,
                  child: const Text('Cancel'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                const SizedBox(height: 22),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
