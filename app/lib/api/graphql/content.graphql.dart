// GENERATED FILE, DO NOT MODIFY
import 'content_episode.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Fragment$Content {
  Fragment$Content({
    required this.id,
    required this.type,
    required this.iconimage,
    required this.coverimage,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.source,
    required this.sourceurl,
    required this.licence,
    required this.licenceurl,
    required this.ishidden,
    required this.order,
    required this.episodescount,
    this.singleEpisode,
    this.$__typename = 'Content',
  });

  factory Fragment$Content.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$iconimage = json['iconimage'];
    final l$coverimage = json['coverimage'];
    final l$title = json['title'];
    final l$subtitle = json['subtitle'];
    final l$description = json['description'];
    final l$source = json['source'];
    final l$sourceurl = json['sourceurl'];
    final l$licence = json['licence'];
    final l$licenceurl = json['licenceurl'];
    final l$ishidden = json['ishidden'];
    final l$order = json['order'];
    final l$episodescount = json['episodescount'];
    final l$singleEpisode = json['singleEpisode'];
    final l$$__typename = json['__typename'];
    return Fragment$Content(
      id: (l$id as String),
      type: fromJson$Enum$ContentContentType((l$type as String)),
      iconimage: (l$iconimage as String),
      coverimage: (l$coverimage as String),
      title: (l$title as String),
      subtitle: (l$subtitle as String),
      description: (l$description as String),
      source: (l$source as String),
      sourceurl: (l$sourceurl as String),
      licence: (l$licence as String),
      licenceurl: (l$licenceurl as String),
      ishidden: (l$ishidden as bool),
      order: (l$order as int),
      episodescount: (l$episodescount as int),
      singleEpisode: l$singleEpisode == null
          ? null
          : Fragment$ContentEpisode.fromJson(
              (l$singleEpisode as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Enum$ContentContentType type;

  final String iconimage;

  final String coverimage;

  final String title;

  final String subtitle;

  final String description;

  final String source;

  final String sourceurl;

  final String licence;

  final String licenceurl;

  final bool ishidden;

  final int order;

  final int episodescount;

  final Fragment$ContentEpisode? singleEpisode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = toJson$Enum$ContentContentType(l$type);
    final l$iconimage = iconimage;
    _resultData['iconimage'] = l$iconimage;
    final l$coverimage = coverimage;
    _resultData['coverimage'] = l$coverimage;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$subtitle = subtitle;
    _resultData['subtitle'] = l$subtitle;
    final l$description = description;
    _resultData['description'] = l$description;
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
    final l$episodescount = episodescount;
    _resultData['episodescount'] = l$episodescount;
    final l$singleEpisode = singleEpisode;
    _resultData['singleEpisode'] = l$singleEpisode?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$iconimage = iconimage;
    final l$coverimage = coverimage;
    final l$title = title;
    final l$subtitle = subtitle;
    final l$description = description;
    final l$source = source;
    final l$sourceurl = sourceurl;
    final l$licence = licence;
    final l$licenceurl = licenceurl;
    final l$ishidden = ishidden;
    final l$order = order;
    final l$episodescount = episodescount;
    final l$singleEpisode = singleEpisode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$iconimage,
      l$coverimage,
      l$title,
      l$subtitle,
      l$description,
      l$source,
      l$sourceurl,
      l$licence,
      l$licenceurl,
      l$ishidden,
      l$order,
      l$episodescount,
      l$singleEpisode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Content) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$iconimage = iconimage;
    final lOther$iconimage = other.iconimage;
    if (l$iconimage != lOther$iconimage) {
      return false;
    }
    final l$coverimage = coverimage;
    final lOther$coverimage = other.coverimage;
    if (l$coverimage != lOther$coverimage) {
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
    final l$episodescount = episodescount;
    final lOther$episodescount = other.episodescount;
    if (l$episodescount != lOther$episodescount) {
      return false;
    }
    final l$singleEpisode = singleEpisode;
    final lOther$singleEpisode = other.singleEpisode;
    if (l$singleEpisode != lOther$singleEpisode) {
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

extension UtilityExtension$Fragment$Content on Fragment$Content {
  CopyWith$Fragment$Content<Fragment$Content> get copyWith =>
      CopyWith$Fragment$Content(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Content<TRes> {
  factory CopyWith$Fragment$Content(
    Fragment$Content instance,
    TRes Function(Fragment$Content) then,
  ) = _CopyWithImpl$Fragment$Content;

  factory CopyWith$Fragment$Content.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Content;

  TRes call({
    String? id,
    Enum$ContentContentType? type,
    String? iconimage,
    String? coverimage,
    String? title,
    String? subtitle,
    String? description,
    String? source,
    String? sourceurl,
    String? licence,
    String? licenceurl,
    bool? ishidden,
    int? order,
    int? episodescount,
    Fragment$ContentEpisode? singleEpisode,
    String? $__typename,
  });
  CopyWith$Fragment$ContentEpisode<TRes> get singleEpisode;
}

class _CopyWithImpl$Fragment$Content<TRes>
    implements CopyWith$Fragment$Content<TRes> {
  _CopyWithImpl$Fragment$Content(
    this._instance,
    this._then,
  );

  final Fragment$Content _instance;

  final TRes Function(Fragment$Content) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? iconimage = _undefined,
    Object? coverimage = _undefined,
    Object? title = _undefined,
    Object? subtitle = _undefined,
    Object? description = _undefined,
    Object? source = _undefined,
    Object? sourceurl = _undefined,
    Object? licence = _undefined,
    Object? licenceurl = _undefined,
    Object? ishidden = _undefined,
    Object? order = _undefined,
    Object? episodescount = _undefined,
    Object? singleEpisode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Content(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$ContentContentType),
        iconimage: iconimage == _undefined || iconimage == null
            ? _instance.iconimage
            : (iconimage as String),
        coverimage: coverimage == _undefined || coverimage == null
            ? _instance.coverimage
            : (coverimage as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        subtitle: subtitle == _undefined || subtitle == null
            ? _instance.subtitle
            : (subtitle as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
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
        episodescount: episodescount == _undefined || episodescount == null
            ? _instance.episodescount
            : (episodescount as int),
        singleEpisode: singleEpisode == _undefined
            ? _instance.singleEpisode
            : (singleEpisode as Fragment$ContentEpisode?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ContentEpisode<TRes> get singleEpisode {
    final local$singleEpisode = _instance.singleEpisode;
    return local$singleEpisode == null
        ? CopyWith$Fragment$ContentEpisode.stub(_then(_instance))
        : CopyWith$Fragment$ContentEpisode(
            local$singleEpisode, (e) => call(singleEpisode: e));
  }
}

class _CopyWithStubImpl$Fragment$Content<TRes>
    implements CopyWith$Fragment$Content<TRes> {
  _CopyWithStubImpl$Fragment$Content(this._res);

  TRes _res;

  call({
    String? id,
    Enum$ContentContentType? type,
    String? iconimage,
    String? coverimage,
    String? title,
    String? subtitle,
    String? description,
    String? source,
    String? sourceurl,
    String? licence,
    String? licenceurl,
    bool? ishidden,
    int? order,
    int? episodescount,
    Fragment$ContentEpisode? singleEpisode,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ContentEpisode<TRes> get singleEpisode =>
      CopyWith$Fragment$ContentEpisode.stub(_res);
}

const fragmentDefinitionContent = FragmentDefinitionNode(
  name: NameNode(value: 'Content'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Content'),
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
      name: NameNode(value: 'type'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'iconimage'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'coverimage'),
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
      name: NameNode(value: 'episodescount'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'singleEpisode'),
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
);
const documentNodeFragmentContent = DocumentNode(definitions: [
  fragmentDefinitionContent,
  fragmentDefinitionContentEpisode,
]);

extension ClientExtension$Fragment$Content on graphql.GraphQLClient {
  void writeFragment$Content({
    required Fragment$Content data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Content',
            document: documentNodeFragmentContent,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Content? readFragment$Content({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Content',
          document: documentNodeFragmentContent,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Content.fromJson(result);
  }
}

class Fragment$ContentFull implements Fragment$Content {
  Fragment$ContentFull({
    required this.id,
    required this.type,
    required this.iconimage,
    required this.coverimage,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.source,
    required this.sourceurl,
    required this.licence,
    required this.licenceurl,
    required this.ishidden,
    required this.order,
    required this.episodescount,
    this.singleEpisode,
    this.$__typename = 'Content',
    required this.episodesList,
  });

  factory Fragment$ContentFull.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$iconimage = json['iconimage'];
    final l$coverimage = json['coverimage'];
    final l$title = json['title'];
    final l$subtitle = json['subtitle'];
    final l$description = json['description'];
    final l$source = json['source'];
    final l$sourceurl = json['sourceurl'];
    final l$licence = json['licence'];
    final l$licenceurl = json['licenceurl'];
    final l$ishidden = json['ishidden'];
    final l$order = json['order'];
    final l$episodescount = json['episodescount'];
    final l$singleEpisode = json['singleEpisode'];
    final l$$__typename = json['__typename'];
    final l$episodesList = json['episodesList'];
    return Fragment$ContentFull(
      id: (l$id as String),
      type: fromJson$Enum$ContentContentType((l$type as String)),
      iconimage: (l$iconimage as String),
      coverimage: (l$coverimage as String),
      title: (l$title as String),
      subtitle: (l$subtitle as String),
      description: (l$description as String),
      source: (l$source as String),
      sourceurl: (l$sourceurl as String),
      licence: (l$licence as String),
      licenceurl: (l$licenceurl as String),
      ishidden: (l$ishidden as bool),
      order: (l$order as int),
      episodescount: (l$episodescount as int),
      singleEpisode: l$singleEpisode == null
          ? null
          : Fragment$ContentEpisode.fromJson(
              (l$singleEpisode as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      episodesList: (l$episodesList as List<dynamic>)
          .map((e) =>
              Fragment$ContentEpisode.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String id;

  final Enum$ContentContentType type;

  final String iconimage;

  final String coverimage;

  final String title;

  final String subtitle;

  final String description;

  final String source;

  final String sourceurl;

  final String licence;

  final String licenceurl;

  final bool ishidden;

  final int order;

  final int episodescount;

  final Fragment$ContentEpisode? singleEpisode;

  final String $__typename;

  final List<Fragment$ContentEpisode> episodesList;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = toJson$Enum$ContentContentType(l$type);
    final l$iconimage = iconimage;
    _resultData['iconimage'] = l$iconimage;
    final l$coverimage = coverimage;
    _resultData['coverimage'] = l$coverimage;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$subtitle = subtitle;
    _resultData['subtitle'] = l$subtitle;
    final l$description = description;
    _resultData['description'] = l$description;
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
    final l$episodescount = episodescount;
    _resultData['episodescount'] = l$episodescount;
    final l$singleEpisode = singleEpisode;
    _resultData['singleEpisode'] = l$singleEpisode?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$episodesList = episodesList;
    _resultData['episodesList'] =
        l$episodesList.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$iconimage = iconimage;
    final l$coverimage = coverimage;
    final l$title = title;
    final l$subtitle = subtitle;
    final l$description = description;
    final l$source = source;
    final l$sourceurl = sourceurl;
    final l$licence = licence;
    final l$licenceurl = licenceurl;
    final l$ishidden = ishidden;
    final l$order = order;
    final l$episodescount = episodescount;
    final l$singleEpisode = singleEpisode;
    final l$$__typename = $__typename;
    final l$episodesList = episodesList;
    return Object.hashAll([
      l$id,
      l$type,
      l$iconimage,
      l$coverimage,
      l$title,
      l$subtitle,
      l$description,
      l$source,
      l$sourceurl,
      l$licence,
      l$licenceurl,
      l$ishidden,
      l$order,
      l$episodescount,
      l$singleEpisode,
      l$$__typename,
      Object.hashAll(l$episodesList.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ContentFull) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$iconimage = iconimage;
    final lOther$iconimage = other.iconimage;
    if (l$iconimage != lOther$iconimage) {
      return false;
    }
    final l$coverimage = coverimage;
    final lOther$coverimage = other.coverimage;
    if (l$coverimage != lOther$coverimage) {
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
    final l$episodescount = episodescount;
    final lOther$episodescount = other.episodescount;
    if (l$episodescount != lOther$episodescount) {
      return false;
    }
    final l$singleEpisode = singleEpisode;
    final lOther$singleEpisode = other.singleEpisode;
    if (l$singleEpisode != lOther$singleEpisode) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$episodesList = episodesList;
    final lOther$episodesList = other.episodesList;
    if (l$episodesList.length != lOther$episodesList.length) {
      return false;
    }
    for (int i = 0; i < l$episodesList.length; i++) {
      final l$episodesList$entry = l$episodesList[i];
      final lOther$episodesList$entry = lOther$episodesList[i];
      if (l$episodesList$entry != lOther$episodesList$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ContentFull on Fragment$ContentFull {
  CopyWith$Fragment$ContentFull<Fragment$ContentFull> get copyWith =>
      CopyWith$Fragment$ContentFull(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ContentFull<TRes> {
  factory CopyWith$Fragment$ContentFull(
    Fragment$ContentFull instance,
    TRes Function(Fragment$ContentFull) then,
  ) = _CopyWithImpl$Fragment$ContentFull;

  factory CopyWith$Fragment$ContentFull.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ContentFull;

  TRes call({
    String? id,
    Enum$ContentContentType? type,
    String? iconimage,
    String? coverimage,
    String? title,
    String? subtitle,
    String? description,
    String? source,
    String? sourceurl,
    String? licence,
    String? licenceurl,
    bool? ishidden,
    int? order,
    int? episodescount,
    Fragment$ContentEpisode? singleEpisode,
    String? $__typename,
    List<Fragment$ContentEpisode>? episodesList,
  });
  CopyWith$Fragment$ContentEpisode<TRes> get singleEpisode;
  TRes episodesList(
      Iterable<Fragment$ContentEpisode> Function(
              Iterable<
                  CopyWith$Fragment$ContentEpisode<Fragment$ContentEpisode>>)
          _fn);
}

class _CopyWithImpl$Fragment$ContentFull<TRes>
    implements CopyWith$Fragment$ContentFull<TRes> {
  _CopyWithImpl$Fragment$ContentFull(
    this._instance,
    this._then,
  );

  final Fragment$ContentFull _instance;

  final TRes Function(Fragment$ContentFull) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? iconimage = _undefined,
    Object? coverimage = _undefined,
    Object? title = _undefined,
    Object? subtitle = _undefined,
    Object? description = _undefined,
    Object? source = _undefined,
    Object? sourceurl = _undefined,
    Object? licence = _undefined,
    Object? licenceurl = _undefined,
    Object? ishidden = _undefined,
    Object? order = _undefined,
    Object? episodescount = _undefined,
    Object? singleEpisode = _undefined,
    Object? $__typename = _undefined,
    Object? episodesList = _undefined,
  }) =>
      _then(Fragment$ContentFull(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$ContentContentType),
        iconimage: iconimage == _undefined || iconimage == null
            ? _instance.iconimage
            : (iconimage as String),
        coverimage: coverimage == _undefined || coverimage == null
            ? _instance.coverimage
            : (coverimage as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        subtitle: subtitle == _undefined || subtitle == null
            ? _instance.subtitle
            : (subtitle as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
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
        episodescount: episodescount == _undefined || episodescount == null
            ? _instance.episodescount
            : (episodescount as int),
        singleEpisode: singleEpisode == _undefined
            ? _instance.singleEpisode
            : (singleEpisode as Fragment$ContentEpisode?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        episodesList: episodesList == _undefined || episodesList == null
            ? _instance.episodesList
            : (episodesList as List<Fragment$ContentEpisode>),
      ));

  CopyWith$Fragment$ContentEpisode<TRes> get singleEpisode {
    final local$singleEpisode = _instance.singleEpisode;
    return local$singleEpisode == null
        ? CopyWith$Fragment$ContentEpisode.stub(_then(_instance))
        : CopyWith$Fragment$ContentEpisode(
            local$singleEpisode, (e) => call(singleEpisode: e));
  }

  TRes episodesList(
          Iterable<Fragment$ContentEpisode> Function(
                  Iterable<
                      CopyWith$Fragment$ContentEpisode<
                          Fragment$ContentEpisode>>)
              _fn) =>
      call(
          episodesList: _fn(_instance.episodesList
              .map((e) => CopyWith$Fragment$ContentEpisode(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$ContentFull<TRes>
    implements CopyWith$Fragment$ContentFull<TRes> {
  _CopyWithStubImpl$Fragment$ContentFull(this._res);

  TRes _res;

  call({
    String? id,
    Enum$ContentContentType? type,
    String? iconimage,
    String? coverimage,
    String? title,
    String? subtitle,
    String? description,
    String? source,
    String? sourceurl,
    String? licence,
    String? licenceurl,
    bool? ishidden,
    int? order,
    int? episodescount,
    Fragment$ContentEpisode? singleEpisode,
    String? $__typename,
    List<Fragment$ContentEpisode>? episodesList,
  }) =>
      _res;

  CopyWith$Fragment$ContentEpisode<TRes> get singleEpisode =>
      CopyWith$Fragment$ContentEpisode.stub(_res);

  episodesList(_fn) => _res;
}

const fragmentDefinitionContentFull = FragmentDefinitionNode(
  name: NameNode(value: 'ContentFull'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Content'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FragmentSpreadNode(
      name: NameNode(value: 'Content'),
      directives: [],
    ),
    FieldNode(
      name: NameNode(value: 'episodesList'),
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
);
const documentNodeFragmentContentFull = DocumentNode(definitions: [
  fragmentDefinitionContentFull,
  fragmentDefinitionContent,
  fragmentDefinitionContentEpisode,
]);

extension ClientExtension$Fragment$ContentFull on graphql.GraphQLClient {
  void writeFragment$ContentFull({
    required Fragment$ContentFull data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ContentFull',
            document: documentNodeFragmentContentFull,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ContentFull? readFragment$ContentFull({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ContentFull',
          document: documentNodeFragmentContentFull,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ContentFull.fromJson(result);
  }
}

class Query$FetchContents {
  Query$FetchContents({
    required this.contents,
    this.$__typename = 'Query',
  });

  factory Query$FetchContents.fromJson(Map<String, dynamic> json) {
    final l$contents = json['contents'];
    final l$$__typename = json['__typename'];
    return Query$FetchContents(
      contents: Query$FetchContents$contents.fromJson(
          (l$contents as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchContents$contents contents;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contents = contents;
    _resultData['contents'] = l$contents.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contents = contents;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contents,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchContents) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$contents = contents;
    final lOther$contents = other.contents;
    if (l$contents != lOther$contents) {
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

extension UtilityExtension$Query$FetchContents on Query$FetchContents {
  CopyWith$Query$FetchContents<Query$FetchContents> get copyWith =>
      CopyWith$Query$FetchContents(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchContents<TRes> {
  factory CopyWith$Query$FetchContents(
    Query$FetchContents instance,
    TRes Function(Query$FetchContents) then,
  ) = _CopyWithImpl$Query$FetchContents;

  factory CopyWith$Query$FetchContents.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchContents;

  TRes call({
    Query$FetchContents$contents? contents,
    String? $__typename,
  });
  CopyWith$Query$FetchContents$contents<TRes> get contents;
}

class _CopyWithImpl$Query$FetchContents<TRes>
    implements CopyWith$Query$FetchContents<TRes> {
  _CopyWithImpl$Query$FetchContents(
    this._instance,
    this._then,
  );

  final Query$FetchContents _instance;

  final TRes Function(Query$FetchContents) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contents = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContents(
        contents: contents == _undefined || contents == null
            ? _instance.contents
            : (contents as Query$FetchContents$contents),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FetchContents$contents<TRes> get contents {
    final local$contents = _instance.contents;
    return CopyWith$Query$FetchContents$contents(
        local$contents, (e) => call(contents: e));
  }
}

class _CopyWithStubImpl$Query$FetchContents<TRes>
    implements CopyWith$Query$FetchContents<TRes> {
  _CopyWithStubImpl$Query$FetchContents(this._res);

  TRes _res;

  call({
    Query$FetchContents$contents? contents,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FetchContents$contents<TRes> get contents =>
      CopyWith$Query$FetchContents$contents.stub(_res);
}

const documentNodeQueryFetchContents = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchContents'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'contents'),
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
  fragmentDefinitionContent,
  fragmentDefinitionContentEpisode,
]);
Query$FetchContents _parserFn$Query$FetchContents(Map<String, dynamic> data) =>
    Query$FetchContents.fromJson(data);
typedef OnQueryComplete$Query$FetchContents = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FetchContents?,
);

class Options$Query$FetchContents
    extends graphql.QueryOptions<Query$FetchContents> {
  Options$Query$FetchContents({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchContents? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FetchContents? onComplete,
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
                    data == null ? null : _parserFn$Query$FetchContents(data),
                  ),
          onError: onError,
          document: documentNodeQueryFetchContents,
          parserFn: _parserFn$Query$FetchContents,
        );

  final OnQueryComplete$Query$FetchContents? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FetchContents
    extends graphql.WatchQueryOptions<Query$FetchContents> {
  WatchOptions$Query$FetchContents({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchContents? typedOptimisticResult,
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
          document: documentNodeQueryFetchContents,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchContents,
        );
}

class FetchMoreOptions$Query$FetchContents extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchContents(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryFetchContents,
        );
}

extension ClientExtension$Query$FetchContents on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchContents>> query$FetchContents(
          [Options$Query$FetchContents? options]) async =>
      await this.query(options ?? Options$Query$FetchContents());
  graphql.ObservableQuery<Query$FetchContents> watchQuery$FetchContents(
          [WatchOptions$Query$FetchContents? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FetchContents());
  void writeQuery$FetchContents({
    required Query$FetchContents data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryFetchContents)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchContents? readQuery$FetchContents({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFetchContents)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchContents.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchContents> useQuery$FetchContents(
        [Options$Query$FetchContents? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$FetchContents());
graphql.ObservableQuery<Query$FetchContents> useWatchQuery$FetchContents(
        [WatchOptions$Query$FetchContents? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$FetchContents());

class Query$FetchContents$Widget
    extends graphql_flutter.Query<Query$FetchContents> {
  Query$FetchContents$Widget({
    widgets.Key? key,
    Options$Query$FetchContents? options,
    required graphql_flutter.QueryBuilder<Query$FetchContents> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$FetchContents(),
          builder: builder,
        );
}

class Query$FetchContents$contents {
  Query$FetchContents$contents({
    this.edges,
    required this.totalCount,
    this.$__typename = 'ContentConnection',
  });

  factory Query$FetchContents$contents.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$FetchContents$contents(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$FetchContents$contents$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      totalCount: (l$totalCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FetchContents$contents$edges?>? edges;

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
    if (!(other is Query$FetchContents$contents) ||
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

extension UtilityExtension$Query$FetchContents$contents
    on Query$FetchContents$contents {
  CopyWith$Query$FetchContents$contents<Query$FetchContents$contents>
      get copyWith => CopyWith$Query$FetchContents$contents(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchContents$contents<TRes> {
  factory CopyWith$Query$FetchContents$contents(
    Query$FetchContents$contents instance,
    TRes Function(Query$FetchContents$contents) then,
  ) = _CopyWithImpl$Query$FetchContents$contents;

  factory CopyWith$Query$FetchContents$contents.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchContents$contents;

  TRes call({
    List<Query$FetchContents$contents$edges?>? edges,
    int? totalCount,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$FetchContents$contents$edges?>? Function(
              Iterable<
                  CopyWith$Query$FetchContents$contents$edges<
                      Query$FetchContents$contents$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$FetchContents$contents<TRes>
    implements CopyWith$Query$FetchContents$contents<TRes> {
  _CopyWithImpl$Query$FetchContents$contents(
    this._instance,
    this._then,
  );

  final Query$FetchContents$contents _instance;

  final TRes Function(Query$FetchContents$contents) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContents$contents(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$FetchContents$contents$edges?>?),
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$FetchContents$contents$edges?>? Function(
                  Iterable<
                      CopyWith$Query$FetchContents$contents$edges<
                          Query$FetchContents$contents$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$FetchContents$contents$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FetchContents$contents<TRes>
    implements CopyWith$Query$FetchContents$contents<TRes> {
  _CopyWithStubImpl$Query$FetchContents$contents(this._res);

  TRes _res;

  call({
    List<Query$FetchContents$contents$edges?>? edges,
    int? totalCount,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$FetchContents$contents$edges {
  Query$FetchContents$contents$edges({
    this.node,
    this.$__typename = 'ContentEdge',
  });

  factory Query$FetchContents$contents$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$FetchContents$contents$edges(
      node: l$node == null
          ? null
          : Fragment$Content.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Content? node;

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
    if (!(other is Query$FetchContents$contents$edges) ||
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

extension UtilityExtension$Query$FetchContents$contents$edges
    on Query$FetchContents$contents$edges {
  CopyWith$Query$FetchContents$contents$edges<
          Query$FetchContents$contents$edges>
      get copyWith => CopyWith$Query$FetchContents$contents$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchContents$contents$edges<TRes> {
  factory CopyWith$Query$FetchContents$contents$edges(
    Query$FetchContents$contents$edges instance,
    TRes Function(Query$FetchContents$contents$edges) then,
  ) = _CopyWithImpl$Query$FetchContents$contents$edges;

  factory CopyWith$Query$FetchContents$contents$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchContents$contents$edges;

  TRes call({
    Fragment$Content? node,
    String? $__typename,
  });
  CopyWith$Fragment$Content<TRes> get node;
}

class _CopyWithImpl$Query$FetchContents$contents$edges<TRes>
    implements CopyWith$Query$FetchContents$contents$edges<TRes> {
  _CopyWithImpl$Query$FetchContents$contents$edges(
    this._instance,
    this._then,
  );

  final Query$FetchContents$contents$edges _instance;

  final TRes Function(Query$FetchContents$contents$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContents$contents$edges(
        node: node == _undefined ? _instance.node : (node as Fragment$Content?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Content<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$Content.stub(_then(_instance))
        : CopyWith$Fragment$Content(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$FetchContents$contents$edges<TRes>
    implements CopyWith$Query$FetchContents$contents$edges<TRes> {
  _CopyWithStubImpl$Query$FetchContents$contents$edges(this._res);

  TRes _res;

  call({
    Fragment$Content? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Content<TRes> get node =>
      CopyWith$Fragment$Content.stub(_res);
}

class Variables$Query$FetchContent {
  factory Variables$Query$FetchContent({required String contentId}) =>
      Variables$Query$FetchContent._({
        r'contentId': contentId,
      });

  Variables$Query$FetchContent._(this._$data);

  factory Variables$Query$FetchContent.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$contentId = data['contentId'];
    result$data['contentId'] = (l$contentId as String);
    return Variables$Query$FetchContent._(result$data);
  }

  Map<String, dynamic> _$data;

  String get contentId => (_$data['contentId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$contentId = contentId;
    result$data['contentId'] = l$contentId;
    return result$data;
  }

  CopyWith$Variables$Query$FetchContent<Variables$Query$FetchContent>
      get copyWith => CopyWith$Variables$Query$FetchContent(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FetchContent) ||
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

abstract class CopyWith$Variables$Query$FetchContent<TRes> {
  factory CopyWith$Variables$Query$FetchContent(
    Variables$Query$FetchContent instance,
    TRes Function(Variables$Query$FetchContent) then,
  ) = _CopyWithImpl$Variables$Query$FetchContent;

  factory CopyWith$Variables$Query$FetchContent.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FetchContent;

  TRes call({String? contentId});
}

class _CopyWithImpl$Variables$Query$FetchContent<TRes>
    implements CopyWith$Variables$Query$FetchContent<TRes> {
  _CopyWithImpl$Variables$Query$FetchContent(
    this._instance,
    this._then,
  );

  final Variables$Query$FetchContent _instance;

  final TRes Function(Variables$Query$FetchContent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? contentId = _undefined}) =>
      _then(Variables$Query$FetchContent._({
        ..._instance._$data,
        if (contentId != _undefined && contentId != null)
          'contentId': (contentId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$FetchContent<TRes>
    implements CopyWith$Variables$Query$FetchContent<TRes> {
  _CopyWithStubImpl$Variables$Query$FetchContent(this._res);

  TRes _res;

  call({String? contentId}) => _res;
}

class Query$FetchContent {
  Query$FetchContent({
    this.node,
    this.$__typename = 'Query',
  });

  factory Query$FetchContent.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$FetchContent(
      node: l$node == null
          ? null
          : Query$FetchContent$node.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchContent$node? node;

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
    if (!(other is Query$FetchContent) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FetchContent on Query$FetchContent {
  CopyWith$Query$FetchContent<Query$FetchContent> get copyWith =>
      CopyWith$Query$FetchContent(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchContent<TRes> {
  factory CopyWith$Query$FetchContent(
    Query$FetchContent instance,
    TRes Function(Query$FetchContent) then,
  ) = _CopyWithImpl$Query$FetchContent;

  factory CopyWith$Query$FetchContent.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchContent;

  TRes call({
    Query$FetchContent$node? node,
    String? $__typename,
  });
  CopyWith$Query$FetchContent$node<TRes> get node;
}

class _CopyWithImpl$Query$FetchContent<TRes>
    implements CopyWith$Query$FetchContent<TRes> {
  _CopyWithImpl$Query$FetchContent(
    this._instance,
    this._then,
  );

  final Query$FetchContent _instance;

  final TRes Function(Query$FetchContent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContent(
        node: node == _undefined
            ? _instance.node
            : (node as Query$FetchContent$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FetchContent$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$FetchContent$node.stub(_then(_instance))
        : CopyWith$Query$FetchContent$node(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$FetchContent<TRes>
    implements CopyWith$Query$FetchContent<TRes> {
  _CopyWithStubImpl$Query$FetchContent(this._res);

  TRes _res;

  call({
    Query$FetchContent$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FetchContent$node<TRes> get node =>
      CopyWith$Query$FetchContent$node.stub(_res);
}

const documentNodeQueryFetchContent = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchContent'),
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
        name: NameNode(value: 'node'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'contentId')),
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
              name: NameNode(value: 'Content'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'ContentFull'),
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
  fragmentDefinitionContentFull,
  fragmentDefinitionContent,
  fragmentDefinitionContentEpisode,
]);
Query$FetchContent _parserFn$Query$FetchContent(Map<String, dynamic> data) =>
    Query$FetchContent.fromJson(data);
typedef OnQueryComplete$Query$FetchContent = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FetchContent?,
);

class Options$Query$FetchContent
    extends graphql.QueryOptions<Query$FetchContent> {
  Options$Query$FetchContent({
    String? operationName,
    required Variables$Query$FetchContent variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchContent? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FetchContent? onComplete,
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
                    data == null ? null : _parserFn$Query$FetchContent(data),
                  ),
          onError: onError,
          document: documentNodeQueryFetchContent,
          parserFn: _parserFn$Query$FetchContent,
        );

  final OnQueryComplete$Query$FetchContent? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FetchContent
    extends graphql.WatchQueryOptions<Query$FetchContent> {
  WatchOptions$Query$FetchContent({
    String? operationName,
    required Variables$Query$FetchContent variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchContent? typedOptimisticResult,
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
          document: documentNodeQueryFetchContent,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchContent,
        );
}

class FetchMoreOptions$Query$FetchContent extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchContent({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$FetchContent variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryFetchContent,
        );
}

extension ClientExtension$Query$FetchContent on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchContent>> query$FetchContent(
          Options$Query$FetchContent options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$FetchContent> watchQuery$FetchContent(
          WatchOptions$Query$FetchContent options) =>
      this.watchQuery(options);
  void writeQuery$FetchContent({
    required Query$FetchContent data,
    required Variables$Query$FetchContent variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryFetchContent),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchContent? readQuery$FetchContent({
    required Variables$Query$FetchContent variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFetchContent),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchContent.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchContent> useQuery$FetchContent(
        Options$Query$FetchContent options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$FetchContent> useWatchQuery$FetchContent(
        WatchOptions$Query$FetchContent options) =>
    graphql_flutter.useWatchQuery(options);

class Query$FetchContent$Widget
    extends graphql_flutter.Query<Query$FetchContent> {
  Query$FetchContent$Widget({
    widgets.Key? key,
    required Options$Query$FetchContent options,
    required graphql_flutter.QueryBuilder<Query$FetchContent> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$FetchContent$node {
  Query$FetchContent$node({
    required this.id,
    required this.$__typename,
  });

  factory Query$FetchContent$node.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Content":
        return Query$FetchContent$node$$Content.fromJson(json);

      case "ContentEpisode":
        return Query$FetchContent$node$$ContentEpisode.fromJson(json);

      case "ContentProgress":
        return Query$FetchContent$node$$ContentProgress.fromJson(json);

      case "Course":
        return Query$FetchContent$node$$Course.fromJson(json);

      case "JournalRecord":
        return Query$FetchContent$node$$JournalRecord.fromJson(json);

      case "Lesson":
        return Query$FetchContent$node$$Lesson.fromJson(json);

      case "LessonAudio":
        return Query$FetchContent$node$$LessonAudio.fromJson(json);

      case "Technique":
        return Query$FetchContent$node$$Technique.fromJson(json);

      case "Unit":
        return Query$FetchContent$node$$Unit.fromJson(json);

      case "User":
        return Query$FetchContent$node$$User.fromJson(json);

      case "UserProgress":
        return Query$FetchContent$node$$UserProgress.fromJson(json);

      default:
        final l$id = json['id'];
        final l$$__typename = json['__typename'];
        return Query$FetchContent$node(
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
    if (!(other is Query$FetchContent$node) ||
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

extension UtilityExtension$Query$FetchContent$node on Query$FetchContent$node {
  CopyWith$Query$FetchContent$node<Query$FetchContent$node> get copyWith =>
      CopyWith$Query$FetchContent$node(
        this,
        (i) => i,
      );
  _T when<_T>({
    required _T Function(Query$FetchContent$node$$Content) content,
    required _T Function(Query$FetchContent$node$$ContentEpisode)
        contentEpisode,
    required _T Function(Query$FetchContent$node$$ContentProgress)
        contentProgress,
    required _T Function(Query$FetchContent$node$$Course) course,
    required _T Function(Query$FetchContent$node$$JournalRecord) journalRecord,
    required _T Function(Query$FetchContent$node$$Lesson) lesson,
    required _T Function(Query$FetchContent$node$$LessonAudio) lessonAudio,
    required _T Function(Query$FetchContent$node$$Technique) technique,
    required _T Function(Query$FetchContent$node$$Unit) unit,
    required _T Function(Query$FetchContent$node$$User) user,
    required _T Function(Query$FetchContent$node$$UserProgress) userProgress,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Content":
        return content(this as Query$FetchContent$node$$Content);

      case "ContentEpisode":
        return contentEpisode(this as Query$FetchContent$node$$ContentEpisode);

      case "ContentProgress":
        return contentProgress(
            this as Query$FetchContent$node$$ContentProgress);

      case "Course":
        return course(this as Query$FetchContent$node$$Course);

      case "JournalRecord":
        return journalRecord(this as Query$FetchContent$node$$JournalRecord);

      case "Lesson":
        return lesson(this as Query$FetchContent$node$$Lesson);

      case "LessonAudio":
        return lessonAudio(this as Query$FetchContent$node$$LessonAudio);

      case "Technique":
        return technique(this as Query$FetchContent$node$$Technique);

      case "Unit":
        return unit(this as Query$FetchContent$node$$Unit);

      case "User":
        return user(this as Query$FetchContent$node$$User);

      case "UserProgress":
        return userProgress(this as Query$FetchContent$node$$UserProgress);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$FetchContent$node$$Content)? content,
    _T Function(Query$FetchContent$node$$ContentEpisode)? contentEpisode,
    _T Function(Query$FetchContent$node$$ContentProgress)? contentProgress,
    _T Function(Query$FetchContent$node$$Course)? course,
    _T Function(Query$FetchContent$node$$JournalRecord)? journalRecord,
    _T Function(Query$FetchContent$node$$Lesson)? lesson,
    _T Function(Query$FetchContent$node$$LessonAudio)? lessonAudio,
    _T Function(Query$FetchContent$node$$Technique)? technique,
    _T Function(Query$FetchContent$node$$Unit)? unit,
    _T Function(Query$FetchContent$node$$User)? user,
    _T Function(Query$FetchContent$node$$UserProgress)? userProgress,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Content":
        if (content != null) {
          return content(this as Query$FetchContent$node$$Content);
        } else {
          return orElse();
        }

      case "ContentEpisode":
        if (contentEpisode != null) {
          return contentEpisode(
              this as Query$FetchContent$node$$ContentEpisode);
        } else {
          return orElse();
        }

      case "ContentProgress":
        if (contentProgress != null) {
          return contentProgress(
              this as Query$FetchContent$node$$ContentProgress);
        } else {
          return orElse();
        }

      case "Course":
        if (course != null) {
          return course(this as Query$FetchContent$node$$Course);
        } else {
          return orElse();
        }

      case "JournalRecord":
        if (journalRecord != null) {
          return journalRecord(this as Query$FetchContent$node$$JournalRecord);
        } else {
          return orElse();
        }

      case "Lesson":
        if (lesson != null) {
          return lesson(this as Query$FetchContent$node$$Lesson);
        } else {
          return orElse();
        }

      case "LessonAudio":
        if (lessonAudio != null) {
          return lessonAudio(this as Query$FetchContent$node$$LessonAudio);
        } else {
          return orElse();
        }

      case "Technique":
        if (technique != null) {
          return technique(this as Query$FetchContent$node$$Technique);
        } else {
          return orElse();
        }

      case "Unit":
        if (unit != null) {
          return unit(this as Query$FetchContent$node$$Unit);
        } else {
          return orElse();
        }

      case "User":
        if (user != null) {
          return user(this as Query$FetchContent$node$$User);
        } else {
          return orElse();
        }

      case "UserProgress":
        if (userProgress != null) {
          return userProgress(this as Query$FetchContent$node$$UserProgress);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$FetchContent$node<TRes> {
  factory CopyWith$Query$FetchContent$node(
    Query$FetchContent$node instance,
    TRes Function(Query$FetchContent$node) then,
  ) = _CopyWithImpl$Query$FetchContent$node;

  factory CopyWith$Query$FetchContent$node.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchContent$node;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchContent$node<TRes>
    implements CopyWith$Query$FetchContent$node<TRes> {
  _CopyWithImpl$Query$FetchContent$node(
    this._instance,
    this._then,
  );

  final Query$FetchContent$node _instance;

  final TRes Function(Query$FetchContent$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContent$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchContent$node<TRes>
    implements CopyWith$Query$FetchContent$node<TRes> {
  _CopyWithStubImpl$Query$FetchContent$node(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchContent$node$$Content
    implements Fragment$ContentFull, Fragment$Content, Query$FetchContent$node {
  Query$FetchContent$node$$Content({
    required this.id,
    required this.type,
    required this.iconimage,
    required this.coverimage,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.source,
    required this.sourceurl,
    required this.licence,
    required this.licenceurl,
    required this.ishidden,
    required this.order,
    required this.episodescount,
    this.singleEpisode,
    this.$__typename = 'Content',
    required this.episodesList,
  });

  factory Query$FetchContent$node$$Content.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$iconimage = json['iconimage'];
    final l$coverimage = json['coverimage'];
    final l$title = json['title'];
    final l$subtitle = json['subtitle'];
    final l$description = json['description'];
    final l$source = json['source'];
    final l$sourceurl = json['sourceurl'];
    final l$licence = json['licence'];
    final l$licenceurl = json['licenceurl'];
    final l$ishidden = json['ishidden'];
    final l$order = json['order'];
    final l$episodescount = json['episodescount'];
    final l$singleEpisode = json['singleEpisode'];
    final l$$__typename = json['__typename'];
    final l$episodesList = json['episodesList'];
    return Query$FetchContent$node$$Content(
      id: (l$id as String),
      type: fromJson$Enum$ContentContentType((l$type as String)),
      iconimage: (l$iconimage as String),
      coverimage: (l$coverimage as String),
      title: (l$title as String),
      subtitle: (l$subtitle as String),
      description: (l$description as String),
      source: (l$source as String),
      sourceurl: (l$sourceurl as String),
      licence: (l$licence as String),
      licenceurl: (l$licenceurl as String),
      ishidden: (l$ishidden as bool),
      order: (l$order as int),
      episodescount: (l$episodescount as int),
      singleEpisode: l$singleEpisode == null
          ? null
          : Fragment$ContentEpisode.fromJson(
              (l$singleEpisode as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      episodesList: (l$episodesList as List<dynamic>)
          .map((e) =>
              Fragment$ContentEpisode.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String id;

  final Enum$ContentContentType type;

  final String iconimage;

  final String coverimage;

  final String title;

  final String subtitle;

  final String description;

  final String source;

  final String sourceurl;

  final String licence;

  final String licenceurl;

  final bool ishidden;

  final int order;

  final int episodescount;

  final Fragment$ContentEpisode? singleEpisode;

  final String $__typename;

  final List<Fragment$ContentEpisode> episodesList;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = toJson$Enum$ContentContentType(l$type);
    final l$iconimage = iconimage;
    _resultData['iconimage'] = l$iconimage;
    final l$coverimage = coverimage;
    _resultData['coverimage'] = l$coverimage;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$subtitle = subtitle;
    _resultData['subtitle'] = l$subtitle;
    final l$description = description;
    _resultData['description'] = l$description;
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
    final l$episodescount = episodescount;
    _resultData['episodescount'] = l$episodescount;
    final l$singleEpisode = singleEpisode;
    _resultData['singleEpisode'] = l$singleEpisode?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$episodesList = episodesList;
    _resultData['episodesList'] =
        l$episodesList.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$iconimage = iconimage;
    final l$coverimage = coverimage;
    final l$title = title;
    final l$subtitle = subtitle;
    final l$description = description;
    final l$source = source;
    final l$sourceurl = sourceurl;
    final l$licence = licence;
    final l$licenceurl = licenceurl;
    final l$ishidden = ishidden;
    final l$order = order;
    final l$episodescount = episodescount;
    final l$singleEpisode = singleEpisode;
    final l$$__typename = $__typename;
    final l$episodesList = episodesList;
    return Object.hashAll([
      l$id,
      l$type,
      l$iconimage,
      l$coverimage,
      l$title,
      l$subtitle,
      l$description,
      l$source,
      l$sourceurl,
      l$licence,
      l$licenceurl,
      l$ishidden,
      l$order,
      l$episodescount,
      l$singleEpisode,
      l$$__typename,
      Object.hashAll(l$episodesList.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchContent$node$$Content) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$iconimage = iconimage;
    final lOther$iconimage = other.iconimage;
    if (l$iconimage != lOther$iconimage) {
      return false;
    }
    final l$coverimage = coverimage;
    final lOther$coverimage = other.coverimage;
    if (l$coverimage != lOther$coverimage) {
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
    final l$episodescount = episodescount;
    final lOther$episodescount = other.episodescount;
    if (l$episodescount != lOther$episodescount) {
      return false;
    }
    final l$singleEpisode = singleEpisode;
    final lOther$singleEpisode = other.singleEpisode;
    if (l$singleEpisode != lOther$singleEpisode) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$episodesList = episodesList;
    final lOther$episodesList = other.episodesList;
    if (l$episodesList.length != lOther$episodesList.length) {
      return false;
    }
    for (int i = 0; i < l$episodesList.length; i++) {
      final l$episodesList$entry = l$episodesList[i];
      final lOther$episodesList$entry = lOther$episodesList[i];
      if (l$episodesList$entry != lOther$episodesList$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchContent$node$$Content
    on Query$FetchContent$node$$Content {
  CopyWith$Query$FetchContent$node$$Content<Query$FetchContent$node$$Content>
      get copyWith => CopyWith$Query$FetchContent$node$$Content(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchContent$node$$Content<TRes> {
  factory CopyWith$Query$FetchContent$node$$Content(
    Query$FetchContent$node$$Content instance,
    TRes Function(Query$FetchContent$node$$Content) then,
  ) = _CopyWithImpl$Query$FetchContent$node$$Content;

  factory CopyWith$Query$FetchContent$node$$Content.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchContent$node$$Content;

  TRes call({
    String? id,
    Enum$ContentContentType? type,
    String? iconimage,
    String? coverimage,
    String? title,
    String? subtitle,
    String? description,
    String? source,
    String? sourceurl,
    String? licence,
    String? licenceurl,
    bool? ishidden,
    int? order,
    int? episodescount,
    Fragment$ContentEpisode? singleEpisode,
    String? $__typename,
    List<Fragment$ContentEpisode>? episodesList,
  });
  CopyWith$Fragment$ContentEpisode<TRes> get singleEpisode;
  TRes episodesList(
      Iterable<Fragment$ContentEpisode> Function(
              Iterable<
                  CopyWith$Fragment$ContentEpisode<Fragment$ContentEpisode>>)
          _fn);
}

class _CopyWithImpl$Query$FetchContent$node$$Content<TRes>
    implements CopyWith$Query$FetchContent$node$$Content<TRes> {
  _CopyWithImpl$Query$FetchContent$node$$Content(
    this._instance,
    this._then,
  );

  final Query$FetchContent$node$$Content _instance;

  final TRes Function(Query$FetchContent$node$$Content) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? iconimage = _undefined,
    Object? coverimage = _undefined,
    Object? title = _undefined,
    Object? subtitle = _undefined,
    Object? description = _undefined,
    Object? source = _undefined,
    Object? sourceurl = _undefined,
    Object? licence = _undefined,
    Object? licenceurl = _undefined,
    Object? ishidden = _undefined,
    Object? order = _undefined,
    Object? episodescount = _undefined,
    Object? singleEpisode = _undefined,
    Object? $__typename = _undefined,
    Object? episodesList = _undefined,
  }) =>
      _then(Query$FetchContent$node$$Content(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$ContentContentType),
        iconimage: iconimage == _undefined || iconimage == null
            ? _instance.iconimage
            : (iconimage as String),
        coverimage: coverimage == _undefined || coverimage == null
            ? _instance.coverimage
            : (coverimage as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        subtitle: subtitle == _undefined || subtitle == null
            ? _instance.subtitle
            : (subtitle as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
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
        episodescount: episodescount == _undefined || episodescount == null
            ? _instance.episodescount
            : (episodescount as int),
        singleEpisode: singleEpisode == _undefined
            ? _instance.singleEpisode
            : (singleEpisode as Fragment$ContentEpisode?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        episodesList: episodesList == _undefined || episodesList == null
            ? _instance.episodesList
            : (episodesList as List<Fragment$ContentEpisode>),
      ));

  CopyWith$Fragment$ContentEpisode<TRes> get singleEpisode {
    final local$singleEpisode = _instance.singleEpisode;
    return local$singleEpisode == null
        ? CopyWith$Fragment$ContentEpisode.stub(_then(_instance))
        : CopyWith$Fragment$ContentEpisode(
            local$singleEpisode, (e) => call(singleEpisode: e));
  }

  TRes episodesList(
          Iterable<Fragment$ContentEpisode> Function(
                  Iterable<
                      CopyWith$Fragment$ContentEpisode<
                          Fragment$ContentEpisode>>)
              _fn) =>
      call(
          episodesList: _fn(_instance.episodesList
              .map((e) => CopyWith$Fragment$ContentEpisode(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FetchContent$node$$Content<TRes>
    implements CopyWith$Query$FetchContent$node$$Content<TRes> {
  _CopyWithStubImpl$Query$FetchContent$node$$Content(this._res);

  TRes _res;

  call({
    String? id,
    Enum$ContentContentType? type,
    String? iconimage,
    String? coverimage,
    String? title,
    String? subtitle,
    String? description,
    String? source,
    String? sourceurl,
    String? licence,
    String? licenceurl,
    bool? ishidden,
    int? order,
    int? episodescount,
    Fragment$ContentEpisode? singleEpisode,
    String? $__typename,
    List<Fragment$ContentEpisode>? episodesList,
  }) =>
      _res;

  CopyWith$Fragment$ContentEpisode<TRes> get singleEpisode =>
      CopyWith$Fragment$ContentEpisode.stub(_res);

  episodesList(_fn) => _res;
}

class Query$FetchContent$node$$ContentEpisode
    implements Query$FetchContent$node {
  Query$FetchContent$node$$ContentEpisode({
    required this.id,
    this.$__typename = 'ContentEpisode',
  });

  factory Query$FetchContent$node$$ContentEpisode.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchContent$node$$ContentEpisode(
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
    if (!(other is Query$FetchContent$node$$ContentEpisode) ||
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

extension UtilityExtension$Query$FetchContent$node$$ContentEpisode
    on Query$FetchContent$node$$ContentEpisode {
  CopyWith$Query$FetchContent$node$$ContentEpisode<
          Query$FetchContent$node$$ContentEpisode>
      get copyWith => CopyWith$Query$FetchContent$node$$ContentEpisode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchContent$node$$ContentEpisode<TRes> {
  factory CopyWith$Query$FetchContent$node$$ContentEpisode(
    Query$FetchContent$node$$ContentEpisode instance,
    TRes Function(Query$FetchContent$node$$ContentEpisode) then,
  ) = _CopyWithImpl$Query$FetchContent$node$$ContentEpisode;

  factory CopyWith$Query$FetchContent$node$$ContentEpisode.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchContent$node$$ContentEpisode;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchContent$node$$ContentEpisode<TRes>
    implements CopyWith$Query$FetchContent$node$$ContentEpisode<TRes> {
  _CopyWithImpl$Query$FetchContent$node$$ContentEpisode(
    this._instance,
    this._then,
  );

  final Query$FetchContent$node$$ContentEpisode _instance;

  final TRes Function(Query$FetchContent$node$$ContentEpisode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContent$node$$ContentEpisode(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchContent$node$$ContentEpisode<TRes>
    implements CopyWith$Query$FetchContent$node$$ContentEpisode<TRes> {
  _CopyWithStubImpl$Query$FetchContent$node$$ContentEpisode(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchContent$node$$ContentProgress
    implements Query$FetchContent$node {
  Query$FetchContent$node$$ContentProgress({
    required this.id,
    this.$__typename = 'ContentProgress',
  });

  factory Query$FetchContent$node$$ContentProgress.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchContent$node$$ContentProgress(
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
    if (!(other is Query$FetchContent$node$$ContentProgress) ||
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

extension UtilityExtension$Query$FetchContent$node$$ContentProgress
    on Query$FetchContent$node$$ContentProgress {
  CopyWith$Query$FetchContent$node$$ContentProgress<
          Query$FetchContent$node$$ContentProgress>
      get copyWith => CopyWith$Query$FetchContent$node$$ContentProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchContent$node$$ContentProgress<TRes> {
  factory CopyWith$Query$FetchContent$node$$ContentProgress(
    Query$FetchContent$node$$ContentProgress instance,
    TRes Function(Query$FetchContent$node$$ContentProgress) then,
  ) = _CopyWithImpl$Query$FetchContent$node$$ContentProgress;

  factory CopyWith$Query$FetchContent$node$$ContentProgress.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchContent$node$$ContentProgress;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchContent$node$$ContentProgress<TRes>
    implements CopyWith$Query$FetchContent$node$$ContentProgress<TRes> {
  _CopyWithImpl$Query$FetchContent$node$$ContentProgress(
    this._instance,
    this._then,
  );

  final Query$FetchContent$node$$ContentProgress _instance;

  final TRes Function(Query$FetchContent$node$$ContentProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContent$node$$ContentProgress(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchContent$node$$ContentProgress<TRes>
    implements CopyWith$Query$FetchContent$node$$ContentProgress<TRes> {
  _CopyWithStubImpl$Query$FetchContent$node$$ContentProgress(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchContent$node$$Course implements Query$FetchContent$node {
  Query$FetchContent$node$$Course({
    required this.id,
    this.$__typename = 'Course',
  });

  factory Query$FetchContent$node$$Course.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchContent$node$$Course(
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
    if (!(other is Query$FetchContent$node$$Course) ||
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

extension UtilityExtension$Query$FetchContent$node$$Course
    on Query$FetchContent$node$$Course {
  CopyWith$Query$FetchContent$node$$Course<Query$FetchContent$node$$Course>
      get copyWith => CopyWith$Query$FetchContent$node$$Course(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchContent$node$$Course<TRes> {
  factory CopyWith$Query$FetchContent$node$$Course(
    Query$FetchContent$node$$Course instance,
    TRes Function(Query$FetchContent$node$$Course) then,
  ) = _CopyWithImpl$Query$FetchContent$node$$Course;

  factory CopyWith$Query$FetchContent$node$$Course.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchContent$node$$Course;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchContent$node$$Course<TRes>
    implements CopyWith$Query$FetchContent$node$$Course<TRes> {
  _CopyWithImpl$Query$FetchContent$node$$Course(
    this._instance,
    this._then,
  );

  final Query$FetchContent$node$$Course _instance;

  final TRes Function(Query$FetchContent$node$$Course) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContent$node$$Course(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchContent$node$$Course<TRes>
    implements CopyWith$Query$FetchContent$node$$Course<TRes> {
  _CopyWithStubImpl$Query$FetchContent$node$$Course(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchContent$node$$JournalRecord
    implements Query$FetchContent$node {
  Query$FetchContent$node$$JournalRecord({
    required this.id,
    this.$__typename = 'JournalRecord',
  });

  factory Query$FetchContent$node$$JournalRecord.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchContent$node$$JournalRecord(
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
    if (!(other is Query$FetchContent$node$$JournalRecord) ||
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

extension UtilityExtension$Query$FetchContent$node$$JournalRecord
    on Query$FetchContent$node$$JournalRecord {
  CopyWith$Query$FetchContent$node$$JournalRecord<
          Query$FetchContent$node$$JournalRecord>
      get copyWith => CopyWith$Query$FetchContent$node$$JournalRecord(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchContent$node$$JournalRecord<TRes> {
  factory CopyWith$Query$FetchContent$node$$JournalRecord(
    Query$FetchContent$node$$JournalRecord instance,
    TRes Function(Query$FetchContent$node$$JournalRecord) then,
  ) = _CopyWithImpl$Query$FetchContent$node$$JournalRecord;

  factory CopyWith$Query$FetchContent$node$$JournalRecord.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchContent$node$$JournalRecord;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchContent$node$$JournalRecord<TRes>
    implements CopyWith$Query$FetchContent$node$$JournalRecord<TRes> {
  _CopyWithImpl$Query$FetchContent$node$$JournalRecord(
    this._instance,
    this._then,
  );

  final Query$FetchContent$node$$JournalRecord _instance;

  final TRes Function(Query$FetchContent$node$$JournalRecord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContent$node$$JournalRecord(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchContent$node$$JournalRecord<TRes>
    implements CopyWith$Query$FetchContent$node$$JournalRecord<TRes> {
  _CopyWithStubImpl$Query$FetchContent$node$$JournalRecord(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchContent$node$$Lesson implements Query$FetchContent$node {
  Query$FetchContent$node$$Lesson({
    required this.id,
    this.$__typename = 'Lesson',
  });

  factory Query$FetchContent$node$$Lesson.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchContent$node$$Lesson(
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
    if (!(other is Query$FetchContent$node$$Lesson) ||
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

extension UtilityExtension$Query$FetchContent$node$$Lesson
    on Query$FetchContent$node$$Lesson {
  CopyWith$Query$FetchContent$node$$Lesson<Query$FetchContent$node$$Lesson>
      get copyWith => CopyWith$Query$FetchContent$node$$Lesson(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchContent$node$$Lesson<TRes> {
  factory CopyWith$Query$FetchContent$node$$Lesson(
    Query$FetchContent$node$$Lesson instance,
    TRes Function(Query$FetchContent$node$$Lesson) then,
  ) = _CopyWithImpl$Query$FetchContent$node$$Lesson;

  factory CopyWith$Query$FetchContent$node$$Lesson.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchContent$node$$Lesson;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchContent$node$$Lesson<TRes>
    implements CopyWith$Query$FetchContent$node$$Lesson<TRes> {
  _CopyWithImpl$Query$FetchContent$node$$Lesson(
    this._instance,
    this._then,
  );

  final Query$FetchContent$node$$Lesson _instance;

  final TRes Function(Query$FetchContent$node$$Lesson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContent$node$$Lesson(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchContent$node$$Lesson<TRes>
    implements CopyWith$Query$FetchContent$node$$Lesson<TRes> {
  _CopyWithStubImpl$Query$FetchContent$node$$Lesson(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchContent$node$$LessonAudio implements Query$FetchContent$node {
  Query$FetchContent$node$$LessonAudio({
    required this.id,
    this.$__typename = 'LessonAudio',
  });

  factory Query$FetchContent$node$$LessonAudio.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchContent$node$$LessonAudio(
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
    if (!(other is Query$FetchContent$node$$LessonAudio) ||
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

extension UtilityExtension$Query$FetchContent$node$$LessonAudio
    on Query$FetchContent$node$$LessonAudio {
  CopyWith$Query$FetchContent$node$$LessonAudio<
          Query$FetchContent$node$$LessonAudio>
      get copyWith => CopyWith$Query$FetchContent$node$$LessonAudio(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchContent$node$$LessonAudio<TRes> {
  factory CopyWith$Query$FetchContent$node$$LessonAudio(
    Query$FetchContent$node$$LessonAudio instance,
    TRes Function(Query$FetchContent$node$$LessonAudio) then,
  ) = _CopyWithImpl$Query$FetchContent$node$$LessonAudio;

  factory CopyWith$Query$FetchContent$node$$LessonAudio.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchContent$node$$LessonAudio;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchContent$node$$LessonAudio<TRes>
    implements CopyWith$Query$FetchContent$node$$LessonAudio<TRes> {
  _CopyWithImpl$Query$FetchContent$node$$LessonAudio(
    this._instance,
    this._then,
  );

  final Query$FetchContent$node$$LessonAudio _instance;

  final TRes Function(Query$FetchContent$node$$LessonAudio) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContent$node$$LessonAudio(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchContent$node$$LessonAudio<TRes>
    implements CopyWith$Query$FetchContent$node$$LessonAudio<TRes> {
  _CopyWithStubImpl$Query$FetchContent$node$$LessonAudio(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchContent$node$$Technique implements Query$FetchContent$node {
  Query$FetchContent$node$$Technique({
    required this.id,
    this.$__typename = 'Technique',
  });

  factory Query$FetchContent$node$$Technique.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchContent$node$$Technique(
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
    if (!(other is Query$FetchContent$node$$Technique) ||
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

extension UtilityExtension$Query$FetchContent$node$$Technique
    on Query$FetchContent$node$$Technique {
  CopyWith$Query$FetchContent$node$$Technique<
          Query$FetchContent$node$$Technique>
      get copyWith => CopyWith$Query$FetchContent$node$$Technique(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchContent$node$$Technique<TRes> {
  factory CopyWith$Query$FetchContent$node$$Technique(
    Query$FetchContent$node$$Technique instance,
    TRes Function(Query$FetchContent$node$$Technique) then,
  ) = _CopyWithImpl$Query$FetchContent$node$$Technique;

  factory CopyWith$Query$FetchContent$node$$Technique.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchContent$node$$Technique;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchContent$node$$Technique<TRes>
    implements CopyWith$Query$FetchContent$node$$Technique<TRes> {
  _CopyWithImpl$Query$FetchContent$node$$Technique(
    this._instance,
    this._then,
  );

  final Query$FetchContent$node$$Technique _instance;

  final TRes Function(Query$FetchContent$node$$Technique) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContent$node$$Technique(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchContent$node$$Technique<TRes>
    implements CopyWith$Query$FetchContent$node$$Technique<TRes> {
  _CopyWithStubImpl$Query$FetchContent$node$$Technique(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchContent$node$$Unit implements Query$FetchContent$node {
  Query$FetchContent$node$$Unit({
    required this.id,
    this.$__typename = 'Unit',
  });

  factory Query$FetchContent$node$$Unit.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchContent$node$$Unit(
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
    if (!(other is Query$FetchContent$node$$Unit) ||
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

extension UtilityExtension$Query$FetchContent$node$$Unit
    on Query$FetchContent$node$$Unit {
  CopyWith$Query$FetchContent$node$$Unit<Query$FetchContent$node$$Unit>
      get copyWith => CopyWith$Query$FetchContent$node$$Unit(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchContent$node$$Unit<TRes> {
  factory CopyWith$Query$FetchContent$node$$Unit(
    Query$FetchContent$node$$Unit instance,
    TRes Function(Query$FetchContent$node$$Unit) then,
  ) = _CopyWithImpl$Query$FetchContent$node$$Unit;

  factory CopyWith$Query$FetchContent$node$$Unit.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchContent$node$$Unit;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchContent$node$$Unit<TRes>
    implements CopyWith$Query$FetchContent$node$$Unit<TRes> {
  _CopyWithImpl$Query$FetchContent$node$$Unit(
    this._instance,
    this._then,
  );

  final Query$FetchContent$node$$Unit _instance;

  final TRes Function(Query$FetchContent$node$$Unit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContent$node$$Unit(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchContent$node$$Unit<TRes>
    implements CopyWith$Query$FetchContent$node$$Unit<TRes> {
  _CopyWithStubImpl$Query$FetchContent$node$$Unit(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchContent$node$$User implements Query$FetchContent$node {
  Query$FetchContent$node$$User({
    required this.id,
    this.$__typename = 'User',
  });

  factory Query$FetchContent$node$$User.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchContent$node$$User(
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
    if (!(other is Query$FetchContent$node$$User) ||
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

extension UtilityExtension$Query$FetchContent$node$$User
    on Query$FetchContent$node$$User {
  CopyWith$Query$FetchContent$node$$User<Query$FetchContent$node$$User>
      get copyWith => CopyWith$Query$FetchContent$node$$User(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchContent$node$$User<TRes> {
  factory CopyWith$Query$FetchContent$node$$User(
    Query$FetchContent$node$$User instance,
    TRes Function(Query$FetchContent$node$$User) then,
  ) = _CopyWithImpl$Query$FetchContent$node$$User;

  factory CopyWith$Query$FetchContent$node$$User.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchContent$node$$User;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchContent$node$$User<TRes>
    implements CopyWith$Query$FetchContent$node$$User<TRes> {
  _CopyWithImpl$Query$FetchContent$node$$User(
    this._instance,
    this._then,
  );

  final Query$FetchContent$node$$User _instance;

  final TRes Function(Query$FetchContent$node$$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContent$node$$User(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchContent$node$$User<TRes>
    implements CopyWith$Query$FetchContent$node$$User<TRes> {
  _CopyWithStubImpl$Query$FetchContent$node$$User(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchContent$node$$UserProgress implements Query$FetchContent$node {
  Query$FetchContent$node$$UserProgress({
    required this.id,
    this.$__typename = 'UserProgress',
  });

  factory Query$FetchContent$node$$UserProgress.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchContent$node$$UserProgress(
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
    if (!(other is Query$FetchContent$node$$UserProgress) ||
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

extension UtilityExtension$Query$FetchContent$node$$UserProgress
    on Query$FetchContent$node$$UserProgress {
  CopyWith$Query$FetchContent$node$$UserProgress<
          Query$FetchContent$node$$UserProgress>
      get copyWith => CopyWith$Query$FetchContent$node$$UserProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchContent$node$$UserProgress<TRes> {
  factory CopyWith$Query$FetchContent$node$$UserProgress(
    Query$FetchContent$node$$UserProgress instance,
    TRes Function(Query$FetchContent$node$$UserProgress) then,
  ) = _CopyWithImpl$Query$FetchContent$node$$UserProgress;

  factory CopyWith$Query$FetchContent$node$$UserProgress.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchContent$node$$UserProgress;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchContent$node$$UserProgress<TRes>
    implements CopyWith$Query$FetchContent$node$$UserProgress<TRes> {
  _CopyWithImpl$Query$FetchContent$node$$UserProgress(
    this._instance,
    this._then,
  );

  final Query$FetchContent$node$$UserProgress _instance;

  final TRes Function(Query$FetchContent$node$$UserProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchContent$node$$UserProgress(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchContent$node$$UserProgress<TRes>
    implements CopyWith$Query$FetchContent$node$$UserProgress<TRes> {
  _CopyWithStubImpl$Query$FetchContent$node$$UserProgress(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$ResetContentProgress {
  factory Variables$Mutation$ResetContentProgress({
    required String id,
    required Input$ResetContentProgressInput input,
  }) =>
      Variables$Mutation$ResetContentProgress._({
        r'id': id,
        r'input': input,
      });

  Variables$Mutation$ResetContentProgress._(this._$data);

  factory Variables$Mutation$ResetContentProgress.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$input = data['input'];
    result$data['input'] = Input$ResetContentProgressInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$ResetContentProgress._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$ResetContentProgressInput get input =>
      (_$data['input'] as Input$ResetContentProgressInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$ResetContentProgress<
          Variables$Mutation$ResetContentProgress>
      get copyWith => CopyWith$Variables$Mutation$ResetContentProgress(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$ResetContentProgress) ||
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

abstract class CopyWith$Variables$Mutation$ResetContentProgress<TRes> {
  factory CopyWith$Variables$Mutation$ResetContentProgress(
    Variables$Mutation$ResetContentProgress instance,
    TRes Function(Variables$Mutation$ResetContentProgress) then,
  ) = _CopyWithImpl$Variables$Mutation$ResetContentProgress;

  factory CopyWith$Variables$Mutation$ResetContentProgress.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ResetContentProgress;

  TRes call({
    String? id,
    Input$ResetContentProgressInput? input,
  });
}

class _CopyWithImpl$Variables$Mutation$ResetContentProgress<TRes>
    implements CopyWith$Variables$Mutation$ResetContentProgress<TRes> {
  _CopyWithImpl$Variables$Mutation$ResetContentProgress(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ResetContentProgress _instance;

  final TRes Function(Variables$Mutation$ResetContentProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Mutation$ResetContentProgress._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (input != _undefined && input != null)
          'input': (input as Input$ResetContentProgressInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ResetContentProgress<TRes>
    implements CopyWith$Variables$Mutation$ResetContentProgress<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ResetContentProgress(this._res);

  TRes _res;

  call({
    String? id,
    Input$ResetContentProgressInput? input,
  }) =>
      _res;
}

class Mutation$ResetContentProgress {
  Mutation$ResetContentProgress({
    required this.resetContentProgress,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ResetContentProgress.fromJson(Map<String, dynamic> json) {
    final l$resetContentProgress = json['resetContentProgress'];
    final l$$__typename = json['__typename'];
    return Mutation$ResetContentProgress(
      resetContentProgress: Fragment$ContentFull.fromJson(
          (l$resetContentProgress as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ContentFull resetContentProgress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$resetContentProgress = resetContentProgress;
    _resultData['resetContentProgress'] = l$resetContentProgress.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$resetContentProgress = resetContentProgress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$resetContentProgress,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ResetContentProgress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$resetContentProgress = resetContentProgress;
    final lOther$resetContentProgress = other.resetContentProgress;
    if (l$resetContentProgress != lOther$resetContentProgress) {
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

extension UtilityExtension$Mutation$ResetContentProgress
    on Mutation$ResetContentProgress {
  CopyWith$Mutation$ResetContentProgress<Mutation$ResetContentProgress>
      get copyWith => CopyWith$Mutation$ResetContentProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ResetContentProgress<TRes> {
  factory CopyWith$Mutation$ResetContentProgress(
    Mutation$ResetContentProgress instance,
    TRes Function(Mutation$ResetContentProgress) then,
  ) = _CopyWithImpl$Mutation$ResetContentProgress;

  factory CopyWith$Mutation$ResetContentProgress.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ResetContentProgress;

  TRes call({
    Fragment$ContentFull? resetContentProgress,
    String? $__typename,
  });
  CopyWith$Fragment$ContentFull<TRes> get resetContentProgress;
}

class _CopyWithImpl$Mutation$ResetContentProgress<TRes>
    implements CopyWith$Mutation$ResetContentProgress<TRes> {
  _CopyWithImpl$Mutation$ResetContentProgress(
    this._instance,
    this._then,
  );

  final Mutation$ResetContentProgress _instance;

  final TRes Function(Mutation$ResetContentProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? resetContentProgress = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ResetContentProgress(
        resetContentProgress:
            resetContentProgress == _undefined || resetContentProgress == null
                ? _instance.resetContentProgress
                : (resetContentProgress as Fragment$ContentFull),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ContentFull<TRes> get resetContentProgress {
    final local$resetContentProgress = _instance.resetContentProgress;
    return CopyWith$Fragment$ContentFull(
        local$resetContentProgress, (e) => call(resetContentProgress: e));
  }
}

class _CopyWithStubImpl$Mutation$ResetContentProgress<TRes>
    implements CopyWith$Mutation$ResetContentProgress<TRes> {
  _CopyWithStubImpl$Mutation$ResetContentProgress(this._res);

  TRes _res;

  call({
    Fragment$ContentFull? resetContentProgress,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ContentFull<TRes> get resetContentProgress =>
      CopyWith$Fragment$ContentFull.stub(_res);
}

const documentNodeMutationResetContentProgress = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ResetContentProgress'),
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
          name: NameNode(value: 'ResetContentProgressInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'resetContentProgress'),
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
            name: NameNode(value: 'ContentFull'),
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
  fragmentDefinitionContentFull,
  fragmentDefinitionContent,
  fragmentDefinitionContentEpisode,
]);
Mutation$ResetContentProgress _parserFn$Mutation$ResetContentProgress(
        Map<String, dynamic> data) =>
    Mutation$ResetContentProgress.fromJson(data);
typedef OnMutationCompleted$Mutation$ResetContentProgress = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$ResetContentProgress?,
);

class Options$Mutation$ResetContentProgress
    extends graphql.MutationOptions<Mutation$ResetContentProgress> {
  Options$Mutation$ResetContentProgress({
    String? operationName,
    required Variables$Mutation$ResetContentProgress variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ResetContentProgress? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ResetContentProgress? onCompleted,
    graphql.OnMutationUpdate<Mutation$ResetContentProgress>? update,
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
                        : _parserFn$Mutation$ResetContentProgress(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationResetContentProgress,
          parserFn: _parserFn$Mutation$ResetContentProgress,
        );

  final OnMutationCompleted$Mutation$ResetContentProgress?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ResetContentProgress
    extends graphql.WatchQueryOptions<Mutation$ResetContentProgress> {
  WatchOptions$Mutation$ResetContentProgress({
    String? operationName,
    required Variables$Mutation$ResetContentProgress variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ResetContentProgress? typedOptimisticResult,
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
          document: documentNodeMutationResetContentProgress,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ResetContentProgress,
        );
}

extension ClientExtension$Mutation$ResetContentProgress
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ResetContentProgress>>
      mutate$ResetContentProgress(
              Options$Mutation$ResetContentProgress options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$ResetContentProgress>
      watchMutation$ResetContentProgress(
              WatchOptions$Mutation$ResetContentProgress options) =>
          this.watchMutation(options);
}

class Mutation$ResetContentProgress$HookResult {
  Mutation$ResetContentProgress$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$ResetContentProgress runMutation;

  final graphql.QueryResult<Mutation$ResetContentProgress> result;
}

Mutation$ResetContentProgress$HookResult useMutation$ResetContentProgress(
    [WidgetOptions$Mutation$ResetContentProgress? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$ResetContentProgress());
  return Mutation$ResetContentProgress$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ResetContentProgress>
    useWatchMutation$ResetContentProgress(
            WatchOptions$Mutation$ResetContentProgress options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ResetContentProgress
    extends graphql.MutationOptions<Mutation$ResetContentProgress> {
  WidgetOptions$Mutation$ResetContentProgress({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ResetContentProgress? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ResetContentProgress? onCompleted,
    graphql.OnMutationUpdate<Mutation$ResetContentProgress>? update,
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
                        : _parserFn$Mutation$ResetContentProgress(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationResetContentProgress,
          parserFn: _parserFn$Mutation$ResetContentProgress,
        );

  final OnMutationCompleted$Mutation$ResetContentProgress?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$ResetContentProgress
    = graphql.MultiSourceResult<Mutation$ResetContentProgress> Function(
  Variables$Mutation$ResetContentProgress, {
  Object? optimisticResult,
  Mutation$ResetContentProgress? typedOptimisticResult,
});
typedef Builder$Mutation$ResetContentProgress = widgets.Widget Function(
  RunMutation$Mutation$ResetContentProgress,
  graphql.QueryResult<Mutation$ResetContentProgress>?,
);

class Mutation$ResetContentProgress$Widget
    extends graphql_flutter.Mutation<Mutation$ResetContentProgress> {
  Mutation$ResetContentProgress$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ResetContentProgress? options,
    required Builder$Mutation$ResetContentProgress builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$ResetContentProgress(),
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

class Variables$Mutation$DownloadContent {
  factory Variables$Mutation$DownloadContent({
    required String id,
    required Input$DownloadContentInput input,
  }) =>
      Variables$Mutation$DownloadContent._({
        r'id': id,
        r'input': input,
      });

  Variables$Mutation$DownloadContent._(this._$data);

  factory Variables$Mutation$DownloadContent.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$input = data['input'];
    result$data['input'] =
        Input$DownloadContentInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$DownloadContent._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$DownloadContentInput get input =>
      (_$data['input'] as Input$DownloadContentInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$DownloadContent<
          Variables$Mutation$DownloadContent>
      get copyWith => CopyWith$Variables$Mutation$DownloadContent(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DownloadContent) ||
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

abstract class CopyWith$Variables$Mutation$DownloadContent<TRes> {
  factory CopyWith$Variables$Mutation$DownloadContent(
    Variables$Mutation$DownloadContent instance,
    TRes Function(Variables$Mutation$DownloadContent) then,
  ) = _CopyWithImpl$Variables$Mutation$DownloadContent;

  factory CopyWith$Variables$Mutation$DownloadContent.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DownloadContent;

  TRes call({
    String? id,
    Input$DownloadContentInput? input,
  });
}

class _CopyWithImpl$Variables$Mutation$DownloadContent<TRes>
    implements CopyWith$Variables$Mutation$DownloadContent<TRes> {
  _CopyWithImpl$Variables$Mutation$DownloadContent(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DownloadContent _instance;

  final TRes Function(Variables$Mutation$DownloadContent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Mutation$DownloadContent._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (input != _undefined && input != null)
          'input': (input as Input$DownloadContentInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DownloadContent<TRes>
    implements CopyWith$Variables$Mutation$DownloadContent<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DownloadContent(this._res);

  TRes _res;

  call({
    String? id,
    Input$DownloadContentInput? input,
  }) =>
      _res;
}

class Mutation$DownloadContent {
  Mutation$DownloadContent({
    required this.downloadContent,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DownloadContent.fromJson(Map<String, dynamic> json) {
    final l$downloadContent = json['downloadContent'];
    final l$$__typename = json['__typename'];
    return Mutation$DownloadContent(
      downloadContent: Mutation$DownloadContent$downloadContent.fromJson(
          (l$downloadContent as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DownloadContent$downloadContent downloadContent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$downloadContent = downloadContent;
    _resultData['downloadContent'] = l$downloadContent.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$downloadContent = downloadContent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$downloadContent,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DownloadContent) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$downloadContent = downloadContent;
    final lOther$downloadContent = other.downloadContent;
    if (l$downloadContent != lOther$downloadContent) {
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

extension UtilityExtension$Mutation$DownloadContent
    on Mutation$DownloadContent {
  CopyWith$Mutation$DownloadContent<Mutation$DownloadContent> get copyWith =>
      CopyWith$Mutation$DownloadContent(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DownloadContent<TRes> {
  factory CopyWith$Mutation$DownloadContent(
    Mutation$DownloadContent instance,
    TRes Function(Mutation$DownloadContent) then,
  ) = _CopyWithImpl$Mutation$DownloadContent;

  factory CopyWith$Mutation$DownloadContent.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DownloadContent;

  TRes call({
    Mutation$DownloadContent$downloadContent? downloadContent,
    String? $__typename,
  });
  CopyWith$Mutation$DownloadContent$downloadContent<TRes> get downloadContent;
}

class _CopyWithImpl$Mutation$DownloadContent<TRes>
    implements CopyWith$Mutation$DownloadContent<TRes> {
  _CopyWithImpl$Mutation$DownloadContent(
    this._instance,
    this._then,
  );

  final Mutation$DownloadContent _instance;

  final TRes Function(Mutation$DownloadContent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? downloadContent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DownloadContent(
        downloadContent:
            downloadContent == _undefined || downloadContent == null
                ? _instance.downloadContent
                : (downloadContent as Mutation$DownloadContent$downloadContent),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DownloadContent$downloadContent<TRes> get downloadContent {
    final local$downloadContent = _instance.downloadContent;
    return CopyWith$Mutation$DownloadContent$downloadContent(
        local$downloadContent, (e) => call(downloadContent: e));
  }
}

class _CopyWithStubImpl$Mutation$DownloadContent<TRes>
    implements CopyWith$Mutation$DownloadContent<TRes> {
  _CopyWithStubImpl$Mutation$DownloadContent(this._res);

  TRes _res;

  call({
    Mutation$DownloadContent$downloadContent? downloadContent,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DownloadContent$downloadContent<TRes> get downloadContent =>
      CopyWith$Mutation$DownloadContent$downloadContent.stub(_res);
}

const documentNodeMutationDownloadContent = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DownloadContent'),
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
          name: NameNode(value: 'DownloadContentInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'downloadContent'),
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
Mutation$DownloadContent _parserFn$Mutation$DownloadContent(
        Map<String, dynamic> data) =>
    Mutation$DownloadContent.fromJson(data);
typedef OnMutationCompleted$Mutation$DownloadContent = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DownloadContent?,
);

class Options$Mutation$DownloadContent
    extends graphql.MutationOptions<Mutation$DownloadContent> {
  Options$Mutation$DownloadContent({
    String? operationName,
    required Variables$Mutation$DownloadContent variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DownloadContent? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DownloadContent? onCompleted,
    graphql.OnMutationUpdate<Mutation$DownloadContent>? update,
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
                        : _parserFn$Mutation$DownloadContent(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDownloadContent,
          parserFn: _parserFn$Mutation$DownloadContent,
        );

  final OnMutationCompleted$Mutation$DownloadContent? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DownloadContent
    extends graphql.WatchQueryOptions<Mutation$DownloadContent> {
  WatchOptions$Mutation$DownloadContent({
    String? operationName,
    required Variables$Mutation$DownloadContent variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DownloadContent? typedOptimisticResult,
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
          document: documentNodeMutationDownloadContent,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DownloadContent,
        );
}

extension ClientExtension$Mutation$DownloadContent on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DownloadContent>> mutate$DownloadContent(
          Options$Mutation$DownloadContent options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$DownloadContent>
      watchMutation$DownloadContent(
              WatchOptions$Mutation$DownloadContent options) =>
          this.watchMutation(options);
}

class Mutation$DownloadContent$HookResult {
  Mutation$DownloadContent$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DownloadContent runMutation;

  final graphql.QueryResult<Mutation$DownloadContent> result;
}

Mutation$DownloadContent$HookResult useMutation$DownloadContent(
    [WidgetOptions$Mutation$DownloadContent? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DownloadContent());
  return Mutation$DownloadContent$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DownloadContent>
    useWatchMutation$DownloadContent(
            WatchOptions$Mutation$DownloadContent options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DownloadContent
    extends graphql.MutationOptions<Mutation$DownloadContent> {
  WidgetOptions$Mutation$DownloadContent({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DownloadContent? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DownloadContent? onCompleted,
    graphql.OnMutationUpdate<Mutation$DownloadContent>? update,
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
                        : _parserFn$Mutation$DownloadContent(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDownloadContent,
          parserFn: _parserFn$Mutation$DownloadContent,
        );

  final OnMutationCompleted$Mutation$DownloadContent? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DownloadContent
    = graphql.MultiSourceResult<Mutation$DownloadContent> Function(
  Variables$Mutation$DownloadContent, {
  Object? optimisticResult,
  Mutation$DownloadContent? typedOptimisticResult,
});
typedef Builder$Mutation$DownloadContent = widgets.Widget Function(
  RunMutation$Mutation$DownloadContent,
  graphql.QueryResult<Mutation$DownloadContent>?,
);

class Mutation$DownloadContent$Widget
    extends graphql_flutter.Mutation<Mutation$DownloadContent> {
  Mutation$DownloadContent$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DownloadContent? options,
    required Builder$Mutation$DownloadContent builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DownloadContent(),
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

class Mutation$DownloadContent$downloadContent {
  Mutation$DownloadContent$downloadContent({
    required this.success,
    this.$__typename = 'DownloadContentResult',
  });

  factory Mutation$DownloadContent$downloadContent.fromJson(
      Map<String, dynamic> json) {
    final l$success = json['success'];
    final l$$__typename = json['__typename'];
    return Mutation$DownloadContent$downloadContent(
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
    if (!(other is Mutation$DownloadContent$downloadContent) ||
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

extension UtilityExtension$Mutation$DownloadContent$downloadContent
    on Mutation$DownloadContent$downloadContent {
  CopyWith$Mutation$DownloadContent$downloadContent<
          Mutation$DownloadContent$downloadContent>
      get copyWith => CopyWith$Mutation$DownloadContent$downloadContent(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DownloadContent$downloadContent<TRes> {
  factory CopyWith$Mutation$DownloadContent$downloadContent(
    Mutation$DownloadContent$downloadContent instance,
    TRes Function(Mutation$DownloadContent$downloadContent) then,
  ) = _CopyWithImpl$Mutation$DownloadContent$downloadContent;

  factory CopyWith$Mutation$DownloadContent$downloadContent.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DownloadContent$downloadContent;

  TRes call({
    bool? success,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DownloadContent$downloadContent<TRes>
    implements CopyWith$Mutation$DownloadContent$downloadContent<TRes> {
  _CopyWithImpl$Mutation$DownloadContent$downloadContent(
    this._instance,
    this._then,
  );

  final Mutation$DownloadContent$downloadContent _instance;

  final TRes Function(Mutation$DownloadContent$downloadContent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DownloadContent$downloadContent(
        success: success == _undefined || success == null
            ? _instance.success
            : (success as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DownloadContent$downloadContent<TRes>
    implements CopyWith$Mutation$DownloadContent$downloadContent<TRes> {
  _CopyWithStubImpl$Mutation$DownloadContent$downloadContent(this._res);

  TRes _res;

  call({
    bool? success,
    String? $__typename,
  }) =>
      _res;
}
