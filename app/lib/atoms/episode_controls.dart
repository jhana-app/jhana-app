import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_download_manager/flutter_download_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:jhanas/api/cache/common.dart';
import 'package:jhanas/api/graphql/content.graphql.dart';
import 'package:jhanas/api/graphql/content_episode.graphql.dart';
import 'package:jhanas/api/graphql/schema.graphql.dart';
import 'package:jhanas/helpers/duration.dart';
import 'package:jhanas/helpers/error.dart';
import 'package:jhanas/player/audio_handler.dart';
import 'package:jhanas/player/media_source.dart';
import 'package:jhanas/router.dart';
import 'package:jhanas/services/download_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum _MenuItem {
  download,
  pause,
  resume,
  delete,
  markAsfinished,
  resetProgress
}

class EpisodeControls extends StatefulWidget {
  final Fragment$Content content;
  final Fragment$ContentEpisode episode;
  final bool isActive;
  final bool allowDownload;
  final bool withMenu;

  const EpisodeControls({
    super.key,
    required this.content,
    required this.episode,
    this.isActive = false,
    this.allowDownload = false,
    this.withMenu = false,
  });

  @override
  State<EpisodeControls> createState() => _EpisodeControlsState();
}

class _EpisodeControlsState extends State<EpisodeControls> {
  final _audioHandler = GetIt.instance<AudioHandler>();
  final _gql = GetIt.instance<GraphQLClient>();
  final _dl = GetIt.instance<DownloadService>();
  final _prefs = GetIt.instance<SharedPreferences>();

  late final DownloadMedia? _media;

  late final StreamSubscription<String>? _downloadAddSubscription;
  late final StreamSubscription<String>? _downloadRemoveSubscription;

  DownloadTask? _task;
  final _downloadStatus = ValueNotifier<DownloadStatus?>(null);
  final _downloadProgress = ValueNotifier<int>(0);

  @override
  void initState() {
    super.initState();

    if (widget.allowDownload) {
      _media = DownloadMedia(
        type: ContentType.theory,
        parentId: widget.content.id,
        mediaId: widget.episode.id,
        url: widget.episode.downloadurl,
      );

      _downloadAddSubscription = _dl.urlsAdded.stream.listen((url) {
        if (url == _media!.url) {
          _updateDownload();
        }
      });

      _downloadRemoveSubscription = _dl.urlsRemoved.stream.listen((url) {
        if (url == _media!.url) {
          _updateDownload();
        }
      });

      _updateDownload();
      if (_media!.file.existsSync()) {
        _downloadStatus.value = DownloadStatus.completed;
      }
    } else {
      _media = null;
      _downloadAddSubscription = null;
      _downloadRemoveSubscription = null;
    }
  }

  @override
  void dispose() {
    _downloadAddSubscription?.cancel();
    _downloadRemoveSubscription?.cancel();
    super.dispose();
  }

  void _updateDownload() {
    if (_media != null) {
      final newTask = _dl.getTask(_media!);
      if (newTask != null) {
        _addTask(newTask);
      } else {
        _removeTask();
      }
    }
  }

  void _addTask(DownloadTask newTask) {
    _downloadStatus.value = newTask.status.value;
    _downloadProgress.value = (newTask.progress.value * 100).round();

    newTask.status.addListener(_taskStatusUpdate);
    newTask.progress.addListener(_taskProgressUpdate);

    setState(() => _task = newTask);
  }

  void _removeTask() {
    _downloadStatus.value = null;
    _downloadProgress.value = 0;
    if (_task != null) {
      _task!.status.removeListener(_taskStatusUpdate);
      _task!.progress.removeListener(_taskProgressUpdate);
    }
    setState(() => _task = null);
    return;
  }

  void _taskStatusUpdate() {
    if (_task != null) {
      _downloadStatus.value = _task!.status.value;
    }
  }

  void _taskProgressUpdate() {
    if (_task != null) {
      _downloadProgress.value =
          (_task!.progress.value * 100).round().clamp(0, 100);
    }
  }

  Future<void> _onDownloadPressed(
    BuildContext context,
    DownloadStatus? status,
  ) async {
    if (!widget.allowDownload) {
      return;
    }

    switch (status) {
      case null:
      case DownloadStatus.canceled:
        return _onDownload();
      case DownloadStatus.queued:
      case DownloadStatus.downloading:
        return _onPause();
      case DownloadStatus.paused:
      case DownloadStatus.failed:
        return _onResume();
      case DownloadStatus.completed:
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
        if (confirm && context.mounted) {
          return _onDelete();
        }
    }
  }

  Future<void> _onMenuSelected(_MenuItem item) async {
    switch (item) {
      case _MenuItem.download:
        if (widget.allowDownload) {
          return _onDownload();
        }
        return;
      case _MenuItem.pause:
        if (widget.allowDownload) {
          return _onPause();
        }
        return;
      case _MenuItem.resume:
        if (widget.allowDownload) {
          return _onResume();
        }
        return;
      case _MenuItem.delete:
        if (widget.allowDownload) {
          return _onDelete();
        }
        return;
      case _MenuItem.markAsfinished:
        return _onMarkAsFinished();
      case _MenuItem.resetProgress:
        return _onResetProgress();
    }
  }

  Future<void> _onDownload() async {
    if (_media != null) {
      _addTask(_dl.download(_media!));
    }
  }

  void _onPause() {
    if (_media != null) {
      _dl.pause(_media!);
    }
  }

  void _onResume() {
    if (_media != null) {
      _dl.resume(_media!);
    }
  }

  Future<void> _onDelete() async {
    if (_media != null) {
      await _dl.delete(_media!);
      _downloadStatus.value = null;
      _downloadProgress.value = 0;
    }
  }

  Future<void> _onMarkAsFinished() async {
    final input = Input$FinishContentEpisodeInput(
      datetime: DateTime.now().toUtc().toIso8601String(),
    );

    final result = await _gql.mutate$FinishContentEpisode(
      Options$Mutation$FinishContentEpisode(
        variables: Variables$Mutation$FinishContentEpisode(
          id: widget.episode.id,
          input: input,
        ),
      ),
    );

    if (result.hasException) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        errorMessage(
          'Error while finishing episode',
          exception: result.exception.toString(),
        );
      });
    }

    _prefs.remove(positionPrefsKey(widget.episode.id));

    refetch(_gql, ['FetchContent']);
  }

  Future<void> _onResetProgress() async {
    final input = Input$ResetContentEpisodeProgressInput(
      confirm: true,
    );

    final result = await _gql.mutate$ResetContentEpisodeProgress(
      Options$Mutation$ResetContentEpisodeProgress(
        variables: Variables$Mutation$ResetContentEpisodeProgress(
          id: widget.episode.id,
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

    _prefs.remove(positionPrefsKey(widget.episode.id));

    refetch(_gql, [
      'FetchContent',
      'FetchActiveEpisodes',
      'FetchActiveEpisode',
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildPlayButton(),
        const SizedBox(width: 6),
        ..._duration(),
        const Spacer(),
        if (widget.withMenu && widget.allowDownload) _downloadButton(context),
        if (widget.withMenu) _menuButton(),
      ],
    );
  }

  Widget _buildPlayButton() => ValueListenableBuilder(
        valueListenable: _audioHandler.mediaSourceNotifier,
        builder: (_, mediaSource, __) {
          return mediaSource is TheoryMediaSource &&
                  mediaSource.episode.id == widget.episode.id
              ? ValueListenableBuilder(
                  valueListenable: _audioHandler.playerStateNotifier,
                  builder: (_, state, __) => _playButton(state.playing),
                )
              : _playButton(false);
        },
      );

  Widget _playButton(bool playing) => SizedBox(
        width: 32,
        height: 32,
        child: IconButton(
          splashRadius: 20,
          padding: EdgeInsets.zero,
          onPressed: () {
            switch (widget.episode.type) {
              case Enum$ContentEpisodeContentType.audio:
                context.pushNamed(
                  APP_PAGE.theoryListenEpisode.toName,
                  pathParameters: {
                    'contentId': widget.content.id,
                    'episodeId': widget.episode.id,
                  },
                  queryParameters: playing ? {} : {'play': 'true'},
                );
                break;
              case Enum$ContentEpisodeContentType.video:
                context.pushNamed(
                  APP_PAGE.theoryWatchEpisode.toName,
                  pathParameters: {
                    'contentId': widget.content.id,
                    'episodeId': widget.episode.id,
                  },
                  queryParameters: playing ? {} : {'play': 'true'},
                );
                break;
              default:
                break;
            }
          },
          icon: Icon(
            playing ? Icons.pause_circle : Icons.play_circle,
            size: 24,
            color: const Color(0xffCCC2DC),
          ),
        ),
      );

  List<Widget> _duration() {
    if (widget.episode.finishedAt != null) {
      return const [
        Text(
          'Played',
          style: TextStyle(
            fontSize: 12,
            height: 16 / 12,
            color: Color(0xff938F99),
          ),
        ),
      ];
    }

    if (widget.episode.progress > 0) {
      final timeLeft = formatDurationHumanMedium(
        Duration(seconds: widget.episode.duration - widget.episode.progress),
      );
      return [
        SizedBox(
          width: 80,
          child: LinearProgressIndicator(
            value: widget.episode.progress / widget.episode.duration,
            backgroundColor: const Color(0x66CCC2DC),
            color: const Color(0xffCCC2DC),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          '$timeLeft left',
          style: const TextStyle(
            fontSize: 12,
            height: 16 / 12,
            color: Colors.white,
          ),
        ),
      ];
    }

    return [
      Text(
        formatDurationHumanMedium(
          Duration(seconds: widget.episode.duration),
        ),
        style: const TextStyle(
          fontSize: 12,
          height: 16 / 12,
          color: Colors.white,
        ),
      ),
    ];
  }

  Widget _downloadButton(BuildContext context) => ValueListenableBuilder(
        valueListenable: _downloadStatus,
        builder: (_, status, __) => SizedBox(
          width: 32,
          height: 32,
          child: IconButton(
            splashRadius: 20,
            padding: EdgeInsets.zero,
            onPressed: () => _onDownloadPressed(context, status),
            icon: _downloadIcon(status),
          ),
        ),
      );

  Widget _downloadIcon(DownloadStatus? status) {
    switch (status) {
      case null:
      case DownloadStatus.canceled:
        return const Icon(
          Icons.download_for_offline_outlined,
          size: 20,
          color: Color(0x44CCC2DC),
        );
      case DownloadStatus.queued:
        return const Icon(
          Icons.downloading_outlined,
          size: 20,
          color: Color(0xBBCCC2DC),
        );
      case DownloadStatus.paused:
        return const Icon(
          Icons.pause_circle_outline,
          size: 20,
          color: Color(0xBBCCC2DC),
        );
      case DownloadStatus.completed:
        return const Icon(
          Icons.download_for_offline_outlined,
          size: 20,
          color: Color(0xffCCC2DC),
        );
      case DownloadStatus.failed:
        return const Icon(
          Icons.download_for_offline_outlined,
          size: 20,
          color: Color(0x94F44336),
        );
      case DownloadStatus.downloading:
        return ValueListenableBuilder(
          valueListenable: _downloadProgress,
          builder: (_, progress, __) {
            return SizedBox(
              width: 15,
              height: 15,
              child: CircularProgressIndicator(
                value: progress / 100,
                backgroundColor: const Color(0x44CCC2DC),
                color: const Color(0xffCCC2DC),
                strokeWidth: 2,
              ),
            );
          },
        );
    }
  }

  Widget _menuButton() => ValueListenableBuilder(
        valueListenable: _downloadStatus,
        builder: (_, status, __) => SizedBox(
          width: 32,
          height: 32,
          child: PopupMenuButton<_MenuItem>(
            splashRadius: 20,
            padding: EdgeInsets.zero,
            icon: const Icon(
              Icons.more_horiz_outlined,
              size: 24,
              color: Color(0xffCCC2DC),
            ),
            onSelected: (value) => _onMenuSelected(value),
            itemBuilder: (context) => _menuItems(status),
          ),
        ),
      );

  List<PopupMenuEntry<_MenuItem>> _menuItems(DownloadStatus? status) {
    final List<PopupMenuEntry<_MenuItem>> items = [];
    if (widget.allowDownload) {
      switch (status) {
        case null:
        case DownloadStatus.canceled:
          items.add(
            const PopupMenuItem<_MenuItem>(
              value: _MenuItem.download,
              child: Text('Download episode'),
            ),
          );
          break;
        case DownloadStatus.queued:
        case DownloadStatus.downloading:
          items.addAll([
            const PopupMenuItem<_MenuItem>(
              value: _MenuItem.pause,
              child: Text('Pause download'),
            ),
            const PopupMenuItem<_MenuItem>(
              value: _MenuItem.delete,
              child: Text('Cancel download'),
            ),
          ]);
          break;
        case DownloadStatus.paused:
          items.addAll([
            const PopupMenuItem<_MenuItem>(
              value: _MenuItem.resume,
              child: Text('Resume download'),
            ),
            const PopupMenuItem<_MenuItem>(
              value: _MenuItem.delete,
              child: Text('Cancel download'),
            ),
          ]);
          break;
        case DownloadStatus.completed:
          items.add(
            const PopupMenuItem<_MenuItem>(
              value: _MenuItem.delete,
              child: Text('Delete downloaded episode'),
            ),
          );
          break;
        case DownloadStatus.failed:
          items.add(
            const PopupMenuItem<_MenuItem>(
              value: _MenuItem.download,
              enabled: false,
              child: Text('Download failed'),
            ),
          );
          break;
      }
    }
    if (widget.episode.finishedAt != null || widget.episode.progress > 0) {
      items.add(
        const PopupMenuItem<_MenuItem>(
          value: _MenuItem.resetProgress,
          child: Text('Reset episode progress'),
        ),
      );
    }
    if (widget.episode.finishedAt == null) {
      items.add(
        const PopupMenuItem<_MenuItem>(
          value: _MenuItem.markAsfinished,
          child: Text('Mark episode as finished'),
        ),
      );
    }
    return items;
  }
}
