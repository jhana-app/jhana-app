import 'dart:async';
import 'dart:io';
import 'package:flutter_download_manager/flutter_download_manager.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

String _downloadsDir = '';

const _partialExtension = '.partial';
const _tempExtension = '.temp';

Future<void> initDownloadDir() async {
  final dir = await getApplicationSupportDirectory();
  _downloadsDir = p.join(dir.path, 'jhanas');
}

enum ContentType { lesson, theory }

extension ContentTypeExt on ContentType {
  String get name => toString().split('.').last;
}

class DownloadMedia {
  final ContentType type;
  final String? parentId; // unit id for lessons, content id for theory
  final String mediaId; // lesson id or episode id
  final String url;

  DownloadMedia({
    required this.type,
    this.parentId,
    required this.mediaId,
    required this.url,
  }) : assert(url.isNotEmpty);

  String get filename => p.join(
        _downloadsDir,
        type.name,
        parentId ?? '',
        mediaId,
        url.split('/').last,
      );
  File get file => File(filename);

  // partial download file
  String get partialFilename => filename + _partialExtension;
  File get partialFile => File(partialFilename);

  // temp download file
  String get _tempFilename => partialFilename + _tempExtension;
  File get _tempFile => File(_tempFilename);

  Future<void> delete() async {
    try {
      await file.delete();
    } catch (_) {}
    try {
      await partialFile.delete();
    } catch (_) {}
    try {
      await _tempFile.delete();
    } catch (_) {}
  }
}

class DownloadService {
  final _dl = DownloadManager();

  final urlsAdded = StreamController<String>.broadcast();
  final urlsRemoved = StreamController<String>.broadcast();

  DownloadService() {
    _dl.urlsAdded.stream.listen((url) => urlsAdded.add(url));
    _dl.urlsRemoved.stream.listen((url) => urlsRemoved.add(url));
  }

  DownloadTask download(DownloadMedia media) =>
      _dl.addDownload(media.url, media.filename);

  DownloadTask? getTask(DownloadMedia media) => _dl.getDownload(media.url);

  List<DownloadTask> getAllTasks() => _dl.getAllDownloads();

  void pause(DownloadMedia media) => _dl.pauseDownload(media.url);

  void resume(DownloadMedia media) => _dl.resumeDownload(media.url);

  void pauseBatch(List<String> urlsList) => _dl.pauseBatchDownloads(urlsList);

  void resumeBatch(List<String> urls) => _dl.resumeBatchDownloads(urls);

  Future<void> delete(DownloadMedia media) async {
    try {
      _dl.removeDownload(media.url);
    } catch (_) {}
    await media.delete();
  }

  Future<bool> whenBatchDownloadsComplete(
    List<DownloadTask> tasks, {
    Duration timeout = const Duration(hours: 2),
  }) async =>
      _dl.whenBatchDownloadsComplete(tasks, timeout: timeout);
}
