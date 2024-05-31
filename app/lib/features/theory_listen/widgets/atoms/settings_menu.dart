import 'package:flutter/material.dart';
import 'package:flutter_download_manager/flutter_download_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:jhanas/api/cache/common.dart';
import 'package:jhanas/api/graphql/content.graphql.dart';
import 'package:jhanas/api/graphql/content_episode.graphql.dart';
import 'package:jhanas/api/graphql/schema.graphql.dart';
import 'package:jhanas/atoms/button_contained.dart';
import 'package:jhanas/atoms/button_outline.dart';
import 'package:jhanas/atoms/pull_down_indicator.dart';
import 'package:jhanas/helpers/error.dart';
import 'package:jhanas/helpers/toast.dart';
import 'package:jhanas/player/audio_handler.dart';
import 'package:jhanas/services/download_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsMenuBottomSheet extends StatefulWidget {
  final Fragment$Content content;
  final List<Fragment$ContentEpisode> episodes;

  const SettingsMenuBottomSheet({
    super.key,
    required this.content,
    required this.episodes,
  });

  @override
  SettingsMenuBottomSheetState createState() => SettingsMenuBottomSheetState();
}

class SettingsMenuBottomSheetState extends State<SettingsMenuBottomSheet> {
  final _gql = GetIt.instance<GraphQLClient>();
  final _dl = GetIt.instance<DownloadService>();
  final _prefs = GetIt.instance<SharedPreferences>();

  bool _loading = false;
  bool _isStarted = false;
  bool _isDownloaded = false;
  bool _isNotDownloaded = false;

  @override
  void initState() {
    super.initState();

    final Map<String, DownloadTask> tasksMap = {};
    for (final task in _dl.getAllTasks()) {
      tasksMap[task.request.url] = task;
    }

    for (final episode in widget.episodes) {
      if (episode.progress > 0 || episode.finishedAt != null) {
        _isStarted = true;
      }

      final downloadMedia = DownloadMedia(
        type: ContentType.theory,
        parentId: widget.content.id,
        mediaId: episode.id,
        url: episode.downloadurl,
      );

      final task = tasksMap[episode.downloadurl];
      if (task != null && task.status.value != DownloadStatus.canceled) {
        _isDownloaded = true;
      } else if (downloadMedia.file.existsSync()) {
        _isDownloaded = true;
      } else {
        _isNotDownloaded = true;
      }
    }
  }

  Future<void> _downloadAll() async {
    setState(() {
      _loading = true;
      _isNotDownloaded = false;
    });

    await _gql.mutate$DownloadContent(
      Options$Mutation$DownloadContent(
        variables: Variables$Mutation$DownloadContent(
          id: widget.content.id,
          input: Input$DownloadContentInput(finished: false),
        ),
      ),
    );

    final List<String> urls = [];
    final List<DownloadTask> tasks = [];

    for (final episode in widget.episodes) {
      if (!urls.contains(episode.downloadurl)) {
        final media = DownloadMedia(
          type: ContentType.theory,
          parentId: widget.content.id,
          mediaId: episode.id,
          url: episode.downloadurl,
        );
        DownloadTask? task = _dl.getTask(media);
        if (task == null) {
          task = _dl.download(media);
        } else if (task.status.value.isInactive) {
          _dl.resume(media);
        }
        urls.add(episode.downloadurl);
        tasks.add(task);
      }
    }

    refetch(_gql, ['FetchContent']);

    setState(() {
      _loading = false;
      _isDownloaded = true;
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
        toastInfo('Episodes have been downloaded');
        await _gql.mutate$DownloadContent(
          Options$Mutation$DownloadContent(
            variables: Variables$Mutation$DownloadContent(
              id: widget.content.id,
              input: Input$DownloadContentInput(finished: true),
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
        _loading = true;
        _isDownloaded = false;
      });

      for (final episode in widget.episodes) {
        await _dl.delete(DownloadMedia(
          type: ContentType.theory,
          parentId: widget.content.id,
          mediaId: episode.id,
          url: episode.downloadurl,
        ));
      }

      setState(() {
        _loading = false;
        _isNotDownloaded = true;
      });
    }
  }

  Future<void> _resetProgress() async {
    setState(() => _loading = true);

    final input = Input$ResetContentProgressInput(
      confirm: true,
    );

    final result = await _gql.mutate$ResetContentProgress(
      Options$Mutation$ResetContentProgress(
        variables: Variables$Mutation$ResetContentProgress(
          id: widget.content.id,
          input: input,
        ),
      ),
    );

    if (result.hasException) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        errorMessage(
          'Error while reseting progress',
          exception: result.exception.toString(),
        );
      });
    }

    for (final episode in widget.episodes) {
      _prefs.remove(positionPrefsKey(episode.id));
    }

    refetch(_gql, ['FetchActiveEpisodes', 'FetchActiveEpisode']);

    setState(() => _loading = false);

    toastInfo('Progress has been reset');
  }

  Future<void> _handleResetProgress(BuildContext context) async {
    if (!_isStarted) return;

    final reset = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Reset progress'),
        content: Text(
          'Are you sure you want to reset your progress'
          ' for ${widget.content.title}?',
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
                  disabled: !_isNotDownloaded || _loading,
                  onPressed: () => _downloadAll(),
                  child: const Text('Download all episodes'),
                ),
                const SizedBox(height: 22),
                ButtonOutline(
                  height: 40,
                  disabled: !_isDownloaded || _loading,
                  onPressed: () => _deleteAll(context),
                  child: const Text('Delete all downloads'),
                ),
                const SizedBox(height: 22),
                ButtonOutline(
                  height: 40,
                  disabled: !_isStarted || _loading,
                  onPressed: () => _handleResetProgress(context),
                  child: const Text('Reset progress'),
                ),
                const SizedBox(height: 22),
                ButtonContained(
                  height: 40,
                  disabled: _loading,
                  child: const Text('Close'),
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
