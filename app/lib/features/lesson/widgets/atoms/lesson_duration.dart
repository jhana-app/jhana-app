import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_download_manager/flutter_download_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:jhanas/api/graphql/lesson.graphql.dart';
import 'package:jhanas/api/graphql/lesson_audio.graphql.dart';
import 'package:jhanas/api/graphql/unit.graphql.dart';
import 'package:jhanas/services/download_service.dart';

class LessonDuration extends StatefulWidget {
  final Fragment$Unit unit;
  final Fragment$Lesson lesson;

  const LessonDuration({
    super.key,
    required this.unit,
    required this.lesson,
  });

  @override
  State<LessonDuration> createState() => _LessonDurationState();
}

class _LessonDurationState extends State<LessonDuration> {
  final _dl = GetIt.instance<DownloadService>();

  late final Fragment$LessonAudio? _audio;
  late final DownloadMedia? _media;

  late StreamSubscription<String>? _downloadAddSubscription;
  late StreamSubscription<String>? _downloadRemoveSubscription;

  DownloadTask? _task;
  final _downloadStatus = ValueNotifier<DownloadStatus?>(null);
  final _downloadProgress = ValueNotifier<int>(0);

  @override
  void initState() {
    super.initState();

    _audio =
        widget.lesson.audios.isNotEmpty ? widget.lesson.audios.first : null;

    if (_audio != null) {
      _media = DownloadMedia(
        type: ContentType.lesson,
        parentId: widget.unit.id,
        mediaId: widget.lesson.id,
        url: _audio!.audiourl,
      );

      _downloadAddSubscription = _dl.urlsAdded.stream.listen((url) {
        if (url == _audio!.audiourl) {
          _updateDownload();
        }
      });

      _downloadRemoveSubscription = _dl.urlsRemoved.stream.listen((url) {
        if (url == _audio!.audiourl) {
          _updateDownload();
        }
      });

      _updateDownload();
      if (_media != null && _media!.file.existsSync()) {
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
      _downloadProgress.value = (_task!.progress.value * 100).round();
    }
  }

  Future<void> _onDownloadPressed(
    BuildContext context,
    DownloadStatus? status,
  ) async {
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
    }
    _downloadStatus.value = null;
    _downloadProgress.value = 0;
  }

  @override
  Widget build(BuildContext context) {
    if (_audio == null) {
      return const SizedBox();
    }

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Text(
            _humanDuration(_audio!.duration),
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xffD0BCFF),
            ),
          ),
          const SizedBox(width: 8),
          _downloadButton(context),
        ],
      ),
    );
  }

  String _humanDuration(int duration) {
    final int seconds = duration % 60;
    final int minutes = ((duration - seconds) / 60).floor();

    return '$minutes min';
  }

  Widget _downloadButton(BuildContext context) => ValueListenableBuilder(
        valueListenable: _downloadStatus,
        builder: (_, status, __) => SizedBox(
          width: 24,
          height: 24,
          child: IconButton(
            splashRadius: 24,
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
}
