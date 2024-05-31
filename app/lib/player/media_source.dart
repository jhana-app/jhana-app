import 'package:audio_service/audio_service.dart';
import 'package:jhanas/api/graphql/content.graphql.dart';
import 'package:jhanas/api/graphql/content_episode.graphql.dart';
import 'package:jhanas/api/graphql/lesson.graphql.dart';
import 'package:jhanas/api/graphql/lesson_audio.graphql.dart';
import 'package:jhanas/api/graphql/unit.graphql.dart';
import 'package:jhanas/services/download_service.dart';

abstract class MediaSource {
  MediaItem get mediaItem {
    throw UnimplementedError();
  }

  @override
  String toString() => 'MediaSource()';
}

class LessonMediaSource implements MediaSource {
  final Fragment$Unit unit;
  final Fragment$Lesson lesson;
  final Fragment$LessonAudio audio;

  LessonMediaSource({
    required this.unit,
    required this.lesson,
    required this.audio,
  });

  @override
  String toString() => 'MediaSource(lesson,'
      'unit=${unit.id},'
      'lesson=${lesson.id},'
      'audio=${audio.id}'
      ')';

  @override
  MediaItem get mediaItem {
    throw UnimplementedError();
  }
}

class TheoryMediaSource implements MediaSource {
  final Fragment$Content content;
  final Fragment$ContentEpisode episode;

  TheoryMediaSource({
    required this.content,
    required this.episode,
  });

  @override
  String toString() => 'MediaSource(theory,'
      'content=${content.id},'
      'episode=${episode.id}'
      ')';

  @override
  MediaItem get mediaItem => MediaItem(
        id: episode.id,
        title: episode.title,
        album: content.title,
        artUri: Uri.parse(content.iconimage),
        duration: Duration(seconds: episode.duration),
        extras: extras,
      );

  Map<String, dynamic> get extras {
    final downloadMedia = DownloadMedia(
      type: ContentType.theory,
      parentId: content.id,
      mediaId: episode.id,
      url: episode.downloadurl,
    );
    if (downloadMedia.file.existsSync()) {
      return {'file': downloadMedia.file.path};
    } else {
      return {'url': episode.streamurl};
    }
  }
}
