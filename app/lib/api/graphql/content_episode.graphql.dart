// GENERATED FILE, DO NOT MODIFY
import 'content.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Fragment$ContentEpisode {
  Fragment$ContentEpisode({
    required this.id,
    required this.contentID,
    required this.type,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.duration,
    required this.progress,
    this.finishedAt,
    required this.streamurl,
    required this.downloadurl,
    required this.source,
    required this.sourceurl,
    required this.licence,
    required this.licenceurl,
    required this.ishidden,
    required this.order,
    this.$__typename = 'ContentEpisode',
  });

  factory Fragment$ContentEpisode.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$contentID = json['contentID'];
    final l$type = json['type'];
    final l$title = json['title'];
    final l$subtitle = json['subtitle'];
    final l$description = json['description'];
    final l$duration = json['duration'];
    final l$progress = json['progress'];
    final l$finishedAt = json['finishedAt'];
    final l$streamurl = json['streamurl'];
    final l$downloadurl = json['downloadurl'];
    final l$source = json['source'];
    final l$sourceurl = json['sourceurl'];
    final l$licence = json['licence'];
    final l$licenceurl = json['licenceurl'];
    final l$ishidden = json['ishidden'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Fragment$ContentEpisode(
      id: (l$id as String),
      contentID: (l$contentID as String),
      type: fromJson$Enum$ContentEpisodeContentType((l$type as String)),
      title: (l$title as String),
      subtitle: (l$subtitle as String),
      description: (l$description as String),
      duration: (l$duration as int),
      progress: (l$progress as int),
      finishedAt: (l$finishedAt as String?),
      streamurl: (l$streamurl as String),
      downloadurl: (l$downloadurl as String),
      source: (l$source as String),
      sourceurl: (l$sourceurl as String),
      licence: (l$licence as String),
      licenceurl: (l$licenceurl as String),
      ishidden: (l$ishidden as bool),
      order: (l$order as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String contentID;

  final Enum$ContentEpisodeContentType type;

  final String title;

  final String subtitle;

  final String description;

  final int duration;

  final int progress;

  final String? finishedAt;

  final String streamurl;

  final String downloadurl;

  final String source;

  final String sourceurl;

  final String licence;

  final String licenceurl;

  final bool ishidden;

  final int order;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$contentID = contentID;
    _resultData['contentID'] = l$contentID;
    final l$type = type;
    _resultData['type'] = toJson$Enum$ContentEpisodeContentType(l$type);
    final l$title = title;
    _resultData['title'] = l$title;
    final l$subtitle = subtitle;
    _resultData['subtitle'] = l$subtitle;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$finishedAt = finishedAt;
    _resultData['finishedAt'] = l$finishedAt;
    final l$streamurl = streamurl;
    _resultData['streamurl'] = l$streamurl;
    final l$downloadurl = downloadurl;
    _resultData['downloadurl'] = l$downloadurl;
    final l$source = source;
    _resultData['source'] = l$source;
    final l$sourceurl = sourceurl;
    _resultData['sourceurl'] = l$sourceurl;
    final l$licence = licence;
    _resultData['licence'] = l$licence;
    final l$licenceurl = licenceurl;
    _resultData['licenceurl'] = l$licenceurl;
    final l$ishidden = ishidden;
    _resultData['ishidden'] = l$ishidden;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$contentID = contentID;
    final l$type = type;
    final l$title = title;
    final l$subtitle = subtitle;
    final l$description = description;
    final l$duration = duration;
    final l$progress = progress;
    final l$finishedAt = finishedAt;
    final l$streamurl = streamurl;
    final l$downloadurl = downloadurl;
    final l$source = source;
    final l$sourceurl = sourceurl;
    final l$licence = licence;
    final l$licenceurl = licenceurl;
    final l$ishidden = ishidden;
    final l$order = order;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$contentID,
      l$type,
      l$title,
      l$subtitle,
      l$description,
      l$duration,
      l$progress,
      l$finishedAt,
      l$streamurl,
      l$downloadurl,
      l$source,
      l$sourceurl,
      l$licence,
      l$licenceurl,
      l$ishidden,
      l$order,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ContentEpisode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$contentID = contentID;
    final lOther$contentID = other.contentID;
    if (l$contentID != lOther$contentID) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$subtitle = subtitle;
    final lOther$subtitle = other.subtitle;
    if (l$subtitle != lOther$subtitle) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$finishedAt = finishedAt;
    final lOther$finishedAt = other.finishedAt;
    if (l$finishedAt != lOther$finishedAt) {
      return false;
    }
    final l$streamurl = streamurl;
    final lOther$streamurl = other.streamurl;
    if (l$streamurl != lOther$streamurl) {
      return false;
    }
    final l$downloadurl = downloadurl;
    final lOther$downloadurl = other.downloadurl;
    if (l$downloadurl != lOther$downloadurl) {
      return false;
    }
    final l$source = source;
    final lOther$source = other.source;
    if (l$source != lOther$source) {
      return false;
    }
    final l$sourceurl = sourceurl;
    final lOther$sourceurl = other.sourceurl;
    if (l$sourceurl != lOther$sourceurl) {
      return false;
    }
    final l$licence = licence;
    final lOther$licence = other.licence;
    if (l$licence != lOther$licence) {
      return false;
    }
    final l$licenceurl = licenceurl;
    final lOther$licenceurl = other.licenceurl;
    if (l$licenceurl != lOther$licenceurl) {
      return false;
    }
    final l$ishidden = ishidden;
    final lOther$ishidden = other.ishidden;
    if (l$ishidden != lOther$ishidden) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ContentEpisode on Fragment$ContentEpisode {
  CopyWith$Fragment$ContentEpisode<Fragment$ContentEpisode> get copyWith =>
      CopyWith$Fragment$ContentEpisode(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ContentEpisode<TRes> {
  factory CopyWith$Fragment$ContentEpisode(
    Fragment$ContentEpisode instance,
    TRes Function(Fragment$ContentEpisode) then,
  ) = _CopyWithImpl$Fragment$ContentEpisode;

  factory CopyWith$Fragment$ContentEpisode.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ContentEpisode;

  TRes call({
    String? id,
    String? contentID,
    Enum$ContentEpisodeContentType? type,
    String? title,
    String? subtitle,
    String? description,
    int? duration,
    int? progress,
    String? finishedAt,
    String? streamurl,
    String? downloadurl,
    String? source,
    String? sourceurl,
    String? licence,
    String? licenceurl,
    bool? ishidden,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ContentEpisode<TRes>
    implements CopyWith$Fragment$ContentEpisode<TRes> {
  _CopyWithImpl$Fragment$ContentEpisode(
    this._instance,
    this._then,
  );

  final Fragment$ContentEpisode _instance;

  final TRes Function(Fragment$ContentEpisode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? contentID = _undefined,
    Object? type = _undefined,
    Object? title = _undefined,
    Object? subtitle = _undefined,
    Object? description = _undefined,
    Object? duration = _undefined,
    Object? progress = _undefined,
    Object? finishedAt = _undefined,
    Object? streamurl = _undefined,
    Object? downloadurl = _undefined,
    Object? source = _undefined,
    Object? sourceurl = _undefined,
    Object? licence = _undefined,
    Object? licenceurl = _undefined,
    Object? ishidden = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ContentEpisode(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        contentID: contentID == _undefined || contentID == null
            ? _instance.contentID
            : (contentID as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$ContentEpisodeContentType),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        subtitle: subtitle == _undefined || subtitle == null
            ? _instance.subtitle
            : (subtitle as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        duration: duration == _undefined || duration == null
            ? _instance.duration
            : (duration as int),
        progress: progress == _undefined || progress == null
            ? _instance.progress
            : (progress as int),
        finishedAt: finishedAt == _undefined
            ? _instance.finishedAt
            : (finishedAt as String?),
        streamurl: streamurl == _undefined || streamurl == null
            ? _instance.streamurl
            : (streamurl as String),
        downloadurl: downloadurl == _undefined || downloadurl == null
            ? _instance.downloadurl
            : (downloadurl as String),
        source: source == _undefined || source == null
            ? _instance.source
            : (source as String),
        sourceurl: sourceurl == _undefined || sourceurl == null
            ? _instance.sourceurl
            : (sourceurl as String),
        licence: licence == _undefined || licence == null
            ? _instance.licence
            : (licence as String),
        licenceurl: licenceurl == _undefined || licenceurl == null
            ? _instance.licenceurl
            : (licenceurl as String),
        ishidden: ishidden == _undefined || ishidden == null
            ? _instance.ishidden
            : (ishidden as bool),
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ContentEpisode<TRes>
    implements CopyWith$Fragment$ContentEpisode<TRes> {
  _CopyWithStubImpl$Fragment$ContentEpisode(this._res);

  TRes _res;

  call({
    String? id,
    String? contentID,
    Enum$ContentEpisodeContentType? type,
    String? title,
    String? subtitle,
    String? description,
    int? duration,
    int? progress,
    String? finishedAt,
    String? streamurl,
    String? downloadurl,
    String? source,
    String? sourceurl,
    String? licence,
    String? licenceurl,
    bool? ishidden,
    int? order,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionContentEpisode = FragmentDefinitionNode(
  name: NameNode(value: 'ContentEpisode'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'ContentEpisode'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'contentID'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'type'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'title'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'subtitle'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'description'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'duration'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'progress'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'finishedAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'streamurl'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'downloadurl'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'source'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'sourceurl'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'licence'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'licenceurl'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'ishidden'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'order'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentContentEpisode = DocumentNode(definitions: [
  fragmentDefinitionContentEpisode,
]);

extension ClientExtension$Fragment$ContentEpisode on graphql.GraphQLClient {
  void writeFragment$ContentEpisode({
    required Fragment$ContentEpisode data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ContentEpisode',
            document: documentNodeFragmentContentEpisode,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ContentEpisode? readFragment$ContentEpisode({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ContentEpisode',
          document: documentNodeFragmentContentEpisode,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ContentEpisode.fromJson(result);
  }
}

class Fragment$ContentEpisodeFull implements Fragment$ContentEpisode {
  Fragment$ContentEpisodeFull({
    required this.id,
    required this.contentID,
    required this.type,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.duration,
    required this.progress,
    this.finishedAt,
    required this.streamurl,
    required this.downloadurl,
    required this.source,
    required this.sourceurl,
    required this.licence,
    required this.licenceurl,
    required this.ishidden,
    required this.order,
    this.$__typename = 'ContentEpisode',
    required this.content,
  });

  factory Fragment$ContentEpisodeFull.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$contentID = json['contentID'];
    final l$type = json['type'];
    final l$title = json['title'];
    final l$subtitle = json['subtitle'];
    final l$description = json['description'];
    final l$duration = json['duration'];
    final l$progress = json['progress'];
    final l$finishedAt = json['finishedAt'];
    final l$streamurl = json['streamurl'];
    final l$downloadurl = json['downloadurl'];
    final l$source = json['source'];
    final l$sourceurl = json['sourceurl'];
    final l$licence = json['licence'];
    final l$licenceurl = json['licenceurl'];
    final l$ishidden = json['ishidden'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    final l$content = json['content'];
    return Fragment$ContentEpisodeFull(
      id: (l$id as String),
      contentID: (l$contentID as String),
      type: fromJson$Enum$ContentEpisodeContentType((l$type as String)),
      title: (l$title as String),
      subtitle: (l$subtitle as String),
      description: (l$description as String),
      duration: (l$duration as int),
      progress: (l$progress as int),
      finishedAt: (l$finishedAt as String?),
      streamurl: (l$streamurl as String),
      downloadurl: (l$downloadurl as String),
      source: (l$source as String),
      sourceurl: (l$sourceurl as String),
      licence: (l$licence as String),
      licenceurl: (l$licenceurl as String),
      ishidden: (l$ishidden as bool),
      order: (l$order as int),
      $__typename: (l$$__typename as String),
      content: Fragment$Content.fromJson((l$content as Map<String, dynamic>)),
    );
  }

  final String id;

  final String contentID;

  final Enum$ContentEpisodeContentType type;

  final String title;

  final String subtitle;

  final String description;

  final int duration;

  final int progress;

  final String? finishedAt;

  final String streamurl;

  final String downloadurl;

  final String source;

  final String sourceurl;

  final String licence;

  final String licenceurl;

  final bool ishidden;

  final int order;

  final String $__typename;

  final Fragment$Content content;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$contentID = contentID;
    _resultData['contentID'] = l$contentID;
    final l$type = type;
    _resultData['type'] = toJson$Enum$ContentEpisodeContentType(l$type);
    final l$title = title;
    _resultData['title'] = l$title;
    final l$subtitle = subtitle;
    _resultData['subtitle'] = l$subtitle;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$finishedAt = finishedAt;
    _resultData['finishedAt'] = l$finishedAt;
    final l$streamurl = streamurl;
    _resultData['streamurl'] = l$streamurl;
    final l$downloadurl = downloadurl;
    _resultData['downloadurl'] = l$downloadurl;
    final l$source = source;
    _resultData['source'] = l$source;
    final l$sourceurl = sourceurl;
    _resultData['sourceurl'] = l$sourceurl;
    final l$licence = licence;
    _resultData['licence'] = l$licence;
    final l$licenceurl = licenceurl;
    _resultData['licenceurl'] = l$licenceurl;
    final l$ishidden = ishidden;
    _resultData['ishidden'] = l$ishidden;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$content = content;
    _resultData['content'] = l$content.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$contentID = contentID;
    final l$type = type;
    final l$title = title;
    final l$subtitle = subtitle;
    final l$description = description;
    final l$duration = duration;
    final l$progress = progress;
    final l$finishedAt = finishedAt;
    final l$streamurl = streamurl;
    final l$downloadurl = downloadurl;
    final l$source = source;
    final l$sourceurl = sourceurl;
    final l$licence = licence;
    final l$licenceurl = licenceurl;
    final l$ishidden = ishidden;
    final l$order = order;
    final l$$__typename = $__typename;
    final l$content = content;
    return Object.hashAll([
      l$id,
      l$contentID,
      l$type,
      l$title,
      l$subtitle,
      l$description,
      l$duration,
      l$progress,
      l$finishedAt,
      l$streamurl,
      l$downloadurl,
      l$source,
      l$sourceurl,
      l$licence,
      l$licenceurl,
      l$ishidden,
      l$order,
      l$$__typename,
      l$content,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ContentEpisodeFull) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$contentID = contentID;
    final lOther$contentID = other.contentID;
    if (l$contentID != lOther$contentID) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$subtitle = subtitle;
    final lOther$subtitle = other.subtitle;
    if (l$subtitle != lOther$subtitle) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$finishedAt = finishedAt;
    final lOther$finishedAt = other.finishedAt;
    if (l$finishedAt != lOther$finishedAt) {
      return false;
    }
    final l$streamurl = streamurl;
    final lOther$streamurl = other.streamurl;
    if (l$streamurl != lOther$streamurl) {
      return false;
    }
    final l$downloadurl = downloadurl;
    final lOther$downloadurl = other.downloadurl;
    if (l$downloadurl != lOther$downloadurl) {
      return false;
    }
    final l$source = source;
    final lOther$source = other.source;
    if (l$source != lOther$source) {
      return false;
    }
    final l$sourceurl = sourceurl;
    final lOther$sourceurl = other.sourceurl;
    if (l$sourceurl != lOther$sourceurl) {
      return false;
    }
    final l$licence = licence;
    final lOther$licence = other.licence;
    if (l$licence != lOther$licence) {
      return false;
    }
    final l$licenceurl = licenceurl;
    final lOther$licenceurl = other.licenceurl;
    if (l$licenceurl != lOther$licenceurl) {
      return false;
    }
    final l$ishidden = ishidden;
    final lOther$ishidden = other.ishidden;
    if (l$ishidden != lOther$ishidden) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ContentEpisodeFull
    on Fragment$ContentEpisodeFull {
  CopyWith$Fragment$ContentEpisodeFull<Fragment$ContentEpisodeFull>
      get copyWith => CopyWith$Fragment$ContentEpisodeFull(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ContentEpisodeFull<TRes> {
  factory CopyWith$Fragment$ContentEpisodeFull(
    Fragment$ContentEpisodeFull instance,
    TRes Function(Fragment$ContentEpisodeFull) then,
  ) = _CopyWithImpl$Fragment$ContentEpisodeFull;

  factory CopyWith$Fragment$ContentEpisodeFull.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ContentEpisodeFull;

  TRes call({
    String? id,
    String? contentID,
    Enum$ContentEpisodeContentType? type,
    String? title,
    String? subtitle,
    String? description,
    int? duration,
    int? progress,
    String? finishedAt,
    String? streamurl,
    String? downloadurl,
    String? source,
    String? sourceurl,
    String? licence,
    String? licenceurl,
    bool? ishidden,
    int? order,
    String? $__typename,
    Fragment$Content? content,
  });
  CopyWith$Fragment$Content<TRes> get content;
}

class _CopyWithImpl$Fragment$ContentEpisodeFull<TRes>
    implements CopyWith$Fragment$ContentEpisodeFull<TRes> {
  _CopyWithImpl$Fragment$ContentEpisodeFull(
    this._instance,
    this._then,
  );

  final Fragment$ContentEpisodeFull _instance;

  final TRes Function(Fragment$ContentEpisodeFull) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? contentID = _undefined,
    Object? type = _undefined,
    Object? title = _undefined,
    Object? subtitle = _undefined,
    Object? description = _undefined,
    Object? duration = _undefined,
    Object? progress = _undefined,
    Object? finishedAt = _undefined,
    Object? streamurl = _undefined,
    Object? downloadurl = _undefined,
    Object? source = _undefined,
    Object? sourceurl = _undefined,
    Object? licence = _undefined,
    Object? licenceurl = _undefined,
    Object? ishidden = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
    Object? content = _undefined,
  }) =>
      _then(Fragment$ContentEpisodeFull(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        contentID: contentID == _undefined || contentID == null
            ? _instance.contentID
            : (contentID as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$ContentEpisodeContentType),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        subtitle: subtitle == _undefined || subtitle == null
            ? _instance.subtitle
            : (subtitle as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        duration: duration == _undefined || duration == null
            ? _instance.duration
            : (duration as int),
        progress: progress == _undefined || progress == null
            ? _instance.progress
            : (progress as int),
        finishedAt: finishedAt == _undefined
            ? _instance.finishedAt
            : (finishedAt as String?),
        streamurl: streamurl == _undefined || streamurl == null
            ? _instance.streamurl
            : (streamurl as String),
        downloadurl: downloadurl == _undefined || downloadurl == null
            ? _instance.downloadurl
            : (downloadurl as String),
        source: source == _undefined || source == null
            ? _instance.source
            : (source as String),
        sourceurl: sourceurl == _undefined || sourceurl == null
            ? _instance.sourceurl
            : (sourceurl as String),
        licence: licence == _undefined || licence == null
            ? _instance.licence
            : (licence as String),
        licenceurl: licenceurl == _undefined || licenceurl == null
            ? _instance.licenceurl
            : (licenceurl as String),
        ishidden: ishidden == _undefined || ishidden == null
            ? _instance.ishidden
            : (ishidden as bool),
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        content: content == _undefined || content == null
            ? _instance.content
            : (content as Fragment$Content),
      ));

  CopyWith$Fragment$Content<TRes> get content {
    final local$content = _instance.content;
    return CopyWith$Fragment$Content(local$content, (e) => call(content: e));
  }
}

class _CopyWithStubImpl$Fragment$ContentEpisodeFull<TRes>
    implements CopyWith$Fragment$ContentEpisodeFull<TRes> {
  _CopyWithStubImpl$Fragment$ContentEpisodeFull(this._res);

  TRes _res;

  call({
    String? id,
    String? contentID,
    Enum$ContentEpisodeContentType? type,
    String? title,
    String? subtitle,
    String? description,
    int? duration,
    int? progress,
    String? finishedAt,
    String? streamurl,
    String? downloadurl,
    String? source,
    String? sourceurl,
    String? licence,
    String? licenceurl,
    bool? ishidden,
    int? order,
    String? $__typename,
    Fragment$Content? content,
  }) =>
      _res;

  CopyWith$Fragment$Content<TRes> get content =>
      CopyWith$Fragment$Content.stub(_res);
}

const fragmentDefinitionContentEpisodeFull = FragmentDefinitionNode(
  name: NameNode(value: 'ContentEpisodeFull'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'ContentEpisode'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FragmentSpreadNode(
      name: NameNode(value: 'ContentEpisode'),
      directives: [],
    ),
    FieldNode(
      name: NameNode(value: 'content'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Content'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentContentEpisodeFull = DocumentNode(definitions: [
  fragmentDefinitionContentEpisodeFull,
  fragmentDefinitionContentEpisode,
  fragmentDefinitionContent,
]);

extension ClientExtension$Fragment$ContentEpisodeFull on graphql.GraphQLClient {
  void writeFragment$ContentEpisodeFull({
    required Fragment$ContentEpisodeFull data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ContentEpisodeFull',
            document: documentNodeFragmentContentEpisodeFull,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ContentEpisodeFull? readFragment$ContentEpisodeFull({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ContentEpisodeFull',
          document: documentNodeFragmentContentEpisodeFull,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ContentEpisodeFull.fromJson(result);
  }
}

class Query$FetchContentEpisodes {
  Query$FetchContentEpisodes({
    required this.contentEpisodes,
    this.$__typename = 'Query',
  });

  factory Query$FetchContentEpisodes.fromJson(Map<String, dynamic> json) {
    final l$contentEpisodes = json['contentEpisodes'];
    final l$$__typename = json['__typename'];
    return Query$FetchContentEpisodes(
      contentEpisodes: Query$FetchContentEpisodes$contentEpisodes.fromJson(
          (l$contentEpisodes as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchContentEpisodes$contentEpisodes contentEpisodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contentEpisodes = contentEpisodes;
    _resultData['contentEpisodes'] = l$contentEpisodes.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contentEpisodes = contentEpisodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contentEpisodes,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchContentEpisodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contentEpisodes = contentEpisodes;
    final lOther$contentEpisodes = other.contentEpisodes;
    if (l$contentEpisodes != lOther$contentEpisodes) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchContentEpisodes
    on Query$FetchContentEpisodes {
  CopyWith$Query$FetchContentEpisodes<Query$FetchContentEpisodes>
      get copyWith => CopyWith$Query$FetchContentEpisodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchContentEpisodes<TRes> {
  factory CopyWith$Query$FetchContentEpisodes(
    Query$FetchContentEpisodes instance,
    TRes Function(Query$FetchContentEpisodes) then,
  ) = _CopyWithImpl$Query$FetchContentEpisodes;

  factory CopyWith$Query$FetchContentEpisodes.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchContentEpisodes;

  TRes call({
    Query$FetchContentEpisodes$contentEpisodes? contentEpisodes,
    String? $__typename,
  });
  CopyWith$Query$FetchContentEpisodes$contentEpisodes<TRes> get contentEpisodes;
}

class _CopyWithImpl$Query$FetchContentEpisodes<TRes>
    implements CopyWith$Query$FetchContentEpisodes<TRes> {
  _CopyWithImpl$Query$FetchContentEpisodes(
    this._instance,
    this._then,
  );

  final Query$FetchContentEpisodes _instance;

  final TRes Function(Query$FetchContentEpisodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contentEpisodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContentEpisodes(
        contentEpisodes: contentEpisodes == _undefined ||
                contentEpisodes == null
            ? _instance.contentEpisodes
            : (contentEpisodes as Query$FetchContentEpisodes$contentEpisodes),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FetchContentEpisodes$contentEpisodes<TRes>
      get contentEpisodes {
    final local$contentEpisodes = _instance.contentEpisodes;
    return CopyWith$Query$FetchContentEpisodes$contentEpisodes(
        local$contentEpisodes, (e) => call(contentEpisodes: e));
  }
}

class _CopyWithStubImpl$Query$FetchContentEpisodes<TRes>
    implements CopyWith$Query$FetchContentEpisodes<TRes> {
  _CopyWithStubImpl$Query$FetchContentEpisodes(this._res);

  TRes _res;

  call({
    Query$FetchContentEpisodes$contentEpisodes? contentEpisodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FetchContentEpisodes$contentEpisodes<TRes>
      get contentEpisodes =>
          CopyWith$Query$FetchContentEpisodes$contentEpisodes.stub(_res);
}

const documentNodeQueryFetchContentEpisodes = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchContentEpisodes'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'contentEpisodes'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'edges'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'node'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'ContentEpisode'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'totalCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionContentEpisode,
]);
Query$FetchContentEpisodes _parserFn$Query$FetchContentEpisodes(
        Map<String, dynamic> data) =>
    Query$FetchContentEpisodes.fromJson(data);
typedef OnQueryComplete$Query$FetchContentEpisodes = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FetchContentEpisodes?,
);

class Options$Query$FetchContentEpisodes
    extends graphql.QueryOptions<Query$FetchContentEpisodes> {
  Options$Query$FetchContentEpisodes({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchContentEpisodes? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FetchContentEpisodes? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$FetchContentEpisodes(data),
                  ),
          onError: onError,
          document: documentNodeQueryFetchContentEpisodes,
          parserFn: _parserFn$Query$FetchContentEpisodes,
        );

  final OnQueryComplete$Query$FetchContentEpisodes? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FetchContentEpisodes
    extends graphql.WatchQueryOptions<Query$FetchContentEpisodes> {
  WatchOptions$Query$FetchContentEpisodes({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchContentEpisodes? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryFetchContentEpisodes,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchContentEpisodes,
        );
}

class FetchMoreOptions$Query$FetchContentEpisodes
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchContentEpisodes(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryFetchContentEpisodes,
        );
}

extension ClientExtension$Query$FetchContentEpisodes on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchContentEpisodes>>
      query$FetchContentEpisodes(
              [Options$Query$FetchContentEpisodes? options]) async =>
          await this.query(options ?? Options$Query$FetchContentEpisodes());
  graphql.ObservableQuery<Query$FetchContentEpisodes>
      watchQuery$FetchContentEpisodes(
              [WatchOptions$Query$FetchContentEpisodes? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$FetchContentEpisodes());
  void writeQuery$FetchContentEpisodes({
    required Query$FetchContentEpisodes data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryFetchContentEpisodes)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchContentEpisodes? readQuery$FetchContentEpisodes(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryFetchContentEpisodes)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchContentEpisodes.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchContentEpisodes>
    useQuery$FetchContentEpisodes(
            [Options$Query$FetchContentEpisodes? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$FetchContentEpisodes());
graphql.ObservableQuery<Query$FetchContentEpisodes>
    useWatchQuery$FetchContentEpisodes(
            [WatchOptions$Query$FetchContentEpisodes? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$FetchContentEpisodes());

class Query$FetchContentEpisodes$Widget
    extends graphql_flutter.Query<Query$FetchContentEpisodes> {
  Query$FetchContentEpisodes$Widget({
    widgets.Key? key,
    Options$Query$FetchContentEpisodes? options,
    required graphql_flutter.QueryBuilder<Query$FetchContentEpisodes> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$FetchContentEpisodes(),
          builder: builder,
        );
}

class Query$FetchContentEpisodes$contentEpisodes {
  Query$FetchContentEpisodes$contentEpisodes({
    this.edges,
    required this.totalCount,
    this.$__typename = 'ContentEpisodeConnection',
  });

  factory Query$FetchContentEpisodes$contentEpisodes.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$FetchContentEpisodes$contentEpisodes(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$FetchContentEpisodes$contentEpisodes$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      totalCount: (l$totalCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FetchContentEpisodes$contentEpisodes$edges?>? edges;

  final int totalCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$totalCount = totalCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$totalCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchContentEpisodes$contentEpisodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchContentEpisodes$contentEpisodes
    on Query$FetchContentEpisodes$contentEpisodes {
  CopyWith$Query$FetchContentEpisodes$contentEpisodes<
          Query$FetchContentEpisodes$contentEpisodes>
      get copyWith => CopyWith$Query$FetchContentEpisodes$contentEpisodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchContentEpisodes$contentEpisodes<TRes> {
  factory CopyWith$Query$FetchContentEpisodes$contentEpisodes(
    Query$FetchContentEpisodes$contentEpisodes instance,
    TRes Function(Query$FetchContentEpisodes$contentEpisodes) then,
  ) = _CopyWithImpl$Query$FetchContentEpisodes$contentEpisodes;

  factory CopyWith$Query$FetchContentEpisodes$contentEpisodes.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchContentEpisodes$contentEpisodes;

  TRes call({
    List<Query$FetchContentEpisodes$contentEpisodes$edges?>? edges,
    int? totalCount,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$FetchContentEpisodes$contentEpisodes$edges?>? Function(
              Iterable<
                  CopyWith$Query$FetchContentEpisodes$contentEpisodes$edges<
                      Query$FetchContentEpisodes$contentEpisodes$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$FetchContentEpisodes$contentEpisodes<TRes>
    implements CopyWith$Query$FetchContentEpisodes$contentEpisodes<TRes> {
  _CopyWithImpl$Query$FetchContentEpisodes$contentEpisodes(
    this._instance,
    this._then,
  );

  final Query$FetchContentEpisodes$contentEpisodes _instance;

  final TRes Function(Query$FetchContentEpisodes$contentEpisodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContentEpisodes$contentEpisodes(
        edges: edges == _undefined
            ? _instance.edges
            : (edges
                as List<Query$FetchContentEpisodes$contentEpisodes$edges?>?),
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$FetchContentEpisodes$contentEpisodes$edges?>? Function(
                  Iterable<
                      CopyWith$Query$FetchContentEpisodes$contentEpisodes$edges<
                          Query$FetchContentEpisodes$contentEpisodes$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$FetchContentEpisodes$contentEpisodes$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FetchContentEpisodes$contentEpisodes<TRes>
    implements CopyWith$Query$FetchContentEpisodes$contentEpisodes<TRes> {
  _CopyWithStubImpl$Query$FetchContentEpisodes$contentEpisodes(this._res);

  TRes _res;

  call({
    List<Query$FetchContentEpisodes$contentEpisodes$edges?>? edges,
    int? totalCount,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$FetchContentEpisodes$contentEpisodes$edges {
  Query$FetchContentEpisodes$contentEpisodes$edges({
    this.node,
    this.$__typename = 'ContentEpisodeEdge',
  });

  factory Query$FetchContentEpisodes$contentEpisodes$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$FetchContentEpisodes$contentEpisodes$edges(
      node: l$node == null
          ? null
          : Fragment$ContentEpisode.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ContentEpisode? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchContentEpisodes$contentEpisodes$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchContentEpisodes$contentEpisodes$edges
    on Query$FetchContentEpisodes$contentEpisodes$edges {
  CopyWith$Query$FetchContentEpisodes$contentEpisodes$edges<
          Query$FetchContentEpisodes$contentEpisodes$edges>
      get copyWith => CopyWith$Query$FetchContentEpisodes$contentEpisodes$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchContentEpisodes$contentEpisodes$edges<TRes> {
  factory CopyWith$Query$FetchContentEpisodes$contentEpisodes$edges(
    Query$FetchContentEpisodes$contentEpisodes$edges instance,
    TRes Function(Query$FetchContentEpisodes$contentEpisodes$edges) then,
  ) = _CopyWithImpl$Query$FetchContentEpisodes$contentEpisodes$edges;

  factory CopyWith$Query$FetchContentEpisodes$contentEpisodes$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FetchContentEpisodes$contentEpisodes$edges;

  TRes call({
    Fragment$ContentEpisode? node,
    String? $__typename,
  });
  CopyWith$Fragment$ContentEpisode<TRes> get node;
}

class _CopyWithImpl$Query$FetchContentEpisodes$contentEpisodes$edges<TRes>
    implements CopyWith$Query$FetchContentEpisodes$contentEpisodes$edges<TRes> {
  _CopyWithImpl$Query$FetchContentEpisodes$contentEpisodes$edges(
    this._instance,
    this._then,
  );

  final Query$FetchContentEpisodes$contentEpisodes$edges _instance;

  final TRes Function(Query$FetchContentEpisodes$contentEpisodes$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContentEpisodes$contentEpisodes$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Fragment$ContentEpisode?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ContentEpisode<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$ContentEpisode.stub(_then(_instance))
        : CopyWith$Fragment$ContentEpisode(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$FetchContentEpisodes$contentEpisodes$edges<TRes>
    implements CopyWith$Query$FetchContentEpisodes$contentEpisodes$edges<TRes> {
  _CopyWithStubImpl$Query$FetchContentEpisodes$contentEpisodes$edges(this._res);

  TRes _res;

  call({
    Fragment$ContentEpisode? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ContentEpisode<TRes> get node =>
      CopyWith$Fragment$ContentEpisode.stub(_res);
}

class Variables$Query$FetchContentEpisode {
  factory Variables$Query$FetchContentEpisode(
          {required String contentEpisodeId}) =>
      Variables$Query$FetchContentEpisode._({
        r'contentEpisodeId': contentEpisodeId,
      });

  Variables$Query$FetchContentEpisode._(this._$data);

  factory Variables$Query$FetchContentEpisode.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$contentEpisodeId = data['contentEpisodeId'];
    result$data['contentEpisodeId'] = (l$contentEpisodeId as String);
    return Variables$Query$FetchContentEpisode._(result$data);
  }

  Map<String, dynamic> _$data;

  String get contentEpisodeId => (_$data['contentEpisodeId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$contentEpisodeId = contentEpisodeId;
    result$data['contentEpisodeId'] = l$contentEpisodeId;
    return result$data;
  }

  CopyWith$Variables$Query$FetchContentEpisode<
          Variables$Query$FetchContentEpisode>
      get copyWith => CopyWith$Variables$Query$FetchContentEpisode(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FetchContentEpisode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contentEpisodeId = contentEpisodeId;
    final lOther$contentEpisodeId = other.contentEpisodeId;
    if (l$contentEpisodeId != lOther$contentEpisodeId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$contentEpisodeId = contentEpisodeId;
    return Object.hashAll([l$contentEpisodeId]);
  }
}

abstract class CopyWith$Variables$Query$FetchContentEpisode<TRes> {
  factory CopyWith$Variables$Query$FetchContentEpisode(
    Variables$Query$FetchContentEpisode instance,
    TRes Function(Variables$Query$FetchContentEpisode) then,
  ) = _CopyWithImpl$Variables$Query$FetchContentEpisode;

  factory CopyWith$Variables$Query$FetchContentEpisode.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FetchContentEpisode;

  TRes call({String? contentEpisodeId});
}

class _CopyWithImpl$Variables$Query$FetchContentEpisode<TRes>
    implements CopyWith$Variables$Query$FetchContentEpisode<TRes> {
  _CopyWithImpl$Variables$Query$FetchContentEpisode(
    this._instance,
    this._then,
  );

  final Variables$Query$FetchContentEpisode _instance;

  final TRes Function(Variables$Query$FetchContentEpisode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? contentEpisodeId = _undefined}) =>
      _then(Variables$Query$FetchContentEpisode._({
        ..._instance._$data,
        if (contentEpisodeId != _undefined && contentEpisodeId != null)
          'contentEpisodeId': (contentEpisodeId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$FetchContentEpisode<TRes>
    implements CopyWith$Variables$Query$FetchContentEpisode<TRes> {
  _CopyWithStubImpl$Variables$Query$FetchContentEpisode(this._res);

  TRes _res;

  call({String? contentEpisodeId}) => _res;
}

class Query$FetchContentEpisode {
  Query$FetchContentEpisode({
    this.node,
    this.$__typename = 'Query',
  });

  factory Query$FetchContentEpisode.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$FetchContentEpisode(
      node: l$node == null
          ? null
          : Query$FetchContentEpisode$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchContentEpisode$node? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchContentEpisode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchContentEpisode
    on Query$FetchContentEpisode {
  CopyWith$Query$FetchContentEpisode<Query$FetchContentEpisode> get copyWith =>
      CopyWith$Query$FetchContentEpisode(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchContentEpisode<TRes> {
  factory CopyWith$Query$FetchContentEpisode(
    Query$FetchContentEpisode instance,
    TRes Function(Query$FetchContentEpisode) then,
  ) = _CopyWithImpl$Query$FetchContentEpisode;

  factory CopyWith$Query$FetchContentEpisode.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchContentEpisode;

  TRes call({
    Query$FetchContentEpisode$node? node,
    String? $__typename,
  });
  CopyWith$Query$FetchContentEpisode$node<TRes> get node;
}

class _CopyWithImpl$Query$FetchContentEpisode<TRes>
    implements CopyWith$Query$FetchContentEpisode<TRes> {
  _CopyWithImpl$Query$FetchContentEpisode(
    this._instance,
    this._then,
  );

  final Query$FetchContentEpisode _instance;

  final TRes Function(Query$FetchContentEpisode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContentEpisode(
        node: node == _undefined
            ? _instance.node
            : (node as Query$FetchContentEpisode$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FetchContentEpisode$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$FetchContentEpisode$node.stub(_then(_instance))
        : CopyWith$Query$FetchContentEpisode$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$FetchContentEpisode<TRes>
    implements CopyWith$Query$FetchContentEpisode<TRes> {
  _CopyWithStubImpl$Query$FetchContentEpisode(this._res);

  TRes _res;

  call({
    Query$FetchContentEpisode$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FetchContentEpisode$node<TRes> get node =>
      CopyWith$Query$FetchContentEpisode$node.stub(_res);
}

const documentNodeQueryFetchContentEpisode = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchContentEpisode'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'contentEpisodeId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'node'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'contentEpisodeId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ContentEpisode'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'ContentEpisodeFull'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionContentEpisodeFull,
  fragmentDefinitionContentEpisode,
  fragmentDefinitionContent,
]);
Query$FetchContentEpisode _parserFn$Query$FetchContentEpisode(
        Map<String, dynamic> data) =>
    Query$FetchContentEpisode.fromJson(data);
typedef OnQueryComplete$Query$FetchContentEpisode = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FetchContentEpisode?,
);

class Options$Query$FetchContentEpisode
    extends graphql.QueryOptions<Query$FetchContentEpisode> {
  Options$Query$FetchContentEpisode({
    String? operationName,
    required Variables$Query$FetchContentEpisode variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchContentEpisode? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FetchContentEpisode? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$FetchContentEpisode(data),
                  ),
          onError: onError,
          document: documentNodeQueryFetchContentEpisode,
          parserFn: _parserFn$Query$FetchContentEpisode,
        );

  final OnQueryComplete$Query$FetchContentEpisode? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FetchContentEpisode
    extends graphql.WatchQueryOptions<Query$FetchContentEpisode> {
  WatchOptions$Query$FetchContentEpisode({
    String? operationName,
    required Variables$Query$FetchContentEpisode variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchContentEpisode? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryFetchContentEpisode,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchContentEpisode,
        );
}

class FetchMoreOptions$Query$FetchContentEpisode
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchContentEpisode({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$FetchContentEpisode variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryFetchContentEpisode,
        );
}

extension ClientExtension$Query$FetchContentEpisode on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchContentEpisode>>
      query$FetchContentEpisode(
              Options$Query$FetchContentEpisode options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$FetchContentEpisode>
      watchQuery$FetchContentEpisode(
              WatchOptions$Query$FetchContentEpisode options) =>
          this.watchQuery(options);
  void writeQuery$FetchContentEpisode({
    required Query$FetchContentEpisode data,
    required Variables$Query$FetchContentEpisode variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFetchContentEpisode),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchContentEpisode? readQuery$FetchContentEpisode({
    required Variables$Query$FetchContentEpisode variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryFetchContentEpisode),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchContentEpisode.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchContentEpisode>
    useQuery$FetchContentEpisode(Options$Query$FetchContentEpisode options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$FetchContentEpisode>
    useWatchQuery$FetchContentEpisode(
            WatchOptions$Query$FetchContentEpisode options) =>
        graphql_flutter.useWatchQuery(options);

class Query$FetchContentEpisode$Widget
    extends graphql_flutter.Query<Query$FetchContentEpisode> {
  Query$FetchContentEpisode$Widget({
    widgets.Key? key,
    required Options$Query$FetchContentEpisode options,
    required graphql_flutter.QueryBuilder<Query$FetchContentEpisode> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$FetchContentEpisode$node {
  Query$FetchContentEpisode$node({
    required this.id,
    required this.$__typename,
  });

  factory Query$FetchContentEpisode$node.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ContentEpisode":
        return Query$FetchContentEpisode$node$$ContentEpisode.fromJson(json);

      case "Content":
        return Query$FetchContentEpisode$node$$Content.fromJson(json);

      case "ContentProgress":
        return Query$FetchContentEpisode$node$$ContentProgress.fromJson(json);

      case "Course":
        return Query$FetchContentEpisode$node$$Course.fromJson(json);

      case "JournalRecord":
        return Query$FetchContentEpisode$node$$JournalRecord.fromJson(json);

      case "Lesson":
        return Query$FetchContentEpisode$node$$Lesson.fromJson(json);

      case "LessonAudio":
        return Query$FetchContentEpisode$node$$LessonAudio.fromJson(json);

      case "Technique":
        return Query$FetchContentEpisode$node$$Technique.fromJson(json);

      case "Unit":
        return Query$FetchContentEpisode$node$$Unit.fromJson(json);

      case "User":
        return Query$FetchContentEpisode$node$$User.fromJson(json);

      case "UserProgress":
        return Query$FetchContentEpisode$node$$UserProgress.fromJson(json);

      default:
        final l$id = json['id'];
        final l$$__typename = json['__typename'];
        return Query$FetchContentEpisode$node(
          id: (l$id as String),
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchContentEpisode$node) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchContentEpisode$node
    on Query$FetchContentEpisode$node {
  CopyWith$Query$FetchContentEpisode$node<Query$FetchContentEpisode$node>
      get copyWith => CopyWith$Query$FetchContentEpisode$node(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Query$FetchContentEpisode$node$$ContentEpisode)
        contentEpisode,
    required _T Function(Query$FetchContentEpisode$node$$Content) content,
    required _T Function(Query$FetchContentEpisode$node$$ContentProgress)
        contentProgress,
    required _T Function(Query$FetchContentEpisode$node$$Course) course,
    required _T Function(Query$FetchContentEpisode$node$$JournalRecord)
        journalRecord,
    required _T Function(Query$FetchContentEpisode$node$$Lesson) lesson,
    required _T Function(Query$FetchContentEpisode$node$$LessonAudio)
        lessonAudio,
    required _T Function(Query$FetchContentEpisode$node$$Technique) technique,
    required _T Function(Query$FetchContentEpisode$node$$Unit) unit,
    required _T Function(Query$FetchContentEpisode$node$$User) user,
    required _T Function(Query$FetchContentEpisode$node$$UserProgress)
        userProgress,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ContentEpisode":
        return contentEpisode(
            this as Query$FetchContentEpisode$node$$ContentEpisode);

      case "Content":
        return content(this as Query$FetchContentEpisode$node$$Content);

      case "ContentProgress":
        return contentProgress(
            this as Query$FetchContentEpisode$node$$ContentProgress);

      case "Course":
        return course(this as Query$FetchContentEpisode$node$$Course);

      case "JournalRecord":
        return journalRecord(
            this as Query$FetchContentEpisode$node$$JournalRecord);

      case "Lesson":
        return lesson(this as Query$FetchContentEpisode$node$$Lesson);

      case "LessonAudio":
        return lessonAudio(this as Query$FetchContentEpisode$node$$LessonAudio);

      case "Technique":
        return technique(this as Query$FetchContentEpisode$node$$Technique);

      case "Unit":
        return unit(this as Query$FetchContentEpisode$node$$Unit);

      case "User":
        return user(this as Query$FetchContentEpisode$node$$User);

      case "UserProgress":
        return userProgress(
            this as Query$FetchContentEpisode$node$$UserProgress);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$FetchContentEpisode$node$$ContentEpisode)? contentEpisode,
    _T Function(Query$FetchContentEpisode$node$$Content)? content,
    _T Function(Query$FetchContentEpisode$node$$ContentProgress)?
        contentProgress,
    _T Function(Query$FetchContentEpisode$node$$Course)? course,
    _T Function(Query$FetchContentEpisode$node$$JournalRecord)? journalRecord,
    _T Function(Query$FetchContentEpisode$node$$Lesson)? lesson,
    _T Function(Query$FetchContentEpisode$node$$LessonAudio)? lessonAudio,
    _T Function(Query$FetchContentEpisode$node$$Technique)? technique,
    _T Function(Query$FetchContentEpisode$node$$Unit)? unit,
    _T Function(Query$FetchContentEpisode$node$$User)? user,
    _T Function(Query$FetchContentEpisode$node$$UserProgress)? userProgress,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ContentEpisode":
        if (contentEpisode != null) {
          return contentEpisode(
              this as Query$FetchContentEpisode$node$$ContentEpisode);
        } else {
          return orElse();
        }

      case "Content":
        if (content != null) {
          return content(this as Query$FetchContentEpisode$node$$Content);
        } else {
          return orElse();
        }

      case "ContentProgress":
        if (contentProgress != null) {
          return contentProgress(
              this as Query$FetchContentEpisode$node$$ContentProgress);
        } else {
          return orElse();
        }

      case "Course":
        if (course != null) {
          return course(this as Query$FetchContentEpisode$node$$Course);
        } else {
          return orElse();
        }

      case "JournalRecord":
        if (journalRecord != null) {
          return journalRecord(
              this as Query$FetchContentEpisode$node$$JournalRecord);
        } else {
          return orElse();
        }

      case "Lesson":
        if (lesson != null) {
          return lesson(this as Query$FetchContentEpisode$node$$Lesson);
        } else {
          return orElse();
        }

      case "LessonAudio":
        if (lessonAudio != null) {
          return lessonAudio(
              this as Query$FetchContentEpisode$node$$LessonAudio);
        } else {
          return orElse();
        }

      case "Technique":
        if (technique != null) {
          return technique(this as Query$FetchContentEpisode$node$$Technique);
        } else {
          return orElse();
        }

      case "Unit":
        if (unit != null) {
          return unit(this as Query$FetchContentEpisode$node$$Unit);
        } else {
          return orElse();
        }

      case "User":
        if (user != null) {
          return user(this as Query$FetchContentEpisode$node$$User);
        } else {
          return orElse();
        }

      case "UserProgress":
        if (userProgress != null) {
          return userProgress(
              this as Query$FetchContentEpisode$node$$UserProgress);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$FetchContentEpisode$node<TRes> {
  factory CopyWith$Query$FetchContentEpisode$node(
    Query$FetchContentEpisode$node instance,
    TRes Function(Query$FetchContentEpisode$node) then,
  ) = _CopyWithImpl$Query$FetchContentEpisode$node;

  factory CopyWith$Query$FetchContentEpisode$node.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchContentEpisode$node;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchContentEpisode$node<TRes>
    implements CopyWith$Query$FetchContentEpisode$node<TRes> {
  _CopyWithImpl$Query$FetchContentEpisode$node(
    this._instance,
    this._then,
  );

  final Query$FetchContentEpisode$node _instance;

  final TRes Function(Query$FetchContentEpisode$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContentEpisode$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchContentEpisode$node<TRes>
    implements CopyWith$Query$FetchContentEpisode$node<TRes> {
  _CopyWithStubImpl$Query$FetchContentEpisode$node(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchContentEpisode$node$$ContentEpisode
    implements
        Fragment$ContentEpisodeFull,
        Fragment$ContentEpisode,
        Query$FetchContentEpisode$node {
  Query$FetchContentEpisode$node$$ContentEpisode({
    required this.id,
    required this.contentID,
    required this.type,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.duration,
    required this.progress,
    this.finishedAt,
    required this.streamurl,
    required this.downloadurl,
    required this.source,
    required this.sourceurl,
    required this.licence,
    required this.licenceurl,
    required this.ishidden,
    required this.order,
    this.$__typename = 'ContentEpisode',
    required this.content,
  });

  factory Query$FetchContentEpisode$node$$ContentEpisode.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$contentID = json['contentID'];
    final l$type = json['type'];
    final l$title = json['title'];
    final l$subtitle = json['subtitle'];
    final l$description = json['description'];
    final l$duration = json['duration'];
    final l$progress = json['progress'];
    final l$finishedAt = json['finishedAt'];
    final l$streamurl = json['streamurl'];
    final l$downloadurl = json['downloadurl'];
    final l$source = json['source'];
    final l$sourceurl = json['sourceurl'];
    final l$licence = json['licence'];
    final l$licenceurl = json['licenceurl'];
    final l$ishidden = json['ishidden'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    final l$content = json['content'];
    return Query$FetchContentEpisode$node$$ContentEpisode(
      id: (l$id as String),
      contentID: (l$contentID as String),
      type: fromJson$Enum$ContentEpisodeContentType((l$type as String)),
      title: (l$title as String),
      subtitle: (l$subtitle as String),
      description: (l$description as String),
      duration: (l$duration as int),
      progress: (l$progress as int),
      finishedAt: (l$finishedAt as String?),
      streamurl: (l$streamurl as String),
      downloadurl: (l$downloadurl as String),
      source: (l$source as String),
      sourceurl: (l$sourceurl as String),
      licence: (l$licence as String),
      licenceurl: (l$licenceurl as String),
      ishidden: (l$ishidden as bool),
      order: (l$order as int),
      $__typename: (l$$__typename as String),
      content: Fragment$Content.fromJson((l$content as Map<String, dynamic>)),
    );
  }

  final String id;

  final String contentID;

  final Enum$ContentEpisodeContentType type;

  final String title;

  final String subtitle;

  final String description;

  final int duration;

  final int progress;

  final String? finishedAt;

  final String streamurl;

  final String downloadurl;

  final String source;

  final String sourceurl;

  final String licence;

  final String licenceurl;

  final bool ishidden;

  final int order;

  final String $__typename;

  final Fragment$Content content;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$contentID = contentID;
    _resultData['contentID'] = l$contentID;
    final l$type = type;
    _resultData['type'] = toJson$Enum$ContentEpisodeContentType(l$type);
    final l$title = title;
    _resultData['title'] = l$title;
    final l$subtitle = subtitle;
    _resultData['subtitle'] = l$subtitle;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$finishedAt = finishedAt;
    _resultData['finishedAt'] = l$finishedAt;
    final l$streamurl = streamurl;
    _resultData['streamurl'] = l$streamurl;
    final l$downloadurl = downloadurl;
    _resultData['downloadurl'] = l$downloadurl;
    final l$source = source;
    _resultData['source'] = l$source;
    final l$sourceurl = sourceurl;
    _resultData['sourceurl'] = l$sourceurl;
    final l$licence = licence;
    _resultData['licence'] = l$licence;
    final l$licenceurl = licenceurl;
    _resultData['licenceurl'] = l$licenceurl;
    final l$ishidden = ishidden;
    _resultData['ishidden'] = l$ishidden;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$content = content;
    _resultData['content'] = l$content.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$contentID = contentID;
    final l$type = type;
    final l$title = title;
    final l$subtitle = subtitle;
    final l$description = description;
    final l$duration = duration;
    final l$progress = progress;
    final l$finishedAt = finishedAt;
    final l$streamurl = streamurl;
    final l$downloadurl = downloadurl;
    final l$source = source;
    final l$sourceurl = sourceurl;
    final l$licence = licence;
    final l$licenceurl = licenceurl;
    final l$ishidden = ishidden;
    final l$order = order;
    final l$$__typename = $__typename;
    final l$content = content;
    return Object.hashAll([
      l$id,
      l$contentID,
      l$type,
      l$title,
      l$subtitle,
      l$description,
      l$duration,
      l$progress,
      l$finishedAt,
      l$streamurl,
      l$downloadurl,
      l$source,
      l$sourceurl,
      l$licence,
      l$licenceurl,
      l$ishidden,
      l$order,
      l$$__typename,
      l$content,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchContentEpisode$node$$ContentEpisode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$contentID = contentID;
    final lOther$contentID = other.contentID;
    if (l$contentID != lOther$contentID) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$subtitle = subtitle;
    final lOther$subtitle = other.subtitle;
    if (l$subtitle != lOther$subtitle) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$finishedAt = finishedAt;
    final lOther$finishedAt = other.finishedAt;
    if (l$finishedAt != lOther$finishedAt) {
      return false;
    }
    final l$streamurl = streamurl;
    final lOther$streamurl = other.streamurl;
    if (l$streamurl != lOther$streamurl) {
      return false;
    }
    final l$downloadurl = downloadurl;
    final lOther$downloadurl = other.downloadurl;
    if (l$downloadurl != lOther$downloadurl) {
      return false;
    }
    final l$source = source;
    final lOther$source = other.source;
    if (l$source != lOther$source) {
      return false;
    }
    final l$sourceurl = sourceurl;
    final lOther$sourceurl = other.sourceurl;
    if (l$sourceurl != lOther$sourceurl) {
      return false;
    }
    final l$licence = licence;
    final lOther$licence = other.licence;
    if (l$licence != lOther$licence) {
      return false;
    }
    final l$licenceurl = licenceurl;
    final lOther$licenceurl = other.licenceurl;
    if (l$licenceurl != lOther$licenceurl) {
      return false;
    }
    final l$ishidden = ishidden;
    final lOther$ishidden = other.ishidden;
    if (l$ishidden != lOther$ishidden) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchContentEpisode$node$$ContentEpisode
    on Query$FetchContentEpisode$node$$ContentEpisode {
  CopyWith$Query$FetchContentEpisode$node$$ContentEpisode<
          Query$FetchContentEpisode$node$$ContentEpisode>
      get copyWith => CopyWith$Query$FetchContentEpisode$node$$ContentEpisode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchContentEpisode$node$$ContentEpisode<TRes> {
  factory CopyWith$Query$FetchContentEpisode$node$$ContentEpisode(
    Query$FetchContentEpisode$node$$ContentEpisode instance,
    TRes Function(Query$FetchContentEpisode$node$$ContentEpisode) then,
  ) = _CopyWithImpl$Query$FetchContentEpisode$node$$ContentEpisode;

  factory CopyWith$Query$FetchContentEpisode$node$$ContentEpisode.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FetchContentEpisode$node$$ContentEpisode;

  TRes call({
    String? id,
    String? contentID,
    Enum$ContentEpisodeContentType? type,
    String? title,
    String? subtitle,
    String? description,
    int? duration,
    int? progress,
    String? finishedAt,
    String? streamurl,
    String? downloadurl,
    String? source,
    String? sourceurl,
    String? licence,
    String? licenceurl,
    bool? ishidden,
    int? order,
    String? $__typename,
    Fragment$Content? content,
  });
  CopyWith$Fragment$Content<TRes> get content;
}

class _CopyWithImpl$Query$FetchContentEpisode$node$$ContentEpisode<TRes>
    implements CopyWith$Query$FetchContentEpisode$node$$ContentEpisode<TRes> {
  _CopyWithImpl$Query$FetchContentEpisode$node$$ContentEpisode(
    this._instance,
    this._then,
  );

  final Query$FetchContentEpisode$node$$ContentEpisode _instance;

  final TRes Function(Query$FetchContentEpisode$node$$ContentEpisode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? contentID = _undefined,
    Object? type = _undefined,
    Object? title = _undefined,
    Object? subtitle = _undefined,
    Object? description = _undefined,
    Object? duration = _undefined,
    Object? progress = _undefined,
    Object? finishedAt = _undefined,
    Object? streamurl = _undefined,
    Object? downloadurl = _undefined,
    Object? source = _undefined,
    Object? sourceurl = _undefined,
    Object? licence = _undefined,
    Object? licenceurl = _undefined,
    Object? ishidden = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
    Object? content = _undefined,
  }) =>
      _then(Query$FetchContentEpisode$node$$ContentEpisode(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        contentID: contentID == _undefined || contentID == null
            ? _instance.contentID
            : (contentID as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$ContentEpisodeContentType),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        subtitle: subtitle == _undefined || subtitle == null
            ? _instance.subtitle
            : (subtitle as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        duration: duration == _undefined || duration == null
            ? _instance.duration
            : (duration as int),
        progress: progress == _undefined || progress == null
            ? _instance.progress
            : (progress as int),
        finishedAt: finishedAt == _undefined
            ? _instance.finishedAt
            : (finishedAt as String?),
        streamurl: streamurl == _undefined || streamurl == null
            ? _instance.streamurl
            : (streamurl as String),
        downloadurl: downloadurl == _undefined || downloadurl == null
            ? _instance.downloadurl
            : (downloadurl as String),
        source: source == _undefined || source == null
            ? _instance.source
            : (source as String),
        sourceurl: sourceurl == _undefined || sourceurl == null
            ? _instance.sourceurl
            : (sourceurl as String),
        licence: licence == _undefined || licence == null
            ? _instance.licence
            : (licence as String),
        licenceurl: licenceurl == _undefined || licenceurl == null
            ? _instance.licenceurl
            : (licenceurl as String),
        ishidden: ishidden == _undefined || ishidden == null
            ? _instance.ishidden
            : (ishidden as bool),
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        content: content == _undefined || content == null
            ? _instance.content
            : (content as Fragment$Content),
      ));

  CopyWith$Fragment$Content<TRes> get content {
    final local$content = _instance.content;
    return CopyWith$Fragment$Content(local$content, (e) => call(content: e));
  }
}

class _CopyWithStubImpl$Query$FetchContentEpisode$node$$ContentEpisode<TRes>
    implements CopyWith$Query$FetchContentEpisode$node$$ContentEpisode<TRes> {
  _CopyWithStubImpl$Query$FetchContentEpisode$node$$ContentEpisode(this._res);

  TRes _res;

  call({
    String? id,
    String? contentID,
    Enum$ContentEpisodeContentType? type,
    String? title,
    String? subtitle,
    String? description,
    int? duration,
    int? progress,
    String? finishedAt,
    String? streamurl,
    String? downloadurl,
    String? source,
    String? sourceurl,
    String? licence,
    String? licenceurl,
    bool? ishidden,
    int? order,
    String? $__typename,
    Fragment$Content? content,
  }) =>
      _res;

  CopyWith$Fragment$Content<TRes> get content =>
      CopyWith$Fragment$Content.stub(_res);
}

class Query$FetchContentEpisode$node$$Content
    implements Query$FetchContentEpisode$node {
  Query$FetchContentEpisode$node$$Content({
    required this.id,
    this.$__typename = 'Content',
  });

  factory Query$FetchContentEpisode$node$$Content.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchContentEpisode$node$$Content(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchContentEpisode$node$$Content) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchContentEpisode$node$$Content
    on Query$FetchContentEpisode$node$$Content {
  CopyWith$Query$FetchContentEpisode$node$$Content<
          Query$FetchContentEpisode$node$$Content>
      get copyWith => CopyWith$Query$FetchContentEpisode$node$$Content(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchContentEpisode$node$$Content<TRes> {
  factory CopyWith$Query$FetchContentEpisode$node$$Content(
    Query$FetchContentEpisode$node$$Content instance,
    TRes Function(Query$FetchContentEpisode$node$$Content) then,
  ) = _CopyWithImpl$Query$FetchContentEpisode$node$$Content;

  factory CopyWith$Query$FetchContentEpisode$node$$Content.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchContentEpisode$node$$Content;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchContentEpisode$node$$Content<TRes>
    implements CopyWith$Query$FetchContentEpisode$node$$Content<TRes> {
  _CopyWithImpl$Query$FetchContentEpisode$node$$Content(
    this._instance,
    this._then,
  );

  final Query$FetchContentEpisode$node$$Content _instance;

  final TRes Function(Query$FetchContentEpisode$node$$Content) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContentEpisode$node$$Content(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchContentEpisode$node$$Content<TRes>
    implements CopyWith$Query$FetchContentEpisode$node$$Content<TRes> {
  _CopyWithStubImpl$Query$FetchContentEpisode$node$$Content(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchContentEpisode$node$$ContentProgress
    implements Query$FetchContentEpisode$node {
  Query$FetchContentEpisode$node$$ContentProgress({
    required this.id,
    this.$__typename = 'ContentProgress',
  });

  factory Query$FetchContentEpisode$node$$ContentProgress.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchContentEpisode$node$$ContentProgress(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchContentEpisode$node$$ContentProgress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchContentEpisode$node$$ContentProgress
    on Query$FetchContentEpisode$node$$ContentProgress {
  CopyWith$Query$FetchContentEpisode$node$$ContentProgress<
          Query$FetchContentEpisode$node$$ContentProgress>
      get copyWith => CopyWith$Query$FetchContentEpisode$node$$ContentProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchContentEpisode$node$$ContentProgress<TRes> {
  factory CopyWith$Query$FetchContentEpisode$node$$ContentProgress(
    Query$FetchContentEpisode$node$$ContentProgress instance,
    TRes Function(Query$FetchContentEpisode$node$$ContentProgress) then,
  ) = _CopyWithImpl$Query$FetchContentEpisode$node$$ContentProgress;

  factory CopyWith$Query$FetchContentEpisode$node$$ContentProgress.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FetchContentEpisode$node$$ContentProgress;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchContentEpisode$node$$ContentProgress<TRes>
    implements CopyWith$Query$FetchContentEpisode$node$$ContentProgress<TRes> {
  _CopyWithImpl$Query$FetchContentEpisode$node$$ContentProgress(
    this._instance,
    this._then,
  );

  final Query$FetchContentEpisode$node$$ContentProgress _instance;

  final TRes Function(Query$FetchContentEpisode$node$$ContentProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContentEpisode$node$$ContentProgress(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchContentEpisode$node$$ContentProgress<TRes>
    implements CopyWith$Query$FetchContentEpisode$node$$ContentProgress<TRes> {
  _CopyWithStubImpl$Query$FetchContentEpisode$node$$ContentProgress(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchContentEpisode$node$$Course
    implements Query$FetchContentEpisode$node {
  Query$FetchContentEpisode$node$$Course({
    required this.id,
    this.$__typename = 'Course',
  });

  factory Query$FetchContentEpisode$node$$Course.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchContentEpisode$node$$Course(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchContentEpisode$node$$Course) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchContentEpisode$node$$Course
    on Query$FetchContentEpisode$node$$Course {
  CopyWith$Query$FetchContentEpisode$node$$Course<
          Query$FetchContentEpisode$node$$Course>
      get copyWith => CopyWith$Query$FetchContentEpisode$node$$Course(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchContentEpisode$node$$Course<TRes> {
  factory CopyWith$Query$FetchContentEpisode$node$$Course(
    Query$FetchContentEpisode$node$$Course instance,
    TRes Function(Query$FetchContentEpisode$node$$Course) then,
  ) = _CopyWithImpl$Query$FetchContentEpisode$node$$Course;

  factory CopyWith$Query$FetchContentEpisode$node$$Course.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchContentEpisode$node$$Course;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchContentEpisode$node$$Course<TRes>
    implements CopyWith$Query$FetchContentEpisode$node$$Course<TRes> {
  _CopyWithImpl$Query$FetchContentEpisode$node$$Course(
    this._instance,
    this._then,
  );

  final Query$FetchContentEpisode$node$$Course _instance;

  final TRes Function(Query$FetchContentEpisode$node$$Course) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContentEpisode$node$$Course(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchContentEpisode$node$$Course<TRes>
    implements CopyWith$Query$FetchContentEpisode$node$$Course<TRes> {
  _CopyWithStubImpl$Query$FetchContentEpisode$node$$Course(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchContentEpisode$node$$JournalRecord
    implements Query$FetchContentEpisode$node {
  Query$FetchContentEpisode$node$$JournalRecord({
    required this.id,
    this.$__typename = 'JournalRecord',
  });

  factory Query$FetchContentEpisode$node$$JournalRecord.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchContentEpisode$node$$JournalRecord(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchContentEpisode$node$$JournalRecord) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchContentEpisode$node$$JournalRecord
    on Query$FetchContentEpisode$node$$JournalRecord {
  CopyWith$Query$FetchContentEpisode$node$$JournalRecord<
          Query$FetchContentEpisode$node$$JournalRecord>
      get copyWith => CopyWith$Query$FetchContentEpisode$node$$JournalRecord(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchContentEpisode$node$$JournalRecord<TRes> {
  factory CopyWith$Query$FetchContentEpisode$node$$JournalRecord(
    Query$FetchContentEpisode$node$$JournalRecord instance,
    TRes Function(Query$FetchContentEpisode$node$$JournalRecord) then,
  ) = _CopyWithImpl$Query$FetchContentEpisode$node$$JournalRecord;

  factory CopyWith$Query$FetchContentEpisode$node$$JournalRecord.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FetchContentEpisode$node$$JournalRecord;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchContentEpisode$node$$JournalRecord<TRes>
    implements CopyWith$Query$FetchContentEpisode$node$$JournalRecord<TRes> {
  _CopyWithImpl$Query$FetchContentEpisode$node$$JournalRecord(
    this._instance,
    this._then,
  );

  final Query$FetchContentEpisode$node$$JournalRecord _instance;

  final TRes Function(Query$FetchContentEpisode$node$$JournalRecord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContentEpisode$node$$JournalRecord(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchContentEpisode$node$$JournalRecord<TRes>
    implements CopyWith$Query$FetchContentEpisode$node$$JournalRecord<TRes> {
  _CopyWithStubImpl$Query$FetchContentEpisode$node$$JournalRecord(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchContentEpisode$node$$Lesson
    implements Query$FetchContentEpisode$node {
  Query$FetchContentEpisode$node$$Lesson({
    required this.id,
    this.$__typename = 'Lesson',
  });

  factory Query$FetchContentEpisode$node$$Lesson.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchContentEpisode$node$$Lesson(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchContentEpisode$node$$Lesson) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchContentEpisode$node$$Lesson
    on Query$FetchContentEpisode$node$$Lesson {
  CopyWith$Query$FetchContentEpisode$node$$Lesson<
          Query$FetchContentEpisode$node$$Lesson>
      get copyWith => CopyWith$Query$FetchContentEpisode$node$$Lesson(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchContentEpisode$node$$Lesson<TRes> {
  factory CopyWith$Query$FetchContentEpisode$node$$Lesson(
    Query$FetchContentEpisode$node$$Lesson instance,
    TRes Function(Query$FetchContentEpisode$node$$Lesson) then,
  ) = _CopyWithImpl$Query$FetchContentEpisode$node$$Lesson;

  factory CopyWith$Query$FetchContentEpisode$node$$Lesson.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchContentEpisode$node$$Lesson;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchContentEpisode$node$$Lesson<TRes>
    implements CopyWith$Query$FetchContentEpisode$node$$Lesson<TRes> {
  _CopyWithImpl$Query$FetchContentEpisode$node$$Lesson(
    this._instance,
    this._then,
  );

  final Query$FetchContentEpisode$node$$Lesson _instance;

  final TRes Function(Query$FetchContentEpisode$node$$Lesson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContentEpisode$node$$Lesson(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchContentEpisode$node$$Lesson<TRes>
    implements CopyWith$Query$FetchContentEpisode$node$$Lesson<TRes> {
  _CopyWithStubImpl$Query$FetchContentEpisode$node$$Lesson(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchContentEpisode$node$$LessonAudio
    implements Query$FetchContentEpisode$node {
  Query$FetchContentEpisode$node$$LessonAudio({
    required this.id,
    this.$__typename = 'LessonAudio',
  });

  factory Query$FetchContentEpisode$node$$LessonAudio.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchContentEpisode$node$$LessonAudio(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchContentEpisode$node$$LessonAudio) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchContentEpisode$node$$LessonAudio
    on Query$FetchContentEpisode$node$$LessonAudio {
  CopyWith$Query$FetchContentEpisode$node$$LessonAudio<
          Query$FetchContentEpisode$node$$LessonAudio>
      get copyWith => CopyWith$Query$FetchContentEpisode$node$$LessonAudio(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchContentEpisode$node$$LessonAudio<TRes> {
  factory CopyWith$Query$FetchContentEpisode$node$$LessonAudio(
    Query$FetchContentEpisode$node$$LessonAudio instance,
    TRes Function(Query$FetchContentEpisode$node$$LessonAudio) then,
  ) = _CopyWithImpl$Query$FetchContentEpisode$node$$LessonAudio;

  factory CopyWith$Query$FetchContentEpisode$node$$LessonAudio.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchContentEpisode$node$$LessonAudio;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchContentEpisode$node$$LessonAudio<TRes>
    implements CopyWith$Query$FetchContentEpisode$node$$LessonAudio<TRes> {
  _CopyWithImpl$Query$FetchContentEpisode$node$$LessonAudio(
    this._instance,
    this._then,
  );

  final Query$FetchContentEpisode$node$$LessonAudio _instance;

  final TRes Function(Query$FetchContentEpisode$node$$LessonAudio) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContentEpisode$node$$LessonAudio(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchContentEpisode$node$$LessonAudio<TRes>
    implements CopyWith$Query$FetchContentEpisode$node$$LessonAudio<TRes> {
  _CopyWithStubImpl$Query$FetchContentEpisode$node$$LessonAudio(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchContentEpisode$node$$Technique
    implements Query$FetchContentEpisode$node {
  Query$FetchContentEpisode$node$$Technique({
    required this.id,
    this.$__typename = 'Technique',
  });

  factory Query$FetchContentEpisode$node$$Technique.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchContentEpisode$node$$Technique(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchContentEpisode$node$$Technique) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchContentEpisode$node$$Technique
    on Query$FetchContentEpisode$node$$Technique {
  CopyWith$Query$FetchContentEpisode$node$$Technique<
          Query$FetchContentEpisode$node$$Technique>
      get copyWith => CopyWith$Query$FetchContentEpisode$node$$Technique(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchContentEpisode$node$$Technique<TRes> {
  factory CopyWith$Query$FetchContentEpisode$node$$Technique(
    Query$FetchContentEpisode$node$$Technique instance,
    TRes Function(Query$FetchContentEpisode$node$$Technique) then,
  ) = _CopyWithImpl$Query$FetchContentEpisode$node$$Technique;

  factory CopyWith$Query$FetchContentEpisode$node$$Technique.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchContentEpisode$node$$Technique;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchContentEpisode$node$$Technique<TRes>
    implements CopyWith$Query$FetchContentEpisode$node$$Technique<TRes> {
  _CopyWithImpl$Query$FetchContentEpisode$node$$Technique(
    this._instance,
    this._then,
  );

  final Query$FetchContentEpisode$node$$Technique _instance;

  final TRes Function(Query$FetchContentEpisode$node$$Technique) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContentEpisode$node$$Technique(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchContentEpisode$node$$Technique<TRes>
    implements CopyWith$Query$FetchContentEpisode$node$$Technique<TRes> {
  _CopyWithStubImpl$Query$FetchContentEpisode$node$$Technique(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchContentEpisode$node$$Unit
    implements Query$FetchContentEpisode$node {
  Query$FetchContentEpisode$node$$Unit({
    required this.id,
    this.$__typename = 'Unit',
  });

  factory Query$FetchContentEpisode$node$$Unit.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchContentEpisode$node$$Unit(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchContentEpisode$node$$Unit) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchContentEpisode$node$$Unit
    on Query$FetchContentEpisode$node$$Unit {
  CopyWith$Query$FetchContentEpisode$node$$Unit<
          Query$FetchContentEpisode$node$$Unit>
      get copyWith => CopyWith$Query$FetchContentEpisode$node$$Unit(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchContentEpisode$node$$Unit<TRes> {
  factory CopyWith$Query$FetchContentEpisode$node$$Unit(
    Query$FetchContentEpisode$node$$Unit instance,
    TRes Function(Query$FetchContentEpisode$node$$Unit) then,
  ) = _CopyWithImpl$Query$FetchContentEpisode$node$$Unit;

  factory CopyWith$Query$FetchContentEpisode$node$$Unit.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchContentEpisode$node$$Unit;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchContentEpisode$node$$Unit<TRes>
    implements CopyWith$Query$FetchContentEpisode$node$$Unit<TRes> {
  _CopyWithImpl$Query$FetchContentEpisode$node$$Unit(
    this._instance,
    this._then,
  );

  final Query$FetchContentEpisode$node$$Unit _instance;

  final TRes Function(Query$FetchContentEpisode$node$$Unit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContentEpisode$node$$Unit(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchContentEpisode$node$$Unit<TRes>
    implements CopyWith$Query$FetchContentEpisode$node$$Unit<TRes> {
  _CopyWithStubImpl$Query$FetchContentEpisode$node$$Unit(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchContentEpisode$node$$User
    implements Query$FetchContentEpisode$node {
  Query$FetchContentEpisode$node$$User({
    required this.id,
    this.$__typename = 'User',
  });

  factory Query$FetchContentEpisode$node$$User.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchContentEpisode$node$$User(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchContentEpisode$node$$User) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchContentEpisode$node$$User
    on Query$FetchContentEpisode$node$$User {
  CopyWith$Query$FetchContentEpisode$node$$User<
          Query$FetchContentEpisode$node$$User>
      get copyWith => CopyWith$Query$FetchContentEpisode$node$$User(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchContentEpisode$node$$User<TRes> {
  factory CopyWith$Query$FetchContentEpisode$node$$User(
    Query$FetchContentEpisode$node$$User instance,
    TRes Function(Query$FetchContentEpisode$node$$User) then,
  ) = _CopyWithImpl$Query$FetchContentEpisode$node$$User;

  factory CopyWith$Query$FetchContentEpisode$node$$User.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchContentEpisode$node$$User;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchContentEpisode$node$$User<TRes>
    implements CopyWith$Query$FetchContentEpisode$node$$User<TRes> {
  _CopyWithImpl$Query$FetchContentEpisode$node$$User(
    this._instance,
    this._then,
  );

  final Query$FetchContentEpisode$node$$User _instance;

  final TRes Function(Query$FetchContentEpisode$node$$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContentEpisode$node$$User(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchContentEpisode$node$$User<TRes>
    implements CopyWith$Query$FetchContentEpisode$node$$User<TRes> {
  _CopyWithStubImpl$Query$FetchContentEpisode$node$$User(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchContentEpisode$node$$UserProgress
    implements Query$FetchContentEpisode$node {
  Query$FetchContentEpisode$node$$UserProgress({
    required this.id,
    this.$__typename = 'UserProgress',
  });

  factory Query$FetchContentEpisode$node$$UserProgress.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchContentEpisode$node$$UserProgress(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchContentEpisode$node$$UserProgress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchContentEpisode$node$$UserProgress
    on Query$FetchContentEpisode$node$$UserProgress {
  CopyWith$Query$FetchContentEpisode$node$$UserProgress<
          Query$FetchContentEpisode$node$$UserProgress>
      get copyWith => CopyWith$Query$FetchContentEpisode$node$$UserProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchContentEpisode$node$$UserProgress<TRes> {
  factory CopyWith$Query$FetchContentEpisode$node$$UserProgress(
    Query$FetchContentEpisode$node$$UserProgress instance,
    TRes Function(Query$FetchContentEpisode$node$$UserProgress) then,
  ) = _CopyWithImpl$Query$FetchContentEpisode$node$$UserProgress;

  factory CopyWith$Query$FetchContentEpisode$node$$UserProgress.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchContentEpisode$node$$UserProgress;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchContentEpisode$node$$UserProgress<TRes>
    implements CopyWith$Query$FetchContentEpisode$node$$UserProgress<TRes> {
  _CopyWithImpl$Query$FetchContentEpisode$node$$UserProgress(
    this._instance,
    this._then,
  );

  final Query$FetchContentEpisode$node$$UserProgress _instance;

  final TRes Function(Query$FetchContentEpisode$node$$UserProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContentEpisode$node$$UserProgress(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchContentEpisode$node$$UserProgress<TRes>
    implements CopyWith$Query$FetchContentEpisode$node$$UserProgress<TRes> {
  _CopyWithStubImpl$Query$FetchContentEpisode$node$$UserProgress(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchActiveEpisodes {
  Query$FetchActiveEpisodes({
    required this.activeEpisodes,
    this.$__typename = 'Query',
  });

  factory Query$FetchActiveEpisodes.fromJson(Map<String, dynamic> json) {
    final l$activeEpisodes = json['activeEpisodes'];
    final l$$__typename = json['__typename'];
    return Query$FetchActiveEpisodes(
      activeEpisodes: (l$activeEpisodes as List<dynamic>)
          .map((e) =>
              Fragment$ContentEpisodeFull.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$ContentEpisodeFull> activeEpisodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$activeEpisodes = activeEpisodes;
    _resultData['activeEpisodes'] =
        l$activeEpisodes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$activeEpisodes = activeEpisodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$activeEpisodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchActiveEpisodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$activeEpisodes = activeEpisodes;
    final lOther$activeEpisodes = other.activeEpisodes;
    if (l$activeEpisodes.length != lOther$activeEpisodes.length) {
      return false;
    }
    for (int i = 0; i < l$activeEpisodes.length; i++) {
      final l$activeEpisodes$entry = l$activeEpisodes[i];
      final lOther$activeEpisodes$entry = lOther$activeEpisodes[i];
      if (l$activeEpisodes$entry != lOther$activeEpisodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchActiveEpisodes
    on Query$FetchActiveEpisodes {
  CopyWith$Query$FetchActiveEpisodes<Query$FetchActiveEpisodes> get copyWith =>
      CopyWith$Query$FetchActiveEpisodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchActiveEpisodes<TRes> {
  factory CopyWith$Query$FetchActiveEpisodes(
    Query$FetchActiveEpisodes instance,
    TRes Function(Query$FetchActiveEpisodes) then,
  ) = _CopyWithImpl$Query$FetchActiveEpisodes;

  factory CopyWith$Query$FetchActiveEpisodes.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchActiveEpisodes;

  TRes call({
    List<Fragment$ContentEpisodeFull>? activeEpisodes,
    String? $__typename,
  });
  TRes activeEpisodes(
      Iterable<Fragment$ContentEpisodeFull> Function(
              Iterable<
                  CopyWith$Fragment$ContentEpisodeFull<
                      Fragment$ContentEpisodeFull>>)
          _fn);
}

class _CopyWithImpl$Query$FetchActiveEpisodes<TRes>
    implements CopyWith$Query$FetchActiveEpisodes<TRes> {
  _CopyWithImpl$Query$FetchActiveEpisodes(
    this._instance,
    this._then,
  );

  final Query$FetchActiveEpisodes _instance;

  final TRes Function(Query$FetchActiveEpisodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? activeEpisodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchActiveEpisodes(
        activeEpisodes: activeEpisodes == _undefined || activeEpisodes == null
            ? _instance.activeEpisodes
            : (activeEpisodes as List<Fragment$ContentEpisodeFull>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes activeEpisodes(
          Iterable<Fragment$ContentEpisodeFull> Function(
                  Iterable<
                      CopyWith$Fragment$ContentEpisodeFull<
                          Fragment$ContentEpisodeFull>>)
              _fn) =>
      call(
          activeEpisodes: _fn(_instance.activeEpisodes
              .map((e) => CopyWith$Fragment$ContentEpisodeFull(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FetchActiveEpisodes<TRes>
    implements CopyWith$Query$FetchActiveEpisodes<TRes> {
  _CopyWithStubImpl$Query$FetchActiveEpisodes(this._res);

  TRes _res;

  call({
    List<Fragment$ContentEpisodeFull>? activeEpisodes,
    String? $__typename,
  }) =>
      _res;

  activeEpisodes(_fn) => _res;
}

const documentNodeQueryFetchActiveEpisodes = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchActiveEpisodes'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'activeEpisodes'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'ContentEpisodeFull'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionContentEpisodeFull,
  fragmentDefinitionContentEpisode,
  fragmentDefinitionContent,
]);
Query$FetchActiveEpisodes _parserFn$Query$FetchActiveEpisodes(
        Map<String, dynamic> data) =>
    Query$FetchActiveEpisodes.fromJson(data);
typedef OnQueryComplete$Query$FetchActiveEpisodes = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FetchActiveEpisodes?,
);

class Options$Query$FetchActiveEpisodes
    extends graphql.QueryOptions<Query$FetchActiveEpisodes> {
  Options$Query$FetchActiveEpisodes({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchActiveEpisodes? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FetchActiveEpisodes? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$FetchActiveEpisodes(data),
                  ),
          onError: onError,
          document: documentNodeQueryFetchActiveEpisodes,
          parserFn: _parserFn$Query$FetchActiveEpisodes,
        );

  final OnQueryComplete$Query$FetchActiveEpisodes? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FetchActiveEpisodes
    extends graphql.WatchQueryOptions<Query$FetchActiveEpisodes> {
  WatchOptions$Query$FetchActiveEpisodes({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchActiveEpisodes? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryFetchActiveEpisodes,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchActiveEpisodes,
        );
}

class FetchMoreOptions$Query$FetchActiveEpisodes
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchActiveEpisodes(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryFetchActiveEpisodes,
        );
}

extension ClientExtension$Query$FetchActiveEpisodes on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchActiveEpisodes>>
      query$FetchActiveEpisodes(
              [Options$Query$FetchActiveEpisodes? options]) async =>
          await this.query(options ?? Options$Query$FetchActiveEpisodes());
  graphql.ObservableQuery<Query$FetchActiveEpisodes>
      watchQuery$FetchActiveEpisodes(
              [WatchOptions$Query$FetchActiveEpisodes? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$FetchActiveEpisodes());
  void writeQuery$FetchActiveEpisodes({
    required Query$FetchActiveEpisodes data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryFetchActiveEpisodes)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchActiveEpisodes? readQuery$FetchActiveEpisodes(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryFetchActiveEpisodes)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchActiveEpisodes.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchActiveEpisodes>
    useQuery$FetchActiveEpisodes(
            [Options$Query$FetchActiveEpisodes? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$FetchActiveEpisodes());
graphql.ObservableQuery<Query$FetchActiveEpisodes>
    useWatchQuery$FetchActiveEpisodes(
            [WatchOptions$Query$FetchActiveEpisodes? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$FetchActiveEpisodes());

class Query$FetchActiveEpisodes$Widget
    extends graphql_flutter.Query<Query$FetchActiveEpisodes> {
  Query$FetchActiveEpisodes$Widget({
    widgets.Key? key,
    Options$Query$FetchActiveEpisodes? options,
    required graphql_flutter.QueryBuilder<Query$FetchActiveEpisodes> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$FetchActiveEpisodes(),
          builder: builder,
        );
}

class Variables$Query$FetchActiveEpisode {
  factory Variables$Query$FetchActiveEpisode({required String contentId}) =>
      Variables$Query$FetchActiveEpisode._({
        r'contentId': contentId,
      });

  Variables$Query$FetchActiveEpisode._(this._$data);

  factory Variables$Query$FetchActiveEpisode.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$contentId = data['contentId'];
    result$data['contentId'] = (l$contentId as String);
    return Variables$Query$FetchActiveEpisode._(result$data);
  }

  Map<String, dynamic> _$data;

  String get contentId => (_$data['contentId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$contentId = contentId;
    result$data['contentId'] = l$contentId;
    return result$data;
  }

  CopyWith$Variables$Query$FetchActiveEpisode<
          Variables$Query$FetchActiveEpisode>
      get copyWith => CopyWith$Variables$Query$FetchActiveEpisode(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FetchActiveEpisode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contentId = contentId;
    final lOther$contentId = other.contentId;
    if (l$contentId != lOther$contentId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$contentId = contentId;
    return Object.hashAll([l$contentId]);
  }
}

abstract class CopyWith$Variables$Query$FetchActiveEpisode<TRes> {
  factory CopyWith$Variables$Query$FetchActiveEpisode(
    Variables$Query$FetchActiveEpisode instance,
    TRes Function(Variables$Query$FetchActiveEpisode) then,
  ) = _CopyWithImpl$Variables$Query$FetchActiveEpisode;

  factory CopyWith$Variables$Query$FetchActiveEpisode.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FetchActiveEpisode;

  TRes call({String? contentId});
}

class _CopyWithImpl$Variables$Query$FetchActiveEpisode<TRes>
    implements CopyWith$Variables$Query$FetchActiveEpisode<TRes> {
  _CopyWithImpl$Variables$Query$FetchActiveEpisode(
    this._instance,
    this._then,
  );

  final Variables$Query$FetchActiveEpisode _instance;

  final TRes Function(Variables$Query$FetchActiveEpisode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? contentId = _undefined}) =>
      _then(Variables$Query$FetchActiveEpisode._({
        ..._instance._$data,
        if (contentId != _undefined && contentId != null)
          'contentId': (contentId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$FetchActiveEpisode<TRes>
    implements CopyWith$Variables$Query$FetchActiveEpisode<TRes> {
  _CopyWithStubImpl$Variables$Query$FetchActiveEpisode(this._res);

  TRes _res;

  call({String? contentId}) => _res;
}

class Query$FetchActiveEpisode {
  Query$FetchActiveEpisode({
    this.activeEpisode,
    this.$__typename = 'Query',
  });

  factory Query$FetchActiveEpisode.fromJson(Map<String, dynamic> json) {
    final l$activeEpisode = json['activeEpisode'];
    final l$$__typename = json['__typename'];
    return Query$FetchActiveEpisode(
      activeEpisode: l$activeEpisode == null
          ? null
          : Fragment$ContentEpisodeFull.fromJson(
              (l$activeEpisode as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ContentEpisodeFull? activeEpisode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$activeEpisode = activeEpisode;
    _resultData['activeEpisode'] = l$activeEpisode?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$activeEpisode = activeEpisode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$activeEpisode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchActiveEpisode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$activeEpisode = activeEpisode;
    final lOther$activeEpisode = other.activeEpisode;
    if (l$activeEpisode != lOther$activeEpisode) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchActiveEpisode
    on Query$FetchActiveEpisode {
  CopyWith$Query$FetchActiveEpisode<Query$FetchActiveEpisode> get copyWith =>
      CopyWith$Query$FetchActiveEpisode(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchActiveEpisode<TRes> {
  factory CopyWith$Query$FetchActiveEpisode(
    Query$FetchActiveEpisode instance,
    TRes Function(Query$FetchActiveEpisode) then,
  ) = _CopyWithImpl$Query$FetchActiveEpisode;

  factory CopyWith$Query$FetchActiveEpisode.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchActiveEpisode;

  TRes call({
    Fragment$ContentEpisodeFull? activeEpisode,
    String? $__typename,
  });
  CopyWith$Fragment$ContentEpisodeFull<TRes> get activeEpisode;
}

class _CopyWithImpl$Query$FetchActiveEpisode<TRes>
    implements CopyWith$Query$FetchActiveEpisode<TRes> {
  _CopyWithImpl$Query$FetchActiveEpisode(
    this._instance,
    this._then,
  );

  final Query$FetchActiveEpisode _instance;

  final TRes Function(Query$FetchActiveEpisode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? activeEpisode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchActiveEpisode(
        activeEpisode: activeEpisode == _undefined
            ? _instance.activeEpisode
            : (activeEpisode as Fragment$ContentEpisodeFull?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ContentEpisodeFull<TRes> get activeEpisode {
    final local$activeEpisode = _instance.activeEpisode;
    return local$activeEpisode == null
        ? CopyWith$Fragment$ContentEpisodeFull.stub(_then(_instance))
        : CopyWith$Fragment$ContentEpisodeFull(
            local$activeEpisode, (e) => call(activeEpisode: e));
  }
}

class _CopyWithStubImpl$Query$FetchActiveEpisode<TRes>
    implements CopyWith$Query$FetchActiveEpisode<TRes> {
  _CopyWithStubImpl$Query$FetchActiveEpisode(this._res);

  TRes _res;

  call({
    Fragment$ContentEpisodeFull? activeEpisode,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ContentEpisodeFull<TRes> get activeEpisode =>
      CopyWith$Fragment$ContentEpisodeFull.stub(_res);
}

const documentNodeQueryFetchActiveEpisode = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchActiveEpisode'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'contentId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'activeEpisode'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'contentId'),
            value: VariableNode(name: NameNode(value: 'contentId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'ContentEpisodeFull'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionContentEpisodeFull,
  fragmentDefinitionContentEpisode,
  fragmentDefinitionContent,
]);
Query$FetchActiveEpisode _parserFn$Query$FetchActiveEpisode(
        Map<String, dynamic> data) =>
    Query$FetchActiveEpisode.fromJson(data);
typedef OnQueryComplete$Query$FetchActiveEpisode = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FetchActiveEpisode?,
);

class Options$Query$FetchActiveEpisode
    extends graphql.QueryOptions<Query$FetchActiveEpisode> {
  Options$Query$FetchActiveEpisode({
    String? operationName,
    required Variables$Query$FetchActiveEpisode variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchActiveEpisode? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FetchActiveEpisode? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$FetchActiveEpisode(data),
                  ),
          onError: onError,
          document: documentNodeQueryFetchActiveEpisode,
          parserFn: _parserFn$Query$FetchActiveEpisode,
        );

  final OnQueryComplete$Query$FetchActiveEpisode? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FetchActiveEpisode
    extends graphql.WatchQueryOptions<Query$FetchActiveEpisode> {
  WatchOptions$Query$FetchActiveEpisode({
    String? operationName,
    required Variables$Query$FetchActiveEpisode variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchActiveEpisode? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryFetchActiveEpisode,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchActiveEpisode,
        );
}

class FetchMoreOptions$Query$FetchActiveEpisode
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchActiveEpisode({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$FetchActiveEpisode variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryFetchActiveEpisode,
        );
}

extension ClientExtension$Query$FetchActiveEpisode on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchActiveEpisode>>
      query$FetchActiveEpisode(
              Options$Query$FetchActiveEpisode options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$FetchActiveEpisode>
      watchQuery$FetchActiveEpisode(
              WatchOptions$Query$FetchActiveEpisode options) =>
          this.watchQuery(options);
  void writeQuery$FetchActiveEpisode({
    required Query$FetchActiveEpisode data,
    required Variables$Query$FetchActiveEpisode variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFetchActiveEpisode),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchActiveEpisode? readQuery$FetchActiveEpisode({
    required Variables$Query$FetchActiveEpisode variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryFetchActiveEpisode),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchActiveEpisode.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchActiveEpisode>
    useQuery$FetchActiveEpisode(Options$Query$FetchActiveEpisode options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$FetchActiveEpisode>
    useWatchQuery$FetchActiveEpisode(
            WatchOptions$Query$FetchActiveEpisode options) =>
        graphql_flutter.useWatchQuery(options);

class Query$FetchActiveEpisode$Widget
    extends graphql_flutter.Query<Query$FetchActiveEpisode> {
  Query$FetchActiveEpisode$Widget({
    widgets.Key? key,
    required Options$Query$FetchActiveEpisode options,
    required graphql_flutter.QueryBuilder<Query$FetchActiveEpisode> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Variables$Mutation$SaveContentEpisodeProgress {
  factory Variables$Mutation$SaveContentEpisodeProgress({
    required String id,
    required Input$SaveContentEpisodeProgressInput input,
  }) =>
      Variables$Mutation$SaveContentEpisodeProgress._({
        r'id': id,
        r'input': input,
      });

  Variables$Mutation$SaveContentEpisodeProgress._(this._$data);

  factory Variables$Mutation$SaveContentEpisodeProgress.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$input = data['input'];
    result$data['input'] = Input$SaveContentEpisodeProgressInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$SaveContentEpisodeProgress._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$SaveContentEpisodeProgressInput get input =>
      (_$data['input'] as Input$SaveContentEpisodeProgressInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SaveContentEpisodeProgress<
          Variables$Mutation$SaveContentEpisodeProgress>
      get copyWith => CopyWith$Variables$Mutation$SaveContentEpisodeProgress(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SaveContentEpisodeProgress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$input = input;
    return Object.hashAll([
      l$id,
      l$input,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SaveContentEpisodeProgress<TRes> {
  factory CopyWith$Variables$Mutation$SaveContentEpisodeProgress(
    Variables$Mutation$SaveContentEpisodeProgress instance,
    TRes Function(Variables$Mutation$SaveContentEpisodeProgress) then,
  ) = _CopyWithImpl$Variables$Mutation$SaveContentEpisodeProgress;

  factory CopyWith$Variables$Mutation$SaveContentEpisodeProgress.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SaveContentEpisodeProgress;

  TRes call({
    String? id,
    Input$SaveContentEpisodeProgressInput? input,
  });
}

class _CopyWithImpl$Variables$Mutation$SaveContentEpisodeProgress<TRes>
    implements CopyWith$Variables$Mutation$SaveContentEpisodeProgress<TRes> {
  _CopyWithImpl$Variables$Mutation$SaveContentEpisodeProgress(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SaveContentEpisodeProgress _instance;

  final TRes Function(Variables$Mutation$SaveContentEpisodeProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Mutation$SaveContentEpisodeProgress._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (input != _undefined && input != null)
          'input': (input as Input$SaveContentEpisodeProgressInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SaveContentEpisodeProgress<TRes>
    implements CopyWith$Variables$Mutation$SaveContentEpisodeProgress<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SaveContentEpisodeProgress(this._res);

  TRes _res;

  call({
    String? id,
    Input$SaveContentEpisodeProgressInput? input,
  }) =>
      _res;
}

class Mutation$SaveContentEpisodeProgress {
  Mutation$SaveContentEpisodeProgress({
    required this.success,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SaveContentEpisodeProgress.fromJson(
      Map<String, dynamic> json) {
    final l$success = json['success'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveContentEpisodeProgress(
      success: (l$success as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool success;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$success = success;
    _resultData['success'] = l$success;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$success = success;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$success,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SaveContentEpisodeProgress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SaveContentEpisodeProgress
    on Mutation$SaveContentEpisodeProgress {
  CopyWith$Mutation$SaveContentEpisodeProgress<
          Mutation$SaveContentEpisodeProgress>
      get copyWith => CopyWith$Mutation$SaveContentEpisodeProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SaveContentEpisodeProgress<TRes> {
  factory CopyWith$Mutation$SaveContentEpisodeProgress(
    Mutation$SaveContentEpisodeProgress instance,
    TRes Function(Mutation$SaveContentEpisodeProgress) then,
  ) = _CopyWithImpl$Mutation$SaveContentEpisodeProgress;

  factory CopyWith$Mutation$SaveContentEpisodeProgress.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveContentEpisodeProgress;

  TRes call({
    bool? success,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SaveContentEpisodeProgress<TRes>
    implements CopyWith$Mutation$SaveContentEpisodeProgress<TRes> {
  _CopyWithImpl$Mutation$SaveContentEpisodeProgress(
    this._instance,
    this._then,
  );

  final Mutation$SaveContentEpisodeProgress _instance;

  final TRes Function(Mutation$SaveContentEpisodeProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SaveContentEpisodeProgress(
        success: success == _undefined || success == null
            ? _instance.success
            : (success as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SaveContentEpisodeProgress<TRes>
    implements CopyWith$Mutation$SaveContentEpisodeProgress<TRes> {
  _CopyWithStubImpl$Mutation$SaveContentEpisodeProgress(this._res);

  TRes _res;

  call({
    bool? success,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationSaveContentEpisodeProgress =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SaveContentEpisodeProgress'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'SaveContentEpisodeProgressInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'saveContentEpisodeProgress'),
        alias: NameNode(value: 'success'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          ),
        ],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$SaveContentEpisodeProgress
    _parserFn$Mutation$SaveContentEpisodeProgress(Map<String, dynamic> data) =>
        Mutation$SaveContentEpisodeProgress.fromJson(data);
typedef OnMutationCompleted$Mutation$SaveContentEpisodeProgress = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$SaveContentEpisodeProgress?,
);

class Options$Mutation$SaveContentEpisodeProgress
    extends graphql.MutationOptions<Mutation$SaveContentEpisodeProgress> {
  Options$Mutation$SaveContentEpisodeProgress({
    String? operationName,
    required Variables$Mutation$SaveContentEpisodeProgress variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SaveContentEpisodeProgress? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SaveContentEpisodeProgress? onCompleted,
    graphql.OnMutationUpdate<Mutation$SaveContentEpisodeProgress>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$SaveContentEpisodeProgress(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSaveContentEpisodeProgress,
          parserFn: _parserFn$Mutation$SaveContentEpisodeProgress,
        );

  final OnMutationCompleted$Mutation$SaveContentEpisodeProgress?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SaveContentEpisodeProgress
    extends graphql.WatchQueryOptions<Mutation$SaveContentEpisodeProgress> {
  WatchOptions$Mutation$SaveContentEpisodeProgress({
    String? operationName,
    required Variables$Mutation$SaveContentEpisodeProgress variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SaveContentEpisodeProgress? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationSaveContentEpisodeProgress,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SaveContentEpisodeProgress,
        );
}

extension ClientExtension$Mutation$SaveContentEpisodeProgress
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SaveContentEpisodeProgress>>
      mutate$SaveContentEpisodeProgress(
              Options$Mutation$SaveContentEpisodeProgress options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$SaveContentEpisodeProgress>
      watchMutation$SaveContentEpisodeProgress(
              WatchOptions$Mutation$SaveContentEpisodeProgress options) =>
          this.watchMutation(options);
}

class Mutation$SaveContentEpisodeProgress$HookResult {
  Mutation$SaveContentEpisodeProgress$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$SaveContentEpisodeProgress runMutation;

  final graphql.QueryResult<Mutation$SaveContentEpisodeProgress> result;
}

Mutation$SaveContentEpisodeProgress$HookResult
    useMutation$SaveContentEpisodeProgress(
        [WidgetOptions$Mutation$SaveContentEpisodeProgress? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$SaveContentEpisodeProgress());
  return Mutation$SaveContentEpisodeProgress$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SaveContentEpisodeProgress>
    useWatchMutation$SaveContentEpisodeProgress(
            WatchOptions$Mutation$SaveContentEpisodeProgress options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$SaveContentEpisodeProgress
    extends graphql.MutationOptions<Mutation$SaveContentEpisodeProgress> {
  WidgetOptions$Mutation$SaveContentEpisodeProgress({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SaveContentEpisodeProgress? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SaveContentEpisodeProgress? onCompleted,
    graphql.OnMutationUpdate<Mutation$SaveContentEpisodeProgress>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$SaveContentEpisodeProgress(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSaveContentEpisodeProgress,
          parserFn: _parserFn$Mutation$SaveContentEpisodeProgress,
        );

  final OnMutationCompleted$Mutation$SaveContentEpisodeProgress?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$SaveContentEpisodeProgress
    = graphql.MultiSourceResult<Mutation$SaveContentEpisodeProgress> Function(
  Variables$Mutation$SaveContentEpisodeProgress, {
  Object? optimisticResult,
  Mutation$SaveContentEpisodeProgress? typedOptimisticResult,
});
typedef Builder$Mutation$SaveContentEpisodeProgress = widgets.Widget Function(
  RunMutation$Mutation$SaveContentEpisodeProgress,
  graphql.QueryResult<Mutation$SaveContentEpisodeProgress>?,
);

class Mutation$SaveContentEpisodeProgress$Widget
    extends graphql_flutter.Mutation<Mutation$SaveContentEpisodeProgress> {
  Mutation$SaveContentEpisodeProgress$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SaveContentEpisodeProgress? options,
    required Builder$Mutation$SaveContentEpisodeProgress builder,
  }) : super(
          key: key,
          options:
              options ?? WidgetOptions$Mutation$SaveContentEpisodeProgress(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Variables$Mutation$ResetContentEpisodeProgress {
  factory Variables$Mutation$ResetContentEpisodeProgress({
    required String id,
    required Input$ResetContentEpisodeProgressInput input,
  }) =>
      Variables$Mutation$ResetContentEpisodeProgress._({
        r'id': id,
        r'input': input,
      });

  Variables$Mutation$ResetContentEpisodeProgress._(this._$data);

  factory Variables$Mutation$ResetContentEpisodeProgress.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$input = data['input'];
    result$data['input'] = Input$ResetContentEpisodeProgressInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$ResetContentEpisodeProgress._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$ResetContentEpisodeProgressInput get input =>
      (_$data['input'] as Input$ResetContentEpisodeProgressInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$ResetContentEpisodeProgress<
          Variables$Mutation$ResetContentEpisodeProgress>
      get copyWith => CopyWith$Variables$Mutation$ResetContentEpisodeProgress(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$ResetContentEpisodeProgress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$input = input;
    return Object.hashAll([
      l$id,
      l$input,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$ResetContentEpisodeProgress<TRes> {
  factory CopyWith$Variables$Mutation$ResetContentEpisodeProgress(
    Variables$Mutation$ResetContentEpisodeProgress instance,
    TRes Function(Variables$Mutation$ResetContentEpisodeProgress) then,
  ) = _CopyWithImpl$Variables$Mutation$ResetContentEpisodeProgress;

  factory CopyWith$Variables$Mutation$ResetContentEpisodeProgress.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ResetContentEpisodeProgress;

  TRes call({
    String? id,
    Input$ResetContentEpisodeProgressInput? input,
  });
}

class _CopyWithImpl$Variables$Mutation$ResetContentEpisodeProgress<TRes>
    implements CopyWith$Variables$Mutation$ResetContentEpisodeProgress<TRes> {
  _CopyWithImpl$Variables$Mutation$ResetContentEpisodeProgress(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ResetContentEpisodeProgress _instance;

  final TRes Function(Variables$Mutation$ResetContentEpisodeProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Mutation$ResetContentEpisodeProgress._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (input != _undefined && input != null)
          'input': (input as Input$ResetContentEpisodeProgressInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ResetContentEpisodeProgress<TRes>
    implements CopyWith$Variables$Mutation$ResetContentEpisodeProgress<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ResetContentEpisodeProgress(this._res);

  TRes _res;

  call({
    String? id,
    Input$ResetContentEpisodeProgressInput? input,
  }) =>
      _res;
}

class Mutation$ResetContentEpisodeProgress {
  Mutation$ResetContentEpisodeProgress({
    required this.resetContentEpisodeProgress,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ResetContentEpisodeProgress.fromJson(
      Map<String, dynamic> json) {
    final l$resetContentEpisodeProgress = json['resetContentEpisodeProgress'];
    final l$$__typename = json['__typename'];
    return Mutation$ResetContentEpisodeProgress(
      resetContentEpisodeProgress: Fragment$ContentEpisodeFull.fromJson(
          (l$resetContentEpisodeProgress as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ContentEpisodeFull resetContentEpisodeProgress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$resetContentEpisodeProgress = resetContentEpisodeProgress;
    _resultData['resetContentEpisodeProgress'] =
        l$resetContentEpisodeProgress.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$resetContentEpisodeProgress = resetContentEpisodeProgress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$resetContentEpisodeProgress,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ResetContentEpisodeProgress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$resetContentEpisodeProgress = resetContentEpisodeProgress;
    final lOther$resetContentEpisodeProgress =
        other.resetContentEpisodeProgress;
    if (l$resetContentEpisodeProgress != lOther$resetContentEpisodeProgress) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$ResetContentEpisodeProgress
    on Mutation$ResetContentEpisodeProgress {
  CopyWith$Mutation$ResetContentEpisodeProgress<
          Mutation$ResetContentEpisodeProgress>
      get copyWith => CopyWith$Mutation$ResetContentEpisodeProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ResetContentEpisodeProgress<TRes> {
  factory CopyWith$Mutation$ResetContentEpisodeProgress(
    Mutation$ResetContentEpisodeProgress instance,
    TRes Function(Mutation$ResetContentEpisodeProgress) then,
  ) = _CopyWithImpl$Mutation$ResetContentEpisodeProgress;

  factory CopyWith$Mutation$ResetContentEpisodeProgress.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ResetContentEpisodeProgress;

  TRes call({
    Fragment$ContentEpisodeFull? resetContentEpisodeProgress,
    String? $__typename,
  });
  CopyWith$Fragment$ContentEpisodeFull<TRes> get resetContentEpisodeProgress;
}

class _CopyWithImpl$Mutation$ResetContentEpisodeProgress<TRes>
    implements CopyWith$Mutation$ResetContentEpisodeProgress<TRes> {
  _CopyWithImpl$Mutation$ResetContentEpisodeProgress(
    this._instance,
    this._then,
  );

  final Mutation$ResetContentEpisodeProgress _instance;

  final TRes Function(Mutation$ResetContentEpisodeProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? resetContentEpisodeProgress = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ResetContentEpisodeProgress(
        resetContentEpisodeProgress:
            resetContentEpisodeProgress == _undefined ||
                    resetContentEpisodeProgress == null
                ? _instance.resetContentEpisodeProgress
                : (resetContentEpisodeProgress as Fragment$ContentEpisodeFull),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ContentEpisodeFull<TRes> get resetContentEpisodeProgress {
    final local$resetContentEpisodeProgress =
        _instance.resetContentEpisodeProgress;
    return CopyWith$Fragment$ContentEpisodeFull(
        local$resetContentEpisodeProgress,
        (e) => call(resetContentEpisodeProgress: e));
  }
}

class _CopyWithStubImpl$Mutation$ResetContentEpisodeProgress<TRes>
    implements CopyWith$Mutation$ResetContentEpisodeProgress<TRes> {
  _CopyWithStubImpl$Mutation$ResetContentEpisodeProgress(this._res);

  TRes _res;

  call({
    Fragment$ContentEpisodeFull? resetContentEpisodeProgress,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ContentEpisodeFull<TRes> get resetContentEpisodeProgress =>
      CopyWith$Fragment$ContentEpisodeFull.stub(_res);
}

const documentNodeMutationResetContentEpisodeProgress =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ResetContentEpisodeProgress'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'ResetContentEpisodeProgressInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'resetContentEpisodeProgress'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'ContentEpisodeFull'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionContentEpisodeFull,
  fragmentDefinitionContentEpisode,
  fragmentDefinitionContent,
]);
Mutation$ResetContentEpisodeProgress
    _parserFn$Mutation$ResetContentEpisodeProgress(Map<String, dynamic> data) =>
        Mutation$ResetContentEpisodeProgress.fromJson(data);
typedef OnMutationCompleted$Mutation$ResetContentEpisodeProgress
    = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$ResetContentEpisodeProgress?,
);

class Options$Mutation$ResetContentEpisodeProgress
    extends graphql.MutationOptions<Mutation$ResetContentEpisodeProgress> {
  Options$Mutation$ResetContentEpisodeProgress({
    String? operationName,
    required Variables$Mutation$ResetContentEpisodeProgress variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ResetContentEpisodeProgress? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ResetContentEpisodeProgress? onCompleted,
    graphql.OnMutationUpdate<Mutation$ResetContentEpisodeProgress>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$ResetContentEpisodeProgress(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationResetContentEpisodeProgress,
          parserFn: _parserFn$Mutation$ResetContentEpisodeProgress,
        );

  final OnMutationCompleted$Mutation$ResetContentEpisodeProgress?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ResetContentEpisodeProgress
    extends graphql.WatchQueryOptions<Mutation$ResetContentEpisodeProgress> {
  WatchOptions$Mutation$ResetContentEpisodeProgress({
    String? operationName,
    required Variables$Mutation$ResetContentEpisodeProgress variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ResetContentEpisodeProgress? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationResetContentEpisodeProgress,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ResetContentEpisodeProgress,
        );
}

extension ClientExtension$Mutation$ResetContentEpisodeProgress
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ResetContentEpisodeProgress>>
      mutate$ResetContentEpisodeProgress(
              Options$Mutation$ResetContentEpisodeProgress options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$ResetContentEpisodeProgress>
      watchMutation$ResetContentEpisodeProgress(
              WatchOptions$Mutation$ResetContentEpisodeProgress options) =>
          this.watchMutation(options);
}

class Mutation$ResetContentEpisodeProgress$HookResult {
  Mutation$ResetContentEpisodeProgress$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$ResetContentEpisodeProgress runMutation;

  final graphql.QueryResult<Mutation$ResetContentEpisodeProgress> result;
}

Mutation$ResetContentEpisodeProgress$HookResult
    useMutation$ResetContentEpisodeProgress(
        [WidgetOptions$Mutation$ResetContentEpisodeProgress? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$ResetContentEpisodeProgress());
  return Mutation$ResetContentEpisodeProgress$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ResetContentEpisodeProgress>
    useWatchMutation$ResetContentEpisodeProgress(
            WatchOptions$Mutation$ResetContentEpisodeProgress options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ResetContentEpisodeProgress
    extends graphql.MutationOptions<Mutation$ResetContentEpisodeProgress> {
  WidgetOptions$Mutation$ResetContentEpisodeProgress({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ResetContentEpisodeProgress? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ResetContentEpisodeProgress? onCompleted,
    graphql.OnMutationUpdate<Mutation$ResetContentEpisodeProgress>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$ResetContentEpisodeProgress(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationResetContentEpisodeProgress,
          parserFn: _parserFn$Mutation$ResetContentEpisodeProgress,
        );

  final OnMutationCompleted$Mutation$ResetContentEpisodeProgress?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$ResetContentEpisodeProgress
    = graphql.MultiSourceResult<Mutation$ResetContentEpisodeProgress> Function(
  Variables$Mutation$ResetContentEpisodeProgress, {
  Object? optimisticResult,
  Mutation$ResetContentEpisodeProgress? typedOptimisticResult,
});
typedef Builder$Mutation$ResetContentEpisodeProgress = widgets.Widget Function(
  RunMutation$Mutation$ResetContentEpisodeProgress,
  graphql.QueryResult<Mutation$ResetContentEpisodeProgress>?,
);

class Mutation$ResetContentEpisodeProgress$Widget
    extends graphql_flutter.Mutation<Mutation$ResetContentEpisodeProgress> {
  Mutation$ResetContentEpisodeProgress$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ResetContentEpisodeProgress? options,
    required Builder$Mutation$ResetContentEpisodeProgress builder,
  }) : super(
          key: key,
          options:
              options ?? WidgetOptions$Mutation$ResetContentEpisodeProgress(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Variables$Mutation$FinishContentEpisode {
  factory Variables$Mutation$FinishContentEpisode({
    required String id,
    required Input$FinishContentEpisodeInput input,
  }) =>
      Variables$Mutation$FinishContentEpisode._({
        r'id': id,
        r'input': input,
      });

  Variables$Mutation$FinishContentEpisode._(this._$data);

  factory Variables$Mutation$FinishContentEpisode.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$input = data['input'];
    result$data['input'] = Input$FinishContentEpisodeInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$FinishContentEpisode._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$FinishContentEpisodeInput get input =>
      (_$data['input'] as Input$FinishContentEpisodeInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$FinishContentEpisode<
          Variables$Mutation$FinishContentEpisode>
      get copyWith => CopyWith$Variables$Mutation$FinishContentEpisode(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$FinishContentEpisode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$input = input;
    return Object.hashAll([
      l$id,
      l$input,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$FinishContentEpisode<TRes> {
  factory CopyWith$Variables$Mutation$FinishContentEpisode(
    Variables$Mutation$FinishContentEpisode instance,
    TRes Function(Variables$Mutation$FinishContentEpisode) then,
  ) = _CopyWithImpl$Variables$Mutation$FinishContentEpisode;

  factory CopyWith$Variables$Mutation$FinishContentEpisode.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$FinishContentEpisode;

  TRes call({
    String? id,
    Input$FinishContentEpisodeInput? input,
  });
}

class _CopyWithImpl$Variables$Mutation$FinishContentEpisode<TRes>
    implements CopyWith$Variables$Mutation$FinishContentEpisode<TRes> {
  _CopyWithImpl$Variables$Mutation$FinishContentEpisode(
    this._instance,
    this._then,
  );

  final Variables$Mutation$FinishContentEpisode _instance;

  final TRes Function(Variables$Mutation$FinishContentEpisode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Mutation$FinishContentEpisode._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (input != _undefined && input != null)
          'input': (input as Input$FinishContentEpisodeInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$FinishContentEpisode<TRes>
    implements CopyWith$Variables$Mutation$FinishContentEpisode<TRes> {
  _CopyWithStubImpl$Variables$Mutation$FinishContentEpisode(this._res);

  TRes _res;

  call({
    String? id,
    Input$FinishContentEpisodeInput? input,
  }) =>
      _res;
}

class Mutation$FinishContentEpisode {
  Mutation$FinishContentEpisode({
    required this.finishContentEpisode,
    this.$__typename = 'Mutation',
  });

  factory Mutation$FinishContentEpisode.fromJson(Map<String, dynamic> json) {
    final l$finishContentEpisode = json['finishContentEpisode'];
    final l$$__typename = json['__typename'];
    return Mutation$FinishContentEpisode(
      finishContentEpisode:
          Mutation$FinishContentEpisode$finishContentEpisode.fromJson(
              (l$finishContentEpisode as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$FinishContentEpisode$finishContentEpisode finishContentEpisode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$finishContentEpisode = finishContentEpisode;
    _resultData['finishContentEpisode'] = l$finishContentEpisode.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$finishContentEpisode = finishContentEpisode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$finishContentEpisode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$FinishContentEpisode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$finishContentEpisode = finishContentEpisode;
    final lOther$finishContentEpisode = other.finishContentEpisode;
    if (l$finishContentEpisode != lOther$finishContentEpisode) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$FinishContentEpisode
    on Mutation$FinishContentEpisode {
  CopyWith$Mutation$FinishContentEpisode<Mutation$FinishContentEpisode>
      get copyWith => CopyWith$Mutation$FinishContentEpisode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$FinishContentEpisode<TRes> {
  factory CopyWith$Mutation$FinishContentEpisode(
    Mutation$FinishContentEpisode instance,
    TRes Function(Mutation$FinishContentEpisode) then,
  ) = _CopyWithImpl$Mutation$FinishContentEpisode;

  factory CopyWith$Mutation$FinishContentEpisode.stub(TRes res) =
      _CopyWithStubImpl$Mutation$FinishContentEpisode;

  TRes call({
    Mutation$FinishContentEpisode$finishContentEpisode? finishContentEpisode,
    String? $__typename,
  });
  CopyWith$Mutation$FinishContentEpisode$finishContentEpisode<TRes>
      get finishContentEpisode;
}

class _CopyWithImpl$Mutation$FinishContentEpisode<TRes>
    implements CopyWith$Mutation$FinishContentEpisode<TRes> {
  _CopyWithImpl$Mutation$FinishContentEpisode(
    this._instance,
    this._then,
  );

  final Mutation$FinishContentEpisode _instance;

  final TRes Function(Mutation$FinishContentEpisode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? finishContentEpisode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$FinishContentEpisode(
        finishContentEpisode:
            finishContentEpisode == _undefined || finishContentEpisode == null
                ? _instance.finishContentEpisode
                : (finishContentEpisode
                    as Mutation$FinishContentEpisode$finishContentEpisode),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$FinishContentEpisode$finishContentEpisode<TRes>
      get finishContentEpisode {
    final local$finishContentEpisode = _instance.finishContentEpisode;
    return CopyWith$Mutation$FinishContentEpisode$finishContentEpisode(
        local$finishContentEpisode, (e) => call(finishContentEpisode: e));
  }
}

class _CopyWithStubImpl$Mutation$FinishContentEpisode<TRes>
    implements CopyWith$Mutation$FinishContentEpisode<TRes> {
  _CopyWithStubImpl$Mutation$FinishContentEpisode(this._res);

  TRes _res;

  call({
    Mutation$FinishContentEpisode$finishContentEpisode? finishContentEpisode,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$FinishContentEpisode$finishContentEpisode<TRes>
      get finishContentEpisode =>
          CopyWith$Mutation$FinishContentEpisode$finishContentEpisode.stub(
              _res);
}

const documentNodeMutationFinishContentEpisode = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'FinishContentEpisode'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'FinishContentEpisodeInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'finishContentEpisode'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'episode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'ContentEpisodeFull'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'nextEpisode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'ContentEpisodeFull'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionContentEpisodeFull,
  fragmentDefinitionContentEpisode,
  fragmentDefinitionContent,
]);
Mutation$FinishContentEpisode _parserFn$Mutation$FinishContentEpisode(
        Map<String, dynamic> data) =>
    Mutation$FinishContentEpisode.fromJson(data);
typedef OnMutationCompleted$Mutation$FinishContentEpisode = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$FinishContentEpisode?,
);

class Options$Mutation$FinishContentEpisode
    extends graphql.MutationOptions<Mutation$FinishContentEpisode> {
  Options$Mutation$FinishContentEpisode({
    String? operationName,
    required Variables$Mutation$FinishContentEpisode variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$FinishContentEpisode? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$FinishContentEpisode? onCompleted,
    graphql.OnMutationUpdate<Mutation$FinishContentEpisode>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$FinishContentEpisode(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationFinishContentEpisode,
          parserFn: _parserFn$Mutation$FinishContentEpisode,
        );

  final OnMutationCompleted$Mutation$FinishContentEpisode?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$FinishContentEpisode
    extends graphql.WatchQueryOptions<Mutation$FinishContentEpisode> {
  WatchOptions$Mutation$FinishContentEpisode({
    String? operationName,
    required Variables$Mutation$FinishContentEpisode variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$FinishContentEpisode? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationFinishContentEpisode,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$FinishContentEpisode,
        );
}

extension ClientExtension$Mutation$FinishContentEpisode
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$FinishContentEpisode>>
      mutate$FinishContentEpisode(
              Options$Mutation$FinishContentEpisode options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$FinishContentEpisode>
      watchMutation$FinishContentEpisode(
              WatchOptions$Mutation$FinishContentEpisode options) =>
          this.watchMutation(options);
}

class Mutation$FinishContentEpisode$HookResult {
  Mutation$FinishContentEpisode$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$FinishContentEpisode runMutation;

  final graphql.QueryResult<Mutation$FinishContentEpisode> result;
}

Mutation$FinishContentEpisode$HookResult useMutation$FinishContentEpisode(
    [WidgetOptions$Mutation$FinishContentEpisode? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$FinishContentEpisode());
  return Mutation$FinishContentEpisode$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$FinishContentEpisode>
    useWatchMutation$FinishContentEpisode(
            WatchOptions$Mutation$FinishContentEpisode options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$FinishContentEpisode
    extends graphql.MutationOptions<Mutation$FinishContentEpisode> {
  WidgetOptions$Mutation$FinishContentEpisode({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$FinishContentEpisode? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$FinishContentEpisode? onCompleted,
    graphql.OnMutationUpdate<Mutation$FinishContentEpisode>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$FinishContentEpisode(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationFinishContentEpisode,
          parserFn: _parserFn$Mutation$FinishContentEpisode,
        );

  final OnMutationCompleted$Mutation$FinishContentEpisode?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$FinishContentEpisode
    = graphql.MultiSourceResult<Mutation$FinishContentEpisode> Function(
  Variables$Mutation$FinishContentEpisode, {
  Object? optimisticResult,
  Mutation$FinishContentEpisode? typedOptimisticResult,
});
typedef Builder$Mutation$FinishContentEpisode = widgets.Widget Function(
  RunMutation$Mutation$FinishContentEpisode,
  graphql.QueryResult<Mutation$FinishContentEpisode>?,
);

class Mutation$FinishContentEpisode$Widget
    extends graphql_flutter.Mutation<Mutation$FinishContentEpisode> {
  Mutation$FinishContentEpisode$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$FinishContentEpisode? options,
    required Builder$Mutation$FinishContentEpisode builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$FinishContentEpisode(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$FinishContentEpisode$finishContentEpisode {
  Mutation$FinishContentEpisode$finishContentEpisode({
    required this.episode,
    this.nextEpisode,
    this.$__typename = 'FinishContentEpisodeResult',
  });

  factory Mutation$FinishContentEpisode$finishContentEpisode.fromJson(
      Map<String, dynamic> json) {
    final l$episode = json['episode'];
    final l$nextEpisode = json['nextEpisode'];
    final l$$__typename = json['__typename'];
    return Mutation$FinishContentEpisode$finishContentEpisode(
      episode: Fragment$ContentEpisodeFull.fromJson(
          (l$episode as Map<String, dynamic>)),
      nextEpisode: l$nextEpisode == null
          ? null
          : Fragment$ContentEpisodeFull.fromJson(
              (l$nextEpisode as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ContentEpisodeFull episode;

  final Fragment$ContentEpisodeFull? nextEpisode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$episode = episode;
    _resultData['episode'] = l$episode.toJson();
    final l$nextEpisode = nextEpisode;
    _resultData['nextEpisode'] = l$nextEpisode?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$episode = episode;
    final l$nextEpisode = nextEpisode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$episode,
      l$nextEpisode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$FinishContentEpisode$finishContentEpisode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != lOther$episode) {
      return false;
    }
    final l$nextEpisode = nextEpisode;
    final lOther$nextEpisode = other.nextEpisode;
    if (l$nextEpisode != lOther$nextEpisode) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$FinishContentEpisode$finishContentEpisode
    on Mutation$FinishContentEpisode$finishContentEpisode {
  CopyWith$Mutation$FinishContentEpisode$finishContentEpisode<
          Mutation$FinishContentEpisode$finishContentEpisode>
      get copyWith =>
          CopyWith$Mutation$FinishContentEpisode$finishContentEpisode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$FinishContentEpisode$finishContentEpisode<
    TRes> {
  factory CopyWith$Mutation$FinishContentEpisode$finishContentEpisode(
    Mutation$FinishContentEpisode$finishContentEpisode instance,
    TRes Function(Mutation$FinishContentEpisode$finishContentEpisode) then,
  ) = _CopyWithImpl$Mutation$FinishContentEpisode$finishContentEpisode;

  factory CopyWith$Mutation$FinishContentEpisode$finishContentEpisode.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$FinishContentEpisode$finishContentEpisode;

  TRes call({
    Fragment$ContentEpisodeFull? episode,
    Fragment$ContentEpisodeFull? nextEpisode,
    String? $__typename,
  });
  CopyWith$Fragment$ContentEpisodeFull<TRes> get episode;
  CopyWith$Fragment$ContentEpisodeFull<TRes> get nextEpisode;
}

class _CopyWithImpl$Mutation$FinishContentEpisode$finishContentEpisode<TRes>
    implements
        CopyWith$Mutation$FinishContentEpisode$finishContentEpisode<TRes> {
  _CopyWithImpl$Mutation$FinishContentEpisode$finishContentEpisode(
    this._instance,
    this._then,
  );

  final Mutation$FinishContentEpisode$finishContentEpisode _instance;

  final TRes Function(Mutation$FinishContentEpisode$finishContentEpisode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? episode = _undefined,
    Object? nextEpisode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$FinishContentEpisode$finishContentEpisode(
        episode: episode == _undefined || episode == null
            ? _instance.episode
            : (episode as Fragment$ContentEpisodeFull),
        nextEpisode: nextEpisode == _undefined
            ? _instance.nextEpisode
            : (nextEpisode as Fragment$ContentEpisodeFull?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ContentEpisodeFull<TRes> get episode {
    final local$episode = _instance.episode;
    return CopyWith$Fragment$ContentEpisodeFull(
        local$episode, (e) => call(episode: e));
  }

  CopyWith$Fragment$ContentEpisodeFull<TRes> get nextEpisode {
    final local$nextEpisode = _instance.nextEpisode;
    return local$nextEpisode == null
        ? CopyWith$Fragment$ContentEpisodeFull.stub(_then(_instance))
        : CopyWith$Fragment$ContentEpisodeFull(
            local$nextEpisode, (e) => call(nextEpisode: e));
  }
}

class _CopyWithStubImpl$Mutation$FinishContentEpisode$finishContentEpisode<TRes>
    implements
        CopyWith$Mutation$FinishContentEpisode$finishContentEpisode<TRes> {
  _CopyWithStubImpl$Mutation$FinishContentEpisode$finishContentEpisode(
      this._res);

  TRes _res;

  call({
    Fragment$ContentEpisodeFull? episode,
    Fragment$ContentEpisodeFull? nextEpisode,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ContentEpisodeFull<TRes> get episode =>
      CopyWith$Fragment$ContentEpisodeFull.stub(_res);

  CopyWith$Fragment$ContentEpisodeFull<TRes> get nextEpisode =>
      CopyWith$Fragment$ContentEpisodeFull.stub(_res);
}

class Variables$Mutation$DownloadContentEpisode {
  factory Variables$Mutation$DownloadContentEpisode({
    required String id,
    required Input$DownloadContentEpisodeInput input,
  }) =>
      Variables$Mutation$DownloadContentEpisode._({
        r'id': id,
        r'input': input,
      });

  Variables$Mutation$DownloadContentEpisode._(this._$data);

  factory Variables$Mutation$DownloadContentEpisode.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$input = data['input'];
    result$data['input'] = Input$DownloadContentEpisodeInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$DownloadContentEpisode._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$DownloadContentEpisodeInput get input =>
      (_$data['input'] as Input$DownloadContentEpisodeInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$DownloadContentEpisode<
          Variables$Mutation$DownloadContentEpisode>
      get copyWith => CopyWith$Variables$Mutation$DownloadContentEpisode(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DownloadContentEpisode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$input = input;
    return Object.hashAll([
      l$id,
      l$input,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$DownloadContentEpisode<TRes> {
  factory CopyWith$Variables$Mutation$DownloadContentEpisode(
    Variables$Mutation$DownloadContentEpisode instance,
    TRes Function(Variables$Mutation$DownloadContentEpisode) then,
  ) = _CopyWithImpl$Variables$Mutation$DownloadContentEpisode;

  factory CopyWith$Variables$Mutation$DownloadContentEpisode.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DownloadContentEpisode;

  TRes call({
    String? id,
    Input$DownloadContentEpisodeInput? input,
  });
}

class _CopyWithImpl$Variables$Mutation$DownloadContentEpisode<TRes>
    implements CopyWith$Variables$Mutation$DownloadContentEpisode<TRes> {
  _CopyWithImpl$Variables$Mutation$DownloadContentEpisode(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DownloadContentEpisode _instance;

  final TRes Function(Variables$Mutation$DownloadContentEpisode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Mutation$DownloadContentEpisode._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (input != _undefined && input != null)
          'input': (input as Input$DownloadContentEpisodeInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DownloadContentEpisode<TRes>
    implements CopyWith$Variables$Mutation$DownloadContentEpisode<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DownloadContentEpisode(this._res);

  TRes _res;

  call({
    String? id,
    Input$DownloadContentEpisodeInput? input,
  }) =>
      _res;
}

class Mutation$DownloadContentEpisode {
  Mutation$DownloadContentEpisode({
    required this.downloadContentEpisode,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DownloadContentEpisode.fromJson(Map<String, dynamic> json) {
    final l$downloadContentEpisode = json['downloadContentEpisode'];
    final l$$__typename = json['__typename'];
    return Mutation$DownloadContentEpisode(
      downloadContentEpisode:
          Mutation$DownloadContentEpisode$downloadContentEpisode.fromJson(
              (l$downloadContentEpisode as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DownloadContentEpisode$downloadContentEpisode
      downloadContentEpisode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$downloadContentEpisode = downloadContentEpisode;
    _resultData['downloadContentEpisode'] = l$downloadContentEpisode.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$downloadContentEpisode = downloadContentEpisode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$downloadContentEpisode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DownloadContentEpisode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$downloadContentEpisode = downloadContentEpisode;
    final lOther$downloadContentEpisode = other.downloadContentEpisode;
    if (l$downloadContentEpisode != lOther$downloadContentEpisode) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DownloadContentEpisode
    on Mutation$DownloadContentEpisode {
  CopyWith$Mutation$DownloadContentEpisode<Mutation$DownloadContentEpisode>
      get copyWith => CopyWith$Mutation$DownloadContentEpisode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DownloadContentEpisode<TRes> {
  factory CopyWith$Mutation$DownloadContentEpisode(
    Mutation$DownloadContentEpisode instance,
    TRes Function(Mutation$DownloadContentEpisode) then,
  ) = _CopyWithImpl$Mutation$DownloadContentEpisode;

  factory CopyWith$Mutation$DownloadContentEpisode.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DownloadContentEpisode;

  TRes call({
    Mutation$DownloadContentEpisode$downloadContentEpisode?
        downloadContentEpisode,
    String? $__typename,
  });
  CopyWith$Mutation$DownloadContentEpisode$downloadContentEpisode<TRes>
      get downloadContentEpisode;
}

class _CopyWithImpl$Mutation$DownloadContentEpisode<TRes>
    implements CopyWith$Mutation$DownloadContentEpisode<TRes> {
  _CopyWithImpl$Mutation$DownloadContentEpisode(
    this._instance,
    this._then,
  );

  final Mutation$DownloadContentEpisode _instance;

  final TRes Function(Mutation$DownloadContentEpisode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? downloadContentEpisode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DownloadContentEpisode(
        downloadContentEpisode: downloadContentEpisode == _undefined ||
                downloadContentEpisode == null
            ? _instance.downloadContentEpisode
            : (downloadContentEpisode
                as Mutation$DownloadContentEpisode$downloadContentEpisode),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DownloadContentEpisode$downloadContentEpisode<TRes>
      get downloadContentEpisode {
    final local$downloadContentEpisode = _instance.downloadContentEpisode;
    return CopyWith$Mutation$DownloadContentEpisode$downloadContentEpisode(
        local$downloadContentEpisode, (e) => call(downloadContentEpisode: e));
  }
}

class _CopyWithStubImpl$Mutation$DownloadContentEpisode<TRes>
    implements CopyWith$Mutation$DownloadContentEpisode<TRes> {
  _CopyWithStubImpl$Mutation$DownloadContentEpisode(this._res);

  TRes _res;

  call({
    Mutation$DownloadContentEpisode$downloadContentEpisode?
        downloadContentEpisode,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DownloadContentEpisode$downloadContentEpisode<TRes>
      get downloadContentEpisode =>
          CopyWith$Mutation$DownloadContentEpisode$downloadContentEpisode.stub(
              _res);
}

const documentNodeMutationDownloadContentEpisode = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DownloadContentEpisode'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'DownloadContentEpisodeInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'downloadContentEpisode'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'success'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$DownloadContentEpisode _parserFn$Mutation$DownloadContentEpisode(
        Map<String, dynamic> data) =>
    Mutation$DownloadContentEpisode.fromJson(data);
typedef OnMutationCompleted$Mutation$DownloadContentEpisode = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$DownloadContentEpisode?,
);

class Options$Mutation$DownloadContentEpisode
    extends graphql.MutationOptions<Mutation$DownloadContentEpisode> {
  Options$Mutation$DownloadContentEpisode({
    String? operationName,
    required Variables$Mutation$DownloadContentEpisode variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DownloadContentEpisode? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DownloadContentEpisode? onCompleted,
    graphql.OnMutationUpdate<Mutation$DownloadContentEpisode>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DownloadContentEpisode(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDownloadContentEpisode,
          parserFn: _parserFn$Mutation$DownloadContentEpisode,
        );

  final OnMutationCompleted$Mutation$DownloadContentEpisode?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DownloadContentEpisode
    extends graphql.WatchQueryOptions<Mutation$DownloadContentEpisode> {
  WatchOptions$Mutation$DownloadContentEpisode({
    String? operationName,
    required Variables$Mutation$DownloadContentEpisode variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DownloadContentEpisode? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationDownloadContentEpisode,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DownloadContentEpisode,
        );
}

extension ClientExtension$Mutation$DownloadContentEpisode
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DownloadContentEpisode>>
      mutate$DownloadContentEpisode(
              Options$Mutation$DownloadContentEpisode options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$DownloadContentEpisode>
      watchMutation$DownloadContentEpisode(
              WatchOptions$Mutation$DownloadContentEpisode options) =>
          this.watchMutation(options);
}

class Mutation$DownloadContentEpisode$HookResult {
  Mutation$DownloadContentEpisode$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DownloadContentEpisode runMutation;

  final graphql.QueryResult<Mutation$DownloadContentEpisode> result;
}

Mutation$DownloadContentEpisode$HookResult useMutation$DownloadContentEpisode(
    [WidgetOptions$Mutation$DownloadContentEpisode? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DownloadContentEpisode());
  return Mutation$DownloadContentEpisode$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DownloadContentEpisode>
    useWatchMutation$DownloadContentEpisode(
            WatchOptions$Mutation$DownloadContentEpisode options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DownloadContentEpisode
    extends graphql.MutationOptions<Mutation$DownloadContentEpisode> {
  WidgetOptions$Mutation$DownloadContentEpisode({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DownloadContentEpisode? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DownloadContentEpisode? onCompleted,
    graphql.OnMutationUpdate<Mutation$DownloadContentEpisode>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DownloadContentEpisode(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDownloadContentEpisode,
          parserFn: _parserFn$Mutation$DownloadContentEpisode,
        );

  final OnMutationCompleted$Mutation$DownloadContentEpisode?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DownloadContentEpisode
    = graphql.MultiSourceResult<Mutation$DownloadContentEpisode> Function(
  Variables$Mutation$DownloadContentEpisode, {
  Object? optimisticResult,
  Mutation$DownloadContentEpisode? typedOptimisticResult,
});
typedef Builder$Mutation$DownloadContentEpisode = widgets.Widget Function(
  RunMutation$Mutation$DownloadContentEpisode,
  graphql.QueryResult<Mutation$DownloadContentEpisode>?,
);

class Mutation$DownloadContentEpisode$Widget
    extends graphql_flutter.Mutation<Mutation$DownloadContentEpisode> {
  Mutation$DownloadContentEpisode$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DownloadContentEpisode? options,
    required Builder$Mutation$DownloadContentEpisode builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DownloadContentEpisode(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$DownloadContentEpisode$downloadContentEpisode {
  Mutation$DownloadContentEpisode$downloadContentEpisode({
    required this.success,
    this.$__typename = 'DownloadContentEpisodeResult',
  });

  factory Mutation$DownloadContentEpisode$downloadContentEpisode.fromJson(
      Map<String, dynamic> json) {
    final l$success = json['success'];
    final l$$__typename = json['__typename'];
    return Mutation$DownloadContentEpisode$downloadContentEpisode(
      success: (l$success as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool success;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$success = success;
    _resultData['success'] = l$success;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$success = success;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$success,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DownloadContentEpisode$downloadContentEpisode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DownloadContentEpisode$downloadContentEpisode
    on Mutation$DownloadContentEpisode$downloadContentEpisode {
  CopyWith$Mutation$DownloadContentEpisode$downloadContentEpisode<
          Mutation$DownloadContentEpisode$downloadContentEpisode>
      get copyWith =>
          CopyWith$Mutation$DownloadContentEpisode$downloadContentEpisode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DownloadContentEpisode$downloadContentEpisode<
    TRes> {
  factory CopyWith$Mutation$DownloadContentEpisode$downloadContentEpisode(
    Mutation$DownloadContentEpisode$downloadContentEpisode instance,
    TRes Function(Mutation$DownloadContentEpisode$downloadContentEpisode) then,
  ) = _CopyWithImpl$Mutation$DownloadContentEpisode$downloadContentEpisode;

  factory CopyWith$Mutation$DownloadContentEpisode$downloadContentEpisode.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DownloadContentEpisode$downloadContentEpisode;

  TRes call({
    bool? success,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DownloadContentEpisode$downloadContentEpisode<TRes>
    implements
        CopyWith$Mutation$DownloadContentEpisode$downloadContentEpisode<TRes> {
  _CopyWithImpl$Mutation$DownloadContentEpisode$downloadContentEpisode(
    this._instance,
    this._then,
  );

  final Mutation$DownloadContentEpisode$downloadContentEpisode _instance;

  final TRes Function(Mutation$DownloadContentEpisode$downloadContentEpisode)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DownloadContentEpisode$downloadContentEpisode(
        success: success == _undefined || success == null
            ? _instance.success
            : (success as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DownloadContentEpisode$downloadContentEpisode<
        TRes>
    implements
        CopyWith$Mutation$DownloadContentEpisode$downloadContentEpisode<TRes> {
  _CopyWithStubImpl$Mutation$DownloadContentEpisode$downloadContentEpisode(
      this._res);

  TRes _res;

  call({
    bool? success,
    String? $__typename,
  }) =>
      _res;
}
