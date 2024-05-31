import 'dart:io';
// ignore: depend_on_referenced_packages
import 'package:clock/clock.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
// ignore: implementation_imports
import 'package:flutter_cache_manager/src/web/mime_converter.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as p;

class LessonCacheManager extends CacheManager {
  static const key = 'lessonCache';

  static final LessonCacheManager _instance = LessonCacheManager._();

  factory LessonCacheManager() {
    return _instance;
  }

  LessonCacheManager._() : super(Config(key, fileService: LessonFileService()));
}

/// [HttpFileService] is the most common file service and the default for
/// [WebHelper]. One can easily adapt it to use dio or any other http client.
class LessonFileService extends FileService {
  final http.Client _httpClient;

  LessonFileService({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  @override
  Future<FileServiceResponse> get(String url,
      {Map<String, String>? headers}) async {
    final req = http.Request('GET', Uri.parse(url));
    if (headers != null) {
      req.headers.addAll(headers);
    }
    final httpResponse = await _httpClient.send(req);

    return HttpGetResponse(httpResponse, url);
  }
}

/// Basic implementation of a [FileServiceResponse] for http requests.
class HttpGetResponse implements FileServiceResponse {
  final http.StreamedResponse _response;
  final String url;

  HttpGetResponse(this._response, this.url);

  final DateTime _receivedTime = clock.now();

  @override
  int get statusCode => _response.statusCode;

  String? _header(String name) {
    return _response.headers[name];
  }

  @override
  Stream<List<int>> get content => _response.stream;

  @override
  int? get contentLength => _response.contentLength;

  @override
  DateTime get validTill {
    // Without a cache-control header we keep the file for a week
    var ageDuration = const Duration(days: 7);
    final controlHeader = _header(HttpHeaders.cacheControlHeader);
    if (controlHeader != null) {
      final controlSettings = controlHeader.split(',');
      for (final setting in controlSettings) {
        final sanitizedSetting = setting.trim().toLowerCase();
        if (sanitizedSetting == 'no-cache') {
          ageDuration = Duration.zero;
        }
        if (sanitizedSetting.startsWith('max-age=')) {
          final validSeconds =
              int.tryParse(sanitizedSetting.split('=')[1]) ?? 0;
          if (validSeconds > 0) {
            ageDuration = Duration(seconds: validSeconds);
          }
        }
      }
    }

    return _receivedTime.add(ageDuration);
  }

  @override
  String? get eTag => _header(HttpHeaders.etagHeader);

  @override
  String get fileExtension {
    final ext = p.extension(url);
    if (ext != '') {
      return ext;
    }

    var fileExtension = '';
    final contentTypeHeader = _header(HttpHeaders.contentTypeHeader);
    if (contentTypeHeader != null) {
      final contentType = ContentType.parse(contentTypeHeader);
      fileExtension = contentType.fileExtension;
    }
    return fileExtension;
  }
}
