import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_download_manager/flutter_download_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:jhanas/api/graphql/lesson.graphql.dart';
import 'package:jhanas/api/graphql/lesson_audio.graphql.dart';
import 'package:jhanas/api/graphql/unit.graphql.dart';
import 'package:jhanas/atoms/lesson_icon.dart';
import 'package:jhanas/helpers/color.dart';
import 'package:jhanas/router.dart';
import 'package:jhanas/services/download_service.dart';

class LessonItem extends StatefulWidget {
  final double left;
  final double top;
  final Fragment$Unit unit;
  final Fragment$Lesson lesson;
  final double radius;
  final LessonState? state;
  final ScrollController scrollController;

  const LessonItem({
    super.key,
    required this.left,
    required this.top,
    required this.unit,
    required this.lesson,
    required this.radius,
    this.state,
    required this.scrollController,
  });

  @override
  State<LessonItem> createState() => _LessonItemState();
}

class _LessonItemState extends State<LessonItem> {
  GlobalKey? _key;

  final _dl = GetIt.instance<DownloadService>();

  late final Fragment$LessonAudio? audio;
  late final DownloadMedia? _media;

  StreamSubscription<String>? _downloadAddSubscription;
  StreamSubscription<String>? _downloadRemoveSubscription;

  DownloadTask? _task;
  final _downloadStatus = ValueNotifier<DownloadStatus?>(null);
  final _downloadProgress = ValueNotifier<int>(0);

  @override
  void initState() {
    super.initState();

    if (widget.state == LessonState.current || widget.lesson.isNext) {
      _key = GlobalKey();
    }

    audio = widget.lesson.audios.isNotEmpty ? widget.lesson.audios.first : null;

    if (audio != null) {
      final audioUrl = audio!.audiourl;

      _media = DownloadMedia(
        type: ContentType.lesson,
        parentId: widget.unit.id,
        mediaId: widget.lesson.id,
        url: audioUrl,
      );

      _downloadAddSubscription = _dl.urlsAdded.stream.listen((url) {
        if (url == audioUrl) {
          _updateDownload();
        }
      });

      _downloadRemoveSubscription = _dl.urlsRemoved.stream.listen((url) {
        if (url == audioUrl) {
          _updateDownload();
        }
      });

      _updateDownload();
      if (_media!.file.existsSync()) {
        _downloadStatus.value = DownloadStatus.completed;
      }
    } else {
      _downloadAddSubscription = null;
      _downloadRemoveSubscription = null;
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_key != null && _key!.currentContext != null) {
        final screenHeight = MediaQuery.of(context).size.height;
        final scrollTo = screenHeight / 3;

        final box = _key!.currentContext!.findRenderObject() as RenderBox;
        final position = box.localToGlobal(Offset.zero);

        if (position.dy > scrollTo) {
          widget.scrollController.jumpTo(
            widget.scrollController.offset + position.dy - scrollTo,
          );
        }
      }
    });
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

  void _onPressed(BuildContext context) {
    if (widget.state == LessonState.disabled) {
      return;
    }

    context.pushNamed<bool?>(
      APP_PAGE.lessonDetails.toName,
      pathParameters: {
        'courseId': widget.unit.courseID,
        'unitId': widget.unit.id,
        'lessonId': widget.lesson.id,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      key: _key,
      left: widget.left - widget.radius - 10,
      top: widget.top - widget.radius - 10,
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(200),
        ),
        onTap: () => _onPressed(context),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: LessonIcon(
                unit: widget.unit,
                lesson: widget.lesson,
                state: widget.state,
                radius: widget.radius,
              ),
            ),
            audio == null
                ? Positioned(
                    left: widget.radius * 2 - 12,
                    top: widget.radius * 2 - 5,
                    child: CircleAvatar(
                      radius: 11,
                      backgroundColor: unitBackgroundColor(widget.unit.color),
                      child: const Icon(
                        Icons.construction_outlined,
                        size: 20,
                        color: Color(0x88CCC2DC),
                      ),
                    ),
                  )
                : ValueListenableBuilder(
                    valueListenable: _downloadStatus,
                    builder: (_, status, __) {
                      if (status == null || status == DownloadStatus.canceled) {
                        return Container();
                      }
                      return Positioned(
                        left: widget.radius * 2 - 12,
                        top: widget.radius * 2 - 5,
                        child: CircleAvatar(
                          radius: 11,
                          backgroundColor:
                              unitBackgroundColor(widget.unit.color),
                          child: _downloadIcon(status),
                        ),
                      );
                    },
                  ),
          ],
        ),
      ),
    );
  }

  Widget _downloadIcon(DownloadStatus? status) {
    switch (status) {
      case null:
      case DownloadStatus.canceled:
        return Container();
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
