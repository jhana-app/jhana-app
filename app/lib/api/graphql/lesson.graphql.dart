// GENERATED FILE, DO NOT MODIFY
import 'course.graphql.dart';
import 'dart:async';
import 'journal_record.graphql.dart';
import 'lesson_audio.graphql.dart';
import 'lesson_technique.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';
import 'technique.graphql.dart';
import 'unit.graphql.dart';

class Fragment$Lesson {
  Fragment$Lesson({
    required this.id,
    required this.unitID,
    required this.type,
    required this.coverimage,
    required this.title,
    required this.description,
    required this.order,
    required this.isLast,
    required this.isNext,
    required this.progress,
    this.finishedAt,
    required this.audios,
    this.$__typename = 'Lesson',
  });

  factory Fragment$Lesson.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$unitID = json['unitID'];
    final l$type = json['type'];
    final l$coverimage = json['coverimage'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$order = json['order'];
    final l$isLast = json['isLast'];
    final l$isNext = json['isNext'];
    final l$progress = json['progress'];
    final l$finishedAt = json['finishedAt'];
    final l$audios = json['audios'];
    final l$$__typename = json['__typename'];
    return Fragment$Lesson(
      id: (l$id as String),
      unitID: (l$unitID as String),
      type: fromJson$Enum$LessonLessonType((l$type as String)),
      coverimage: (l$coverimage as String),
      title: (l$title as String),
      description: (l$description as String),
      order: (l$order as int),
      isLast: (l$isLast as bool),
      isNext: (l$isNext as bool),
      progress: (l$progress as int),
      finishedAt: (l$finishedAt as String?),
      audios: (l$audios as List<dynamic>)
          .map(
              (e) => Fragment$LessonAudio.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String unitID;

  final Enum$LessonLessonType type;

  final String coverimage;

  final String title;

  final String description;

  final int order;

  final bool isLast;

  final bool isNext;

  final int progress;

  final String? finishedAt;

  final List<Fragment$LessonAudio> audios;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$unitID = unitID;
    _resultData['unitID'] = l$unitID;
    final l$type = type;
    _resultData['type'] = toJson$Enum$LessonLessonType(l$type);
    final l$coverimage = coverimage;
    _resultData['coverimage'] = l$coverimage;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$isLast = isLast;
    _resultData['isLast'] = l$isLast;
    final l$isNext = isNext;
    _resultData['isNext'] = l$isNext;
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$finishedAt = finishedAt;
    _resultData['finishedAt'] = l$finishedAt;
    final l$audios = audios;
    _resultData['audios'] = l$audios.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$unitID = unitID;
    final l$type = type;
    final l$coverimage = coverimage;
    final l$title = title;
    final l$description = description;
    final l$order = order;
    final l$isLast = isLast;
    final l$isNext = isNext;
    final l$progress = progress;
    final l$finishedAt = finishedAt;
    final l$audios = audios;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$unitID,
      l$type,
      l$coverimage,
      l$title,
      l$description,
      l$order,
      l$isLast,
      l$isNext,
      l$progress,
      l$finishedAt,
      Object.hashAll(l$audios.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Lesson) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$unitID = unitID;
    final lOther$unitID = other.unitID;
    if (l$unitID != lOther$unitID) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$isLast = isLast;
    final lOther$isLast = other.isLast;
    if (l$isLast != lOther$isLast) {
      return false;
    }
    final l$isNext = isNext;
    final lOther$isNext = other.isNext;
    if (l$isNext != lOther$isNext) {
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
    final l$audios = audios;
    final lOther$audios = other.audios;
    if (l$audios.length != lOther$audios.length) {
      return false;
    }
    for (int i = 0; i < l$audios.length; i++) {
      final l$audios$entry = l$audios[i];
      final lOther$audios$entry = lOther$audios[i];
      if (l$audios$entry != lOther$audios$entry) {
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

extension UtilityExtension$Fragment$Lesson on Fragment$Lesson {
  CopyWith$Fragment$Lesson<Fragment$Lesson> get copyWith =>
      CopyWith$Fragment$Lesson(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Lesson<TRes> {
  factory CopyWith$Fragment$Lesson(
    Fragment$Lesson instance,
    TRes Function(Fragment$Lesson) then,
  ) = _CopyWithImpl$Fragment$Lesson;

  factory CopyWith$Fragment$Lesson.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Lesson;

  TRes call({
    String? id,
    String? unitID,
    Enum$LessonLessonType? type,
    String? coverimage,
    String? title,
    String? description,
    int? order,
    bool? isLast,
    bool? isNext,
    int? progress,
    String? finishedAt,
    List<Fragment$LessonAudio>? audios,
    String? $__typename,
  });
  TRes audios(
      Iterable<Fragment$LessonAudio> Function(
              Iterable<CopyWith$Fragment$LessonAudio<Fragment$LessonAudio>>)
          _fn);
}

class _CopyWithImpl$Fragment$Lesson<TRes>
    implements CopyWith$Fragment$Lesson<TRes> {
  _CopyWithImpl$Fragment$Lesson(
    this._instance,
    this._then,
  );

  final Fragment$Lesson _instance;

  final TRes Function(Fragment$Lesson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? unitID = _undefined,
    Object? type = _undefined,
    Object? coverimage = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? order = _undefined,
    Object? isLast = _undefined,
    Object? isNext = _undefined,
    Object? progress = _undefined,
    Object? finishedAt = _undefined,
    Object? audios = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Lesson(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        unitID: unitID == _undefined || unitID == null
            ? _instance.unitID
            : (unitID as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$LessonLessonType),
        coverimage: coverimage == _undefined || coverimage == null
            ? _instance.coverimage
            : (coverimage as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        isLast: isLast == _undefined || isLast == null
            ? _instance.isLast
            : (isLast as bool),
        isNext: isNext == _undefined || isNext == null
            ? _instance.isNext
            : (isNext as bool),
        progress: progress == _undefined || progress == null
            ? _instance.progress
            : (progress as int),
        finishedAt: finishedAt == _undefined
            ? _instance.finishedAt
            : (finishedAt as String?),
        audios: audios == _undefined || audios == null
            ? _instance.audios
            : (audios as List<Fragment$LessonAudio>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes audios(
          Iterable<Fragment$LessonAudio> Function(
                  Iterable<CopyWith$Fragment$LessonAudio<Fragment$LessonAudio>>)
              _fn) =>
      call(
          audios: _fn(_instance.audios.map((e) => CopyWith$Fragment$LessonAudio(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Fragment$Lesson<TRes>
    implements CopyWith$Fragment$Lesson<TRes> {
  _CopyWithStubImpl$Fragment$Lesson(this._res);

  TRes _res;

  call({
    String? id,
    String? unitID,
    Enum$LessonLessonType? type,
    String? coverimage,
    String? title,
    String? description,
    int? order,
    bool? isLast,
    bool? isNext,
    int? progress,
    String? finishedAt,
    List<Fragment$LessonAudio>? audios,
    String? $__typename,
  }) =>
      _res;

  audios(_fn) => _res;
}

const fragmentDefinitionLesson = FragmentDefinitionNode(
  name: NameNode(value: 'Lesson'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Lesson'),
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
      name: NameNode(value: 'unitID'),
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
      name: NameNode(value: 'description'),
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
      name: NameNode(value: 'isLast'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isNext'),
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
      name: NameNode(value: 'audios'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'LessonAudio'),
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
const documentNodeFragmentLesson = DocumentNode(definitions: [
  fragmentDefinitionLesson,
  fragmentDefinitionLessonAudio,
]);

extension ClientExtension$Fragment$Lesson on graphql.GraphQLClient {
  void writeFragment$Lesson({
    required Fragment$Lesson data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Lesson',
            document: documentNodeFragmentLesson,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Lesson? readFragment$Lesson({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Lesson',
          document: documentNodeFragmentLesson,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Lesson.fromJson(result);
  }
}

class Fragment$LessonFull implements Fragment$Lesson {
  Fragment$LessonFull({
    required this.id,
    required this.unitID,
    required this.type,
    required this.coverimage,
    required this.title,
    required this.description,
    required this.order,
    required this.isLast,
    required this.isNext,
    required this.progress,
    this.finishedAt,
    required this.audios,
    this.$__typename = 'Lesson',
    required this.unit,
    required this.lessonTechniques,
  });

  factory Fragment$LessonFull.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$unitID = json['unitID'];
    final l$type = json['type'];
    final l$coverimage = json['coverimage'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$order = json['order'];
    final l$isLast = json['isLast'];
    final l$isNext = json['isNext'];
    final l$progress = json['progress'];
    final l$finishedAt = json['finishedAt'];
    final l$audios = json['audios'];
    final l$$__typename = json['__typename'];
    final l$unit = json['unit'];
    final l$lessonTechniques = json['lessonTechniques'];
    return Fragment$LessonFull(
      id: (l$id as String),
      unitID: (l$unitID as String),
      type: fromJson$Enum$LessonLessonType((l$type as String)),
      coverimage: (l$coverimage as String),
      title: (l$title as String),
      description: (l$description as String),
      order: (l$order as int),
      isLast: (l$isLast as bool),
      isNext: (l$isNext as bool),
      progress: (l$progress as int),
      finishedAt: (l$finishedAt as String?),
      audios: (l$audios as List<dynamic>)
          .map(
              (e) => Fragment$LessonAudio.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
      unit: Fragment$Unit.fromJson((l$unit as Map<String, dynamic>)),
      lessonTechniques: (l$lessonTechniques as List<dynamic>)
          .map((e) =>
              Fragment$LessonTechnique.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String id;

  final String unitID;

  final Enum$LessonLessonType type;

  final String coverimage;

  final String title;

  final String description;

  final int order;

  final bool isLast;

  final bool isNext;

  final int progress;

  final String? finishedAt;

  final List<Fragment$LessonAudio> audios;

  final String $__typename;

  final Fragment$Unit unit;

  final List<Fragment$LessonTechnique> lessonTechniques;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$unitID = unitID;
    _resultData['unitID'] = l$unitID;
    final l$type = type;
    _resultData['type'] = toJson$Enum$LessonLessonType(l$type);
    final l$coverimage = coverimage;
    _resultData['coverimage'] = l$coverimage;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$isLast = isLast;
    _resultData['isLast'] = l$isLast;
    final l$isNext = isNext;
    _resultData['isNext'] = l$isNext;
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$finishedAt = finishedAt;
    _resultData['finishedAt'] = l$finishedAt;
    final l$audios = audios;
    _resultData['audios'] = l$audios.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$unit = unit;
    _resultData['unit'] = l$unit.toJson();
    final l$lessonTechniques = lessonTechniques;
    _resultData['lessonTechniques'] =
        l$lessonTechniques.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$unitID = unitID;
    final l$type = type;
    final l$coverimage = coverimage;
    final l$title = title;
    final l$description = description;
    final l$order = order;
    final l$isLast = isLast;
    final l$isNext = isNext;
    final l$progress = progress;
    final l$finishedAt = finishedAt;
    final l$audios = audios;
    final l$$__typename = $__typename;
    final l$unit = unit;
    final l$lessonTechniques = lessonTechniques;
    return Object.hashAll([
      l$id,
      l$unitID,
      l$type,
      l$coverimage,
      l$title,
      l$description,
      l$order,
      l$isLast,
      l$isNext,
      l$progress,
      l$finishedAt,
      Object.hashAll(l$audios.map((v) => v)),
      l$$__typename,
      l$unit,
      Object.hashAll(l$lessonTechniques.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$LessonFull) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$unitID = unitID;
    final lOther$unitID = other.unitID;
    if (l$unitID != lOther$unitID) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$isLast = isLast;
    final lOther$isLast = other.isLast;
    if (l$isLast != lOther$isLast) {
      return false;
    }
    final l$isNext = isNext;
    final lOther$isNext = other.isNext;
    if (l$isNext != lOther$isNext) {
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
    final l$audios = audios;
    final lOther$audios = other.audios;
    if (l$audios.length != lOther$audios.length) {
      return false;
    }
    for (int i = 0; i < l$audios.length; i++) {
      final l$audios$entry = l$audios[i];
      final lOther$audios$entry = lOther$audios[i];
      if (l$audios$entry != lOther$audios$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$unit = unit;
    final lOther$unit = other.unit;
    if (l$unit != lOther$unit) {
      return false;
    }
    final l$lessonTechniques = lessonTechniques;
    final lOther$lessonTechniques = other.lessonTechniques;
    if (l$lessonTechniques.length != lOther$lessonTechniques.length) {
      return false;
    }
    for (int i = 0; i < l$lessonTechniques.length; i++) {
      final l$lessonTechniques$entry = l$lessonTechniques[i];
      final lOther$lessonTechniques$entry = lOther$lessonTechniques[i];
      if (l$lessonTechniques$entry != lOther$lessonTechniques$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Fragment$LessonFull on Fragment$LessonFull {
  CopyWith$Fragment$LessonFull<Fragment$LessonFull> get copyWith =>
      CopyWith$Fragment$LessonFull(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$LessonFull<TRes> {
  factory CopyWith$Fragment$LessonFull(
    Fragment$LessonFull instance,
    TRes Function(Fragment$LessonFull) then,
  ) = _CopyWithImpl$Fragment$LessonFull;

  factory CopyWith$Fragment$LessonFull.stub(TRes res) =
      _CopyWithStubImpl$Fragment$LessonFull;

  TRes call({
    String? id,
    String? unitID,
    Enum$LessonLessonType? type,
    String? coverimage,
    String? title,
    String? description,
    int? order,
    bool? isLast,
    bool? isNext,
    int? progress,
    String? finishedAt,
    List<Fragment$LessonAudio>? audios,
    String? $__typename,
    Fragment$Unit? unit,
    List<Fragment$LessonTechnique>? lessonTechniques,
  });
  TRes audios(
      Iterable<Fragment$LessonAudio> Function(
              Iterable<CopyWith$Fragment$LessonAudio<Fragment$LessonAudio>>)
          _fn);
  CopyWith$Fragment$Unit<TRes> get unit;
  TRes lessonTechniques(
      Iterable<Fragment$LessonTechnique> Function(
              Iterable<
                  CopyWith$Fragment$LessonTechnique<Fragment$LessonTechnique>>)
          _fn);
}

class _CopyWithImpl$Fragment$LessonFull<TRes>
    implements CopyWith$Fragment$LessonFull<TRes> {
  _CopyWithImpl$Fragment$LessonFull(
    this._instance,
    this._then,
  );

  final Fragment$LessonFull _instance;

  final TRes Function(Fragment$LessonFull) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? unitID = _undefined,
    Object? type = _undefined,
    Object? coverimage = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? order = _undefined,
    Object? isLast = _undefined,
    Object? isNext = _undefined,
    Object? progress = _undefined,
    Object? finishedAt = _undefined,
    Object? audios = _undefined,
    Object? $__typename = _undefined,
    Object? unit = _undefined,
    Object? lessonTechniques = _undefined,
  }) =>
      _then(Fragment$LessonFull(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        unitID: unitID == _undefined || unitID == null
            ? _instance.unitID
            : (unitID as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$LessonLessonType),
        coverimage: coverimage == _undefined || coverimage == null
            ? _instance.coverimage
            : (coverimage as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        isLast: isLast == _undefined || isLast == null
            ? _instance.isLast
            : (isLast as bool),
        isNext: isNext == _undefined || isNext == null
            ? _instance.isNext
            : (isNext as bool),
        progress: progress == _undefined || progress == null
            ? _instance.progress
            : (progress as int),
        finishedAt: finishedAt == _undefined
            ? _instance.finishedAt
            : (finishedAt as String?),
        audios: audios == _undefined || audios == null
            ? _instance.audios
            : (audios as List<Fragment$LessonAudio>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        unit: unit == _undefined || unit == null
            ? _instance.unit
            : (unit as Fragment$Unit),
        lessonTechniques:
            lessonTechniques == _undefined || lessonTechniques == null
                ? _instance.lessonTechniques
                : (lessonTechniques as List<Fragment$LessonTechnique>),
      ));

  TRes audios(
          Iterable<Fragment$LessonAudio> Function(
                  Iterable<CopyWith$Fragment$LessonAudio<Fragment$LessonAudio>>)
              _fn) =>
      call(
          audios: _fn(_instance.audios.map((e) => CopyWith$Fragment$LessonAudio(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Fragment$Unit<TRes> get unit {
    final local$unit = _instance.unit;
    return CopyWith$Fragment$Unit(local$unit, (e) => call(unit: e));
  }

  TRes lessonTechniques(
          Iterable<Fragment$LessonTechnique> Function(
                  Iterable<
                      CopyWith$Fragment$LessonTechnique<
                          Fragment$LessonTechnique>>)
              _fn) =>
      call(
          lessonTechniques: _fn(_instance.lessonTechniques
              .map((e) => CopyWith$Fragment$LessonTechnique(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$LessonFull<TRes>
    implements CopyWith$Fragment$LessonFull<TRes> {
  _CopyWithStubImpl$Fragment$LessonFull(this._res);

  TRes _res;

  call({
    String? id,
    String? unitID,
    Enum$LessonLessonType? type,
    String? coverimage,
    String? title,
    String? description,
    int? order,
    bool? isLast,
    bool? isNext,
    int? progress,
    String? finishedAt,
    List<Fragment$LessonAudio>? audios,
    String? $__typename,
    Fragment$Unit? unit,
    List<Fragment$LessonTechnique>? lessonTechniques,
  }) =>
      _res;

  audios(_fn) => _res;

  CopyWith$Fragment$Unit<TRes> get unit => CopyWith$Fragment$Unit.stub(_res);

  lessonTechniques(_fn) => _res;
}

const fragmentDefinitionLessonFull = FragmentDefinitionNode(
  name: NameNode(value: 'LessonFull'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Lesson'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FragmentSpreadNode(
      name: NameNode(value: 'Lesson'),
      directives: [],
    ),
    FieldNode(
      name: NameNode(value: 'unit'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Unit'),
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
      name: NameNode(value: 'lessonTechniques'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'LessonTechnique'),
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
const documentNodeFragmentLessonFull = DocumentNode(definitions: [
  fragmentDefinitionLessonFull,
  fragmentDefinitionLesson,
  fragmentDefinitionLessonAudio,
  fragmentDefinitionUnit,
  fragmentDefinitionCourse,
  fragmentDefinitionLessonTechnique,
  fragmentDefinitionTechnique,
]);

extension ClientExtension$Fragment$LessonFull on graphql.GraphQLClient {
  void writeFragment$LessonFull({
    required Fragment$LessonFull data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'LessonFull',
            document: documentNodeFragmentLessonFull,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$LessonFull? readFragment$LessonFull({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'LessonFull',
          document: documentNodeFragmentLessonFull,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$LessonFull.fromJson(result);
  }
}

class Variables$Query$FetchLesson {
  factory Variables$Query$FetchLesson({required String lessonId}) =>
      Variables$Query$FetchLesson._({
        r'lessonId': lessonId,
      });

  Variables$Query$FetchLesson._(this._$data);

  factory Variables$Query$FetchLesson.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$lessonId = data['lessonId'];
    result$data['lessonId'] = (l$lessonId as String);
    return Variables$Query$FetchLesson._(result$data);
  }

  Map<String, dynamic> _$data;

  String get lessonId => (_$data['lessonId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$lessonId = lessonId;
    result$data['lessonId'] = l$lessonId;
    return result$data;
  }

  CopyWith$Variables$Query$FetchLesson<Variables$Query$FetchLesson>
      get copyWith => CopyWith$Variables$Query$FetchLesson(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FetchLesson) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lessonId = lessonId;
    final lOther$lessonId = other.lessonId;
    if (l$lessonId != lOther$lessonId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$lessonId = lessonId;
    return Object.hashAll([l$lessonId]);
  }
}

abstract class CopyWith$Variables$Query$FetchLesson<TRes> {
  factory CopyWith$Variables$Query$FetchLesson(
    Variables$Query$FetchLesson instance,
    TRes Function(Variables$Query$FetchLesson) then,
  ) = _CopyWithImpl$Variables$Query$FetchLesson;

  factory CopyWith$Variables$Query$FetchLesson.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FetchLesson;

  TRes call({String? lessonId});
}

class _CopyWithImpl$Variables$Query$FetchLesson<TRes>
    implements CopyWith$Variables$Query$FetchLesson<TRes> {
  _CopyWithImpl$Variables$Query$FetchLesson(
    this._instance,
    this._then,
  );

  final Variables$Query$FetchLesson _instance;

  final TRes Function(Variables$Query$FetchLesson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? lessonId = _undefined}) =>
      _then(Variables$Query$FetchLesson._({
        ..._instance._$data,
        if (lessonId != _undefined && lessonId != null)
          'lessonId': (lessonId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$FetchLesson<TRes>
    implements CopyWith$Variables$Query$FetchLesson<TRes> {
  _CopyWithStubImpl$Variables$Query$FetchLesson(this._res);

  TRes _res;

  call({String? lessonId}) => _res;
}

class Query$FetchLesson {
  Query$FetchLesson({
    this.node,
    this.$__typename = 'Query',
  });

  factory Query$FetchLesson.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$FetchLesson(
      node: l$node == null
          ? null
          : Query$FetchLesson$node.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchLesson$node? node;

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
    if (!(other is Query$FetchLesson) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FetchLesson on Query$FetchLesson {
  CopyWith$Query$FetchLesson<Query$FetchLesson> get copyWith =>
      CopyWith$Query$FetchLesson(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchLesson<TRes> {
  factory CopyWith$Query$FetchLesson(
    Query$FetchLesson instance,
    TRes Function(Query$FetchLesson) then,
  ) = _CopyWithImpl$Query$FetchLesson;

  factory CopyWith$Query$FetchLesson.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchLesson;

  TRes call({
    Query$FetchLesson$node? node,
    String? $__typename,
  });
  CopyWith$Query$FetchLesson$node<TRes> get node;
}

class _CopyWithImpl$Query$FetchLesson<TRes>
    implements CopyWith$Query$FetchLesson<TRes> {
  _CopyWithImpl$Query$FetchLesson(
    this._instance,
    this._then,
  );

  final Query$FetchLesson _instance;

  final TRes Function(Query$FetchLesson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchLesson(
        node: node == _undefined
            ? _instance.node
            : (node as Query$FetchLesson$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FetchLesson$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$FetchLesson$node.stub(_then(_instance))
        : CopyWith$Query$FetchLesson$node(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$FetchLesson<TRes>
    implements CopyWith$Query$FetchLesson<TRes> {
  _CopyWithStubImpl$Query$FetchLesson(this._res);

  TRes _res;

  call({
    Query$FetchLesson$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FetchLesson$node<TRes> get node =>
      CopyWith$Query$FetchLesson$node.stub(_res);
}

const documentNodeQueryFetchLesson = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchLesson'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lessonId')),
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
            value: VariableNode(name: NameNode(value: 'lessonId')),
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
              name: NameNode(value: 'Lesson'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'LessonFull'),
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
  fragmentDefinitionLessonFull,
  fragmentDefinitionLesson,
  fragmentDefinitionLessonAudio,
  fragmentDefinitionUnit,
  fragmentDefinitionCourse,
  fragmentDefinitionLessonTechnique,
  fragmentDefinitionTechnique,
]);
Query$FetchLesson _parserFn$Query$FetchLesson(Map<String, dynamic> data) =>
    Query$FetchLesson.fromJson(data);
typedef OnQueryComplete$Query$FetchLesson = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FetchLesson?,
);

class Options$Query$FetchLesson
    extends graphql.QueryOptions<Query$FetchLesson> {
  Options$Query$FetchLesson({
    String? operationName,
    required Variables$Query$FetchLesson variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchLesson? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FetchLesson? onComplete,
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
                    data == null ? null : _parserFn$Query$FetchLesson(data),
                  ),
          onError: onError,
          document: documentNodeQueryFetchLesson,
          parserFn: _parserFn$Query$FetchLesson,
        );

  final OnQueryComplete$Query$FetchLesson? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FetchLesson
    extends graphql.WatchQueryOptions<Query$FetchLesson> {
  WatchOptions$Query$FetchLesson({
    String? operationName,
    required Variables$Query$FetchLesson variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchLesson? typedOptimisticResult,
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
          document: documentNodeQueryFetchLesson,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchLesson,
        );
}

class FetchMoreOptions$Query$FetchLesson extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchLesson({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$FetchLesson variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryFetchLesson,
        );
}

extension ClientExtension$Query$FetchLesson on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchLesson>> query$FetchLesson(
          Options$Query$FetchLesson options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$FetchLesson> watchQuery$FetchLesson(
          WatchOptions$Query$FetchLesson options) =>
      this.watchQuery(options);
  void writeQuery$FetchLesson({
    required Query$FetchLesson data,
    required Variables$Query$FetchLesson variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryFetchLesson),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchLesson? readQuery$FetchLesson({
    required Variables$Query$FetchLesson variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFetchLesson),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchLesson.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchLesson> useQuery$FetchLesson(
        Options$Query$FetchLesson options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$FetchLesson> useWatchQuery$FetchLesson(
        WatchOptions$Query$FetchLesson options) =>
    graphql_flutter.useWatchQuery(options);

class Query$FetchLesson$Widget
    extends graphql_flutter.Query<Query$FetchLesson> {
  Query$FetchLesson$Widget({
    widgets.Key? key,
    required Options$Query$FetchLesson options,
    required graphql_flutter.QueryBuilder<Query$FetchLesson> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$FetchLesson$node {
  Query$FetchLesson$node({
    required this.id,
    required this.$__typename,
  });

  factory Query$FetchLesson$node.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Lesson":
        return Query$FetchLesson$node$$Lesson.fromJson(json);

      case "Content":
        return Query$FetchLesson$node$$Content.fromJson(json);

      case "ContentEpisode":
        return Query$FetchLesson$node$$ContentEpisode.fromJson(json);

      case "ContentProgress":
        return Query$FetchLesson$node$$ContentProgress.fromJson(json);

      case "Course":
        return Query$FetchLesson$node$$Course.fromJson(json);

      case "JournalRecord":
        return Query$FetchLesson$node$$JournalRecord.fromJson(json);

      case "LessonAudio":
        return Query$FetchLesson$node$$LessonAudio.fromJson(json);

      case "Technique":
        return Query$FetchLesson$node$$Technique.fromJson(json);

      case "Unit":
        return Query$FetchLesson$node$$Unit.fromJson(json);

      case "User":
        return Query$FetchLesson$node$$User.fromJson(json);

      case "UserProgress":
        return Query$FetchLesson$node$$UserProgress.fromJson(json);

      default:
        final l$id = json['id'];
        final l$$__typename = json['__typename'];
        return Query$FetchLesson$node(
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
    if (!(other is Query$FetchLesson$node) ||
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

extension UtilityExtension$Query$FetchLesson$node on Query$FetchLesson$node {
  CopyWith$Query$FetchLesson$node<Query$FetchLesson$node> get copyWith =>
      CopyWith$Query$FetchLesson$node(
        this,
        (i) => i,
      );
  _T when<_T>({
    required _T Function(Query$FetchLesson$node$$Lesson) lesson,
    required _T Function(Query$FetchLesson$node$$Content) content,
    required _T Function(Query$FetchLesson$node$$ContentEpisode) contentEpisode,
    required _T Function(Query$FetchLesson$node$$ContentProgress)
        contentProgress,
    required _T Function(Query$FetchLesson$node$$Course) course,
    required _T Function(Query$FetchLesson$node$$JournalRecord) journalRecord,
    required _T Function(Query$FetchLesson$node$$LessonAudio) lessonAudio,
    required _T Function(Query$FetchLesson$node$$Technique) technique,
    required _T Function(Query$FetchLesson$node$$Unit) unit,
    required _T Function(Query$FetchLesson$node$$User) user,
    required _T Function(Query$FetchLesson$node$$UserProgress) userProgress,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Lesson":
        return lesson(this as Query$FetchLesson$node$$Lesson);

      case "Content":
        return content(this as Query$FetchLesson$node$$Content);

      case "ContentEpisode":
        return contentEpisode(this as Query$FetchLesson$node$$ContentEpisode);

      case "ContentProgress":
        return contentProgress(this as Query$FetchLesson$node$$ContentProgress);

      case "Course":
        return course(this as Query$FetchLesson$node$$Course);

      case "JournalRecord":
        return journalRecord(this as Query$FetchLesson$node$$JournalRecord);

      case "LessonAudio":
        return lessonAudio(this as Query$FetchLesson$node$$LessonAudio);

      case "Technique":
        return technique(this as Query$FetchLesson$node$$Technique);

      case "Unit":
        return unit(this as Query$FetchLesson$node$$Unit);

      case "User":
        return user(this as Query$FetchLesson$node$$User);

      case "UserProgress":
        return userProgress(this as Query$FetchLesson$node$$UserProgress);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$FetchLesson$node$$Lesson)? lesson,
    _T Function(Query$FetchLesson$node$$Content)? content,
    _T Function(Query$FetchLesson$node$$ContentEpisode)? contentEpisode,
    _T Function(Query$FetchLesson$node$$ContentProgress)? contentProgress,
    _T Function(Query$FetchLesson$node$$Course)? course,
    _T Function(Query$FetchLesson$node$$JournalRecord)? journalRecord,
    _T Function(Query$FetchLesson$node$$LessonAudio)? lessonAudio,
    _T Function(Query$FetchLesson$node$$Technique)? technique,
    _T Function(Query$FetchLesson$node$$Unit)? unit,
    _T Function(Query$FetchLesson$node$$User)? user,
    _T Function(Query$FetchLesson$node$$UserProgress)? userProgress,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Lesson":
        if (lesson != null) {
          return lesson(this as Query$FetchLesson$node$$Lesson);
        } else {
          return orElse();
        }

      case "Content":
        if (content != null) {
          return content(this as Query$FetchLesson$node$$Content);
        } else {
          return orElse();
        }

      case "ContentEpisode":
        if (contentEpisode != null) {
          return contentEpisode(this as Query$FetchLesson$node$$ContentEpisode);
        } else {
          return orElse();
        }

      case "ContentProgress":
        if (contentProgress != null) {
          return contentProgress(
              this as Query$FetchLesson$node$$ContentProgress);
        } else {
          return orElse();
        }

      case "Course":
        if (course != null) {
          return course(this as Query$FetchLesson$node$$Course);
        } else {
          return orElse();
        }

      case "JournalRecord":
        if (journalRecord != null) {
          return journalRecord(this as Query$FetchLesson$node$$JournalRecord);
        } else {
          return orElse();
        }

      case "LessonAudio":
        if (lessonAudio != null) {
          return lessonAudio(this as Query$FetchLesson$node$$LessonAudio);
        } else {
          return orElse();
        }

      case "Technique":
        if (technique != null) {
          return technique(this as Query$FetchLesson$node$$Technique);
        } else {
          return orElse();
        }

      case "Unit":
        if (unit != null) {
          return unit(this as Query$FetchLesson$node$$Unit);
        } else {
          return orElse();
        }

      case "User":
        if (user != null) {
          return user(this as Query$FetchLesson$node$$User);
        } else {
          return orElse();
        }

      case "UserProgress":
        if (userProgress != null) {
          return userProgress(this as Query$FetchLesson$node$$UserProgress);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$FetchLesson$node<TRes> {
  factory CopyWith$Query$FetchLesson$node(
    Query$FetchLesson$node instance,
    TRes Function(Query$FetchLesson$node) then,
  ) = _CopyWithImpl$Query$FetchLesson$node;

  factory CopyWith$Query$FetchLesson$node.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchLesson$node;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchLesson$node<TRes>
    implements CopyWith$Query$FetchLesson$node<TRes> {
  _CopyWithImpl$Query$FetchLesson$node(
    this._instance,
    this._then,
  );

  final Query$FetchLesson$node _instance;

  final TRes Function(Query$FetchLesson$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchLesson$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchLesson$node<TRes>
    implements CopyWith$Query$FetchLesson$node<TRes> {
  _CopyWithStubImpl$Query$FetchLesson$node(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchLesson$node$$Lesson
    implements Fragment$LessonFull, Fragment$Lesson, Query$FetchLesson$node {
  Query$FetchLesson$node$$Lesson({
    required this.id,
    required this.unitID,
    required this.type,
    required this.coverimage,
    required this.title,
    required this.description,
    required this.order,
    required this.isLast,
    required this.isNext,
    required this.progress,
    this.finishedAt,
    required this.audios,
    this.$__typename = 'Lesson',
    required this.unit,
    required this.lessonTechniques,
  });

  factory Query$FetchLesson$node$$Lesson.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$unitID = json['unitID'];
    final l$type = json['type'];
    final l$coverimage = json['coverimage'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$order = json['order'];
    final l$isLast = json['isLast'];
    final l$isNext = json['isNext'];
    final l$progress = json['progress'];
    final l$finishedAt = json['finishedAt'];
    final l$audios = json['audios'];
    final l$$__typename = json['__typename'];
    final l$unit = json['unit'];
    final l$lessonTechniques = json['lessonTechniques'];
    return Query$FetchLesson$node$$Lesson(
      id: (l$id as String),
      unitID: (l$unitID as String),
      type: fromJson$Enum$LessonLessonType((l$type as String)),
      coverimage: (l$coverimage as String),
      title: (l$title as String),
      description: (l$description as String),
      order: (l$order as int),
      isLast: (l$isLast as bool),
      isNext: (l$isNext as bool),
      progress: (l$progress as int),
      finishedAt: (l$finishedAt as String?),
      audios: (l$audios as List<dynamic>)
          .map(
              (e) => Fragment$LessonAudio.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
      unit: Fragment$Unit.fromJson((l$unit as Map<String, dynamic>)),
      lessonTechniques: (l$lessonTechniques as List<dynamic>)
          .map((e) =>
              Fragment$LessonTechnique.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final String id;

  final String unitID;

  final Enum$LessonLessonType type;

  final String coverimage;

  final String title;

  final String description;

  final int order;

  final bool isLast;

  final bool isNext;

  final int progress;

  final String? finishedAt;

  final List<Fragment$LessonAudio> audios;

  final String $__typename;

  final Fragment$Unit unit;

  final List<Fragment$LessonTechnique> lessonTechniques;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$unitID = unitID;
    _resultData['unitID'] = l$unitID;
    final l$type = type;
    _resultData['type'] = toJson$Enum$LessonLessonType(l$type);
    final l$coverimage = coverimage;
    _resultData['coverimage'] = l$coverimage;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$isLast = isLast;
    _resultData['isLast'] = l$isLast;
    final l$isNext = isNext;
    _resultData['isNext'] = l$isNext;
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$finishedAt = finishedAt;
    _resultData['finishedAt'] = l$finishedAt;
    final l$audios = audios;
    _resultData['audios'] = l$audios.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$unit = unit;
    _resultData['unit'] = l$unit.toJson();
    final l$lessonTechniques = lessonTechniques;
    _resultData['lessonTechniques'] =
        l$lessonTechniques.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$unitID = unitID;
    final l$type = type;
    final l$coverimage = coverimage;
    final l$title = title;
    final l$description = description;
    final l$order = order;
    final l$isLast = isLast;
    final l$isNext = isNext;
    final l$progress = progress;
    final l$finishedAt = finishedAt;
    final l$audios = audios;
    final l$$__typename = $__typename;
    final l$unit = unit;
    final l$lessonTechniques = lessonTechniques;
    return Object.hashAll([
      l$id,
      l$unitID,
      l$type,
      l$coverimage,
      l$title,
      l$description,
      l$order,
      l$isLast,
      l$isNext,
      l$progress,
      l$finishedAt,
      Object.hashAll(l$audios.map((v) => v)),
      l$$__typename,
      l$unit,
      Object.hashAll(l$lessonTechniques.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchLesson$node$$Lesson) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$unitID = unitID;
    final lOther$unitID = other.unitID;
    if (l$unitID != lOther$unitID) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$isLast = isLast;
    final lOther$isLast = other.isLast;
    if (l$isLast != lOther$isLast) {
      return false;
    }
    final l$isNext = isNext;
    final lOther$isNext = other.isNext;
    if (l$isNext != lOther$isNext) {
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
    final l$audios = audios;
    final lOther$audios = other.audios;
    if (l$audios.length != lOther$audios.length) {
      return false;
    }
    for (int i = 0; i < l$audios.length; i++) {
      final l$audios$entry = l$audios[i];
      final lOther$audios$entry = lOther$audios[i];
      if (l$audios$entry != lOther$audios$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$unit = unit;
    final lOther$unit = other.unit;
    if (l$unit != lOther$unit) {
      return false;
    }
    final l$lessonTechniques = lessonTechniques;
    final lOther$lessonTechniques = other.lessonTechniques;
    if (l$lessonTechniques.length != lOther$lessonTechniques.length) {
      return false;
    }
    for (int i = 0; i < l$lessonTechniques.length; i++) {
      final l$lessonTechniques$entry = l$lessonTechniques[i];
      final lOther$lessonTechniques$entry = lOther$lessonTechniques[i];
      if (l$lessonTechniques$entry != lOther$lessonTechniques$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchLesson$node$$Lesson
    on Query$FetchLesson$node$$Lesson {
  CopyWith$Query$FetchLesson$node$$Lesson<Query$FetchLesson$node$$Lesson>
      get copyWith => CopyWith$Query$FetchLesson$node$$Lesson(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchLesson$node$$Lesson<TRes> {
  factory CopyWith$Query$FetchLesson$node$$Lesson(
    Query$FetchLesson$node$$Lesson instance,
    TRes Function(Query$FetchLesson$node$$Lesson) then,
  ) = _CopyWithImpl$Query$FetchLesson$node$$Lesson;

  factory CopyWith$Query$FetchLesson$node$$Lesson.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchLesson$node$$Lesson;

  TRes call({
    String? id,
    String? unitID,
    Enum$LessonLessonType? type,
    String? coverimage,
    String? title,
    String? description,
    int? order,
    bool? isLast,
    bool? isNext,
    int? progress,
    String? finishedAt,
    List<Fragment$LessonAudio>? audios,
    String? $__typename,
    Fragment$Unit? unit,
    List<Fragment$LessonTechnique>? lessonTechniques,
  });
  TRes audios(
      Iterable<Fragment$LessonAudio> Function(
              Iterable<CopyWith$Fragment$LessonAudio<Fragment$LessonAudio>>)
          _fn);
  CopyWith$Fragment$Unit<TRes> get unit;
  TRes lessonTechniques(
      Iterable<Fragment$LessonTechnique> Function(
              Iterable<
                  CopyWith$Fragment$LessonTechnique<Fragment$LessonTechnique>>)
          _fn);
}

class _CopyWithImpl$Query$FetchLesson$node$$Lesson<TRes>
    implements CopyWith$Query$FetchLesson$node$$Lesson<TRes> {
  _CopyWithImpl$Query$FetchLesson$node$$Lesson(
    this._instance,
    this._then,
  );

  final Query$FetchLesson$node$$Lesson _instance;

  final TRes Function(Query$FetchLesson$node$$Lesson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? unitID = _undefined,
    Object? type = _undefined,
    Object? coverimage = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? order = _undefined,
    Object? isLast = _undefined,
    Object? isNext = _undefined,
    Object? progress = _undefined,
    Object? finishedAt = _undefined,
    Object? audios = _undefined,
    Object? $__typename = _undefined,
    Object? unit = _undefined,
    Object? lessonTechniques = _undefined,
  }) =>
      _then(Query$FetchLesson$node$$Lesson(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        unitID: unitID == _undefined || unitID == null
            ? _instance.unitID
            : (unitID as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$LessonLessonType),
        coverimage: coverimage == _undefined || coverimage == null
            ? _instance.coverimage
            : (coverimage as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        isLast: isLast == _undefined || isLast == null
            ? _instance.isLast
            : (isLast as bool),
        isNext: isNext == _undefined || isNext == null
            ? _instance.isNext
            : (isNext as bool),
        progress: progress == _undefined || progress == null
            ? _instance.progress
            : (progress as int),
        finishedAt: finishedAt == _undefined
            ? _instance.finishedAt
            : (finishedAt as String?),
        audios: audios == _undefined || audios == null
            ? _instance.audios
            : (audios as List<Fragment$LessonAudio>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        unit: unit == _undefined || unit == null
            ? _instance.unit
            : (unit as Fragment$Unit),
        lessonTechniques:
            lessonTechniques == _undefined || lessonTechniques == null
                ? _instance.lessonTechniques
                : (lessonTechniques as List<Fragment$LessonTechnique>),
      ));

  TRes audios(
          Iterable<Fragment$LessonAudio> Function(
                  Iterable<CopyWith$Fragment$LessonAudio<Fragment$LessonAudio>>)
              _fn) =>
      call(
          audios: _fn(_instance.audios.map((e) => CopyWith$Fragment$LessonAudio(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Fragment$Unit<TRes> get unit {
    final local$unit = _instance.unit;
    return CopyWith$Fragment$Unit(local$unit, (e) => call(unit: e));
  }

  TRes lessonTechniques(
          Iterable<Fragment$LessonTechnique> Function(
                  Iterable<
                      CopyWith$Fragment$LessonTechnique<
                          Fragment$LessonTechnique>>)
              _fn) =>
      call(
          lessonTechniques: _fn(_instance.lessonTechniques
              .map((e) => CopyWith$Fragment$LessonTechnique(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FetchLesson$node$$Lesson<TRes>
    implements CopyWith$Query$FetchLesson$node$$Lesson<TRes> {
  _CopyWithStubImpl$Query$FetchLesson$node$$Lesson(this._res);

  TRes _res;

  call({
    String? id,
    String? unitID,
    Enum$LessonLessonType? type,
    String? coverimage,
    String? title,
    String? description,
    int? order,
    bool? isLast,
    bool? isNext,
    int? progress,
    String? finishedAt,
    List<Fragment$LessonAudio>? audios,
    String? $__typename,
    Fragment$Unit? unit,
    List<Fragment$LessonTechnique>? lessonTechniques,
  }) =>
      _res;

  audios(_fn) => _res;

  CopyWith$Fragment$Unit<TRes> get unit => CopyWith$Fragment$Unit.stub(_res);

  lessonTechniques(_fn) => _res;
}

class Query$FetchLesson$node$$Content implements Query$FetchLesson$node {
  Query$FetchLesson$node$$Content({
    required this.id,
    this.$__typename = 'Content',
  });

  factory Query$FetchLesson$node$$Content.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchLesson$node$$Content(
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
    if (!(other is Query$FetchLesson$node$$Content) ||
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

extension UtilityExtension$Query$FetchLesson$node$$Content
    on Query$FetchLesson$node$$Content {
  CopyWith$Query$FetchLesson$node$$Content<Query$FetchLesson$node$$Content>
      get copyWith => CopyWith$Query$FetchLesson$node$$Content(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchLesson$node$$Content<TRes> {
  factory CopyWith$Query$FetchLesson$node$$Content(
    Query$FetchLesson$node$$Content instance,
    TRes Function(Query$FetchLesson$node$$Content) then,
  ) = _CopyWithImpl$Query$FetchLesson$node$$Content;

  factory CopyWith$Query$FetchLesson$node$$Content.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchLesson$node$$Content;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchLesson$node$$Content<TRes>
    implements CopyWith$Query$FetchLesson$node$$Content<TRes> {
  _CopyWithImpl$Query$FetchLesson$node$$Content(
    this._instance,
    this._then,
  );

  final Query$FetchLesson$node$$Content _instance;

  final TRes Function(Query$FetchLesson$node$$Content) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchLesson$node$$Content(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchLesson$node$$Content<TRes>
    implements CopyWith$Query$FetchLesson$node$$Content<TRes> {
  _CopyWithStubImpl$Query$FetchLesson$node$$Content(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchLesson$node$$ContentEpisode implements Query$FetchLesson$node {
  Query$FetchLesson$node$$ContentEpisode({
    required this.id,
    this.$__typename = 'ContentEpisode',
  });

  factory Query$FetchLesson$node$$ContentEpisode.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchLesson$node$$ContentEpisode(
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
    if (!(other is Query$FetchLesson$node$$ContentEpisode) ||
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

extension UtilityExtension$Query$FetchLesson$node$$ContentEpisode
    on Query$FetchLesson$node$$ContentEpisode {
  CopyWith$Query$FetchLesson$node$$ContentEpisode<
          Query$FetchLesson$node$$ContentEpisode>
      get copyWith => CopyWith$Query$FetchLesson$node$$ContentEpisode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchLesson$node$$ContentEpisode<TRes> {
  factory CopyWith$Query$FetchLesson$node$$ContentEpisode(
    Query$FetchLesson$node$$ContentEpisode instance,
    TRes Function(Query$FetchLesson$node$$ContentEpisode) then,
  ) = _CopyWithImpl$Query$FetchLesson$node$$ContentEpisode;

  factory CopyWith$Query$FetchLesson$node$$ContentEpisode.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchLesson$node$$ContentEpisode;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchLesson$node$$ContentEpisode<TRes>
    implements CopyWith$Query$FetchLesson$node$$ContentEpisode<TRes> {
  _CopyWithImpl$Query$FetchLesson$node$$ContentEpisode(
    this._instance,
    this._then,
  );

  final Query$FetchLesson$node$$ContentEpisode _instance;

  final TRes Function(Query$FetchLesson$node$$ContentEpisode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchLesson$node$$ContentEpisode(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchLesson$node$$ContentEpisode<TRes>
    implements CopyWith$Query$FetchLesson$node$$ContentEpisode<TRes> {
  _CopyWithStubImpl$Query$FetchLesson$node$$ContentEpisode(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchLesson$node$$ContentProgress
    implements Query$FetchLesson$node {
  Query$FetchLesson$node$$ContentProgress({
    required this.id,
    this.$__typename = 'ContentProgress',
  });

  factory Query$FetchLesson$node$$ContentProgress.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchLesson$node$$ContentProgress(
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
    if (!(other is Query$FetchLesson$node$$ContentProgress) ||
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

extension UtilityExtension$Query$FetchLesson$node$$ContentProgress
    on Query$FetchLesson$node$$ContentProgress {
  CopyWith$Query$FetchLesson$node$$ContentProgress<
          Query$FetchLesson$node$$ContentProgress>
      get copyWith => CopyWith$Query$FetchLesson$node$$ContentProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchLesson$node$$ContentProgress<TRes> {
  factory CopyWith$Query$FetchLesson$node$$ContentProgress(
    Query$FetchLesson$node$$ContentProgress instance,
    TRes Function(Query$FetchLesson$node$$ContentProgress) then,
  ) = _CopyWithImpl$Query$FetchLesson$node$$ContentProgress;

  factory CopyWith$Query$FetchLesson$node$$ContentProgress.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchLesson$node$$ContentProgress;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchLesson$node$$ContentProgress<TRes>
    implements CopyWith$Query$FetchLesson$node$$ContentProgress<TRes> {
  _CopyWithImpl$Query$FetchLesson$node$$ContentProgress(
    this._instance,
    this._then,
  );

  final Query$FetchLesson$node$$ContentProgress _instance;

  final TRes Function(Query$FetchLesson$node$$ContentProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchLesson$node$$ContentProgress(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchLesson$node$$ContentProgress<TRes>
    implements CopyWith$Query$FetchLesson$node$$ContentProgress<TRes> {
  _CopyWithStubImpl$Query$FetchLesson$node$$ContentProgress(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchLesson$node$$Course implements Query$FetchLesson$node {
  Query$FetchLesson$node$$Course({
    required this.id,
    this.$__typename = 'Course',
  });

  factory Query$FetchLesson$node$$Course.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchLesson$node$$Course(
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
    if (!(other is Query$FetchLesson$node$$Course) ||
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

extension UtilityExtension$Query$FetchLesson$node$$Course
    on Query$FetchLesson$node$$Course {
  CopyWith$Query$FetchLesson$node$$Course<Query$FetchLesson$node$$Course>
      get copyWith => CopyWith$Query$FetchLesson$node$$Course(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchLesson$node$$Course<TRes> {
  factory CopyWith$Query$FetchLesson$node$$Course(
    Query$FetchLesson$node$$Course instance,
    TRes Function(Query$FetchLesson$node$$Course) then,
  ) = _CopyWithImpl$Query$FetchLesson$node$$Course;

  factory CopyWith$Query$FetchLesson$node$$Course.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchLesson$node$$Course;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchLesson$node$$Course<TRes>
    implements CopyWith$Query$FetchLesson$node$$Course<TRes> {
  _CopyWithImpl$Query$FetchLesson$node$$Course(
    this._instance,
    this._then,
  );

  final Query$FetchLesson$node$$Course _instance;

  final TRes Function(Query$FetchLesson$node$$Course) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchLesson$node$$Course(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchLesson$node$$Course<TRes>
    implements CopyWith$Query$FetchLesson$node$$Course<TRes> {
  _CopyWithStubImpl$Query$FetchLesson$node$$Course(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchLesson$node$$JournalRecord implements Query$FetchLesson$node {
  Query$FetchLesson$node$$JournalRecord({
    required this.id,
    this.$__typename = 'JournalRecord',
  });

  factory Query$FetchLesson$node$$JournalRecord.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchLesson$node$$JournalRecord(
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
    if (!(other is Query$FetchLesson$node$$JournalRecord) ||
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

extension UtilityExtension$Query$FetchLesson$node$$JournalRecord
    on Query$FetchLesson$node$$JournalRecord {
  CopyWith$Query$FetchLesson$node$$JournalRecord<
          Query$FetchLesson$node$$JournalRecord>
      get copyWith => CopyWith$Query$FetchLesson$node$$JournalRecord(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchLesson$node$$JournalRecord<TRes> {
  factory CopyWith$Query$FetchLesson$node$$JournalRecord(
    Query$FetchLesson$node$$JournalRecord instance,
    TRes Function(Query$FetchLesson$node$$JournalRecord) then,
  ) = _CopyWithImpl$Query$FetchLesson$node$$JournalRecord;

  factory CopyWith$Query$FetchLesson$node$$JournalRecord.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchLesson$node$$JournalRecord;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchLesson$node$$JournalRecord<TRes>
    implements CopyWith$Query$FetchLesson$node$$JournalRecord<TRes> {
  _CopyWithImpl$Query$FetchLesson$node$$JournalRecord(
    this._instance,
    this._then,
  );

  final Query$FetchLesson$node$$JournalRecord _instance;

  final TRes Function(Query$FetchLesson$node$$JournalRecord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchLesson$node$$JournalRecord(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchLesson$node$$JournalRecord<TRes>
    implements CopyWith$Query$FetchLesson$node$$JournalRecord<TRes> {
  _CopyWithStubImpl$Query$FetchLesson$node$$JournalRecord(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchLesson$node$$LessonAudio implements Query$FetchLesson$node {
  Query$FetchLesson$node$$LessonAudio({
    required this.id,
    this.$__typename = 'LessonAudio',
  });

  factory Query$FetchLesson$node$$LessonAudio.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchLesson$node$$LessonAudio(
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
    if (!(other is Query$FetchLesson$node$$LessonAudio) ||
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

extension UtilityExtension$Query$FetchLesson$node$$LessonAudio
    on Query$FetchLesson$node$$LessonAudio {
  CopyWith$Query$FetchLesson$node$$LessonAudio<
          Query$FetchLesson$node$$LessonAudio>
      get copyWith => CopyWith$Query$FetchLesson$node$$LessonAudio(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchLesson$node$$LessonAudio<TRes> {
  factory CopyWith$Query$FetchLesson$node$$LessonAudio(
    Query$FetchLesson$node$$LessonAudio instance,
    TRes Function(Query$FetchLesson$node$$LessonAudio) then,
  ) = _CopyWithImpl$Query$FetchLesson$node$$LessonAudio;

  factory CopyWith$Query$FetchLesson$node$$LessonAudio.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchLesson$node$$LessonAudio;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchLesson$node$$LessonAudio<TRes>
    implements CopyWith$Query$FetchLesson$node$$LessonAudio<TRes> {
  _CopyWithImpl$Query$FetchLesson$node$$LessonAudio(
    this._instance,
    this._then,
  );

  final Query$FetchLesson$node$$LessonAudio _instance;

  final TRes Function(Query$FetchLesson$node$$LessonAudio) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchLesson$node$$LessonAudio(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchLesson$node$$LessonAudio<TRes>
    implements CopyWith$Query$FetchLesson$node$$LessonAudio<TRes> {
  _CopyWithStubImpl$Query$FetchLesson$node$$LessonAudio(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchLesson$node$$Technique implements Query$FetchLesson$node {
  Query$FetchLesson$node$$Technique({
    required this.id,
    this.$__typename = 'Technique',
  });

  factory Query$FetchLesson$node$$Technique.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchLesson$node$$Technique(
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
    if (!(other is Query$FetchLesson$node$$Technique) ||
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

extension UtilityExtension$Query$FetchLesson$node$$Technique
    on Query$FetchLesson$node$$Technique {
  CopyWith$Query$FetchLesson$node$$Technique<Query$FetchLesson$node$$Technique>
      get copyWith => CopyWith$Query$FetchLesson$node$$Technique(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchLesson$node$$Technique<TRes> {
  factory CopyWith$Query$FetchLesson$node$$Technique(
    Query$FetchLesson$node$$Technique instance,
    TRes Function(Query$FetchLesson$node$$Technique) then,
  ) = _CopyWithImpl$Query$FetchLesson$node$$Technique;

  factory CopyWith$Query$FetchLesson$node$$Technique.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchLesson$node$$Technique;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchLesson$node$$Technique<TRes>
    implements CopyWith$Query$FetchLesson$node$$Technique<TRes> {
  _CopyWithImpl$Query$FetchLesson$node$$Technique(
    this._instance,
    this._then,
  );

  final Query$FetchLesson$node$$Technique _instance;

  final TRes Function(Query$FetchLesson$node$$Technique) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchLesson$node$$Technique(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchLesson$node$$Technique<TRes>
    implements CopyWith$Query$FetchLesson$node$$Technique<TRes> {
  _CopyWithStubImpl$Query$FetchLesson$node$$Technique(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchLesson$node$$Unit implements Query$FetchLesson$node {
  Query$FetchLesson$node$$Unit({
    required this.id,
    this.$__typename = 'Unit',
  });

  factory Query$FetchLesson$node$$Unit.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchLesson$node$$Unit(
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
    if (!(other is Query$FetchLesson$node$$Unit) ||
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

extension UtilityExtension$Query$FetchLesson$node$$Unit
    on Query$FetchLesson$node$$Unit {
  CopyWith$Query$FetchLesson$node$$Unit<Query$FetchLesson$node$$Unit>
      get copyWith => CopyWith$Query$FetchLesson$node$$Unit(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchLesson$node$$Unit<TRes> {
  factory CopyWith$Query$FetchLesson$node$$Unit(
    Query$FetchLesson$node$$Unit instance,
    TRes Function(Query$FetchLesson$node$$Unit) then,
  ) = _CopyWithImpl$Query$FetchLesson$node$$Unit;

  factory CopyWith$Query$FetchLesson$node$$Unit.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchLesson$node$$Unit;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchLesson$node$$Unit<TRes>
    implements CopyWith$Query$FetchLesson$node$$Unit<TRes> {
  _CopyWithImpl$Query$FetchLesson$node$$Unit(
    this._instance,
    this._then,
  );

  final Query$FetchLesson$node$$Unit _instance;

  final TRes Function(Query$FetchLesson$node$$Unit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchLesson$node$$Unit(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchLesson$node$$Unit<TRes>
    implements CopyWith$Query$FetchLesson$node$$Unit<TRes> {
  _CopyWithStubImpl$Query$FetchLesson$node$$Unit(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchLesson$node$$User implements Query$FetchLesson$node {
  Query$FetchLesson$node$$User({
    required this.id,
    this.$__typename = 'User',
  });

  factory Query$FetchLesson$node$$User.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchLesson$node$$User(
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
    if (!(other is Query$FetchLesson$node$$User) ||
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

extension UtilityExtension$Query$FetchLesson$node$$User
    on Query$FetchLesson$node$$User {
  CopyWith$Query$FetchLesson$node$$User<Query$FetchLesson$node$$User>
      get copyWith => CopyWith$Query$FetchLesson$node$$User(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchLesson$node$$User<TRes> {
  factory CopyWith$Query$FetchLesson$node$$User(
    Query$FetchLesson$node$$User instance,
    TRes Function(Query$FetchLesson$node$$User) then,
  ) = _CopyWithImpl$Query$FetchLesson$node$$User;

  factory CopyWith$Query$FetchLesson$node$$User.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchLesson$node$$User;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchLesson$node$$User<TRes>
    implements CopyWith$Query$FetchLesson$node$$User<TRes> {
  _CopyWithImpl$Query$FetchLesson$node$$User(
    this._instance,
    this._then,
  );

  final Query$FetchLesson$node$$User _instance;

  final TRes Function(Query$FetchLesson$node$$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchLesson$node$$User(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchLesson$node$$User<TRes>
    implements CopyWith$Query$FetchLesson$node$$User<TRes> {
  _CopyWithStubImpl$Query$FetchLesson$node$$User(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchLesson$node$$UserProgress implements Query$FetchLesson$node {
  Query$FetchLesson$node$$UserProgress({
    required this.id,
    this.$__typename = 'UserProgress',
  });

  factory Query$FetchLesson$node$$UserProgress.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchLesson$node$$UserProgress(
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
    if (!(other is Query$FetchLesson$node$$UserProgress) ||
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

extension UtilityExtension$Query$FetchLesson$node$$UserProgress
    on Query$FetchLesson$node$$UserProgress {
  CopyWith$Query$FetchLesson$node$$UserProgress<
          Query$FetchLesson$node$$UserProgress>
      get copyWith => CopyWith$Query$FetchLesson$node$$UserProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchLesson$node$$UserProgress<TRes> {
  factory CopyWith$Query$FetchLesson$node$$UserProgress(
    Query$FetchLesson$node$$UserProgress instance,
    TRes Function(Query$FetchLesson$node$$UserProgress) then,
  ) = _CopyWithImpl$Query$FetchLesson$node$$UserProgress;

  factory CopyWith$Query$FetchLesson$node$$UserProgress.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchLesson$node$$UserProgress;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchLesson$node$$UserProgress<TRes>
    implements CopyWith$Query$FetchLesson$node$$UserProgress<TRes> {
  _CopyWithImpl$Query$FetchLesson$node$$UserProgress(
    this._instance,
    this._then,
  );

  final Query$FetchLesson$node$$UserProgress _instance;

  final TRes Function(Query$FetchLesson$node$$UserProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchLesson$node$$UserProgress(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchLesson$node$$UserProgress<TRes>
    implements CopyWith$Query$FetchLesson$node$$UserProgress<TRes> {
  _CopyWithStubImpl$Query$FetchLesson$node$$UserProgress(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchActiveLessons {
  Query$FetchActiveLessons({
    required this.activeLessons,
    this.$__typename = 'Query',
  });

  factory Query$FetchActiveLessons.fromJson(Map<String, dynamic> json) {
    final l$activeLessons = json['activeLessons'];
    final l$$__typename = json['__typename'];
    return Query$FetchActiveLessons(
      activeLessons: (l$activeLessons as List<dynamic>)
          .map((e) => Fragment$LessonFull.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$LessonFull> activeLessons;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$activeLessons = activeLessons;
    _resultData['activeLessons'] =
        l$activeLessons.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$activeLessons = activeLessons;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$activeLessons.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchActiveLessons) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$activeLessons = activeLessons;
    final lOther$activeLessons = other.activeLessons;
    if (l$activeLessons.length != lOther$activeLessons.length) {
      return false;
    }
    for (int i = 0; i < l$activeLessons.length; i++) {
      final l$activeLessons$entry = l$activeLessons[i];
      final lOther$activeLessons$entry = lOther$activeLessons[i];
      if (l$activeLessons$entry != lOther$activeLessons$entry) {
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

extension UtilityExtension$Query$FetchActiveLessons
    on Query$FetchActiveLessons {
  CopyWith$Query$FetchActiveLessons<Query$FetchActiveLessons> get copyWith =>
      CopyWith$Query$FetchActiveLessons(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchActiveLessons<TRes> {
  factory CopyWith$Query$FetchActiveLessons(
    Query$FetchActiveLessons instance,
    TRes Function(Query$FetchActiveLessons) then,
  ) = _CopyWithImpl$Query$FetchActiveLessons;

  factory CopyWith$Query$FetchActiveLessons.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchActiveLessons;

  TRes call({
    List<Fragment$LessonFull>? activeLessons,
    String? $__typename,
  });
  TRes activeLessons(
      Iterable<Fragment$LessonFull> Function(
              Iterable<CopyWith$Fragment$LessonFull<Fragment$LessonFull>>)
          _fn);
}

class _CopyWithImpl$Query$FetchActiveLessons<TRes>
    implements CopyWith$Query$FetchActiveLessons<TRes> {
  _CopyWithImpl$Query$FetchActiveLessons(
    this._instance,
    this._then,
  );

  final Query$FetchActiveLessons _instance;

  final TRes Function(Query$FetchActiveLessons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? activeLessons = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchActiveLessons(
        activeLessons: activeLessons == _undefined || activeLessons == null
            ? _instance.activeLessons
            : (activeLessons as List<Fragment$LessonFull>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes activeLessons(
          Iterable<Fragment$LessonFull> Function(
                  Iterable<CopyWith$Fragment$LessonFull<Fragment$LessonFull>>)
              _fn) =>
      call(
          activeLessons: _fn(
              _instance.activeLessons.map((e) => CopyWith$Fragment$LessonFull(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FetchActiveLessons<TRes>
    implements CopyWith$Query$FetchActiveLessons<TRes> {
  _CopyWithStubImpl$Query$FetchActiveLessons(this._res);

  TRes _res;

  call({
    List<Fragment$LessonFull>? activeLessons,
    String? $__typename,
  }) =>
      _res;

  activeLessons(_fn) => _res;
}

const documentNodeQueryFetchActiveLessons = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchActiveLessons'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'activeLessons'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'LessonFull'),
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
  fragmentDefinitionLessonFull,
  fragmentDefinitionLesson,
  fragmentDefinitionLessonAudio,
  fragmentDefinitionUnit,
  fragmentDefinitionCourse,
  fragmentDefinitionLessonTechnique,
  fragmentDefinitionTechnique,
]);
Query$FetchActiveLessons _parserFn$Query$FetchActiveLessons(
        Map<String, dynamic> data) =>
    Query$FetchActiveLessons.fromJson(data);
typedef OnQueryComplete$Query$FetchActiveLessons = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FetchActiveLessons?,
);

class Options$Query$FetchActiveLessons
    extends graphql.QueryOptions<Query$FetchActiveLessons> {
  Options$Query$FetchActiveLessons({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchActiveLessons? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FetchActiveLessons? onComplete,
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
                        : _parserFn$Query$FetchActiveLessons(data),
                  ),
          onError: onError,
          document: documentNodeQueryFetchActiveLessons,
          parserFn: _parserFn$Query$FetchActiveLessons,
        );

  final OnQueryComplete$Query$FetchActiveLessons? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FetchActiveLessons
    extends graphql.WatchQueryOptions<Query$FetchActiveLessons> {
  WatchOptions$Query$FetchActiveLessons({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchActiveLessons? typedOptimisticResult,
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
          document: documentNodeQueryFetchActiveLessons,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchActiveLessons,
        );
}

class FetchMoreOptions$Query$FetchActiveLessons
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchActiveLessons(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryFetchActiveLessons,
        );
}

extension ClientExtension$Query$FetchActiveLessons on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchActiveLessons>>
      query$FetchActiveLessons(
              [Options$Query$FetchActiveLessons? options]) async =>
          await this.query(options ?? Options$Query$FetchActiveLessons());
  graphql.ObservableQuery<Query$FetchActiveLessons>
      watchQuery$FetchActiveLessons(
              [WatchOptions$Query$FetchActiveLessons? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$FetchActiveLessons());
  void writeQuery$FetchActiveLessons({
    required Query$FetchActiveLessons data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryFetchActiveLessons)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchActiveLessons? readQuery$FetchActiveLessons(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFetchActiveLessons)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchActiveLessons.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchActiveLessons>
    useQuery$FetchActiveLessons([Options$Query$FetchActiveLessons? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$FetchActiveLessons());
graphql.ObservableQuery<Query$FetchActiveLessons>
    useWatchQuery$FetchActiveLessons(
            [WatchOptions$Query$FetchActiveLessons? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$FetchActiveLessons());

class Query$FetchActiveLessons$Widget
    extends graphql_flutter.Query<Query$FetchActiveLessons> {
  Query$FetchActiveLessons$Widget({
    widgets.Key? key,
    Options$Query$FetchActiveLessons? options,
    required graphql_flutter.QueryBuilder<Query$FetchActiveLessons> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$FetchActiveLessons(),
          builder: builder,
        );
}

class Variables$Mutation$SaveLessonProgress {
  factory Variables$Mutation$SaveLessonProgress({
    required String id,
    required Input$SaveLessonProgressInput input,
  }) =>
      Variables$Mutation$SaveLessonProgress._({
        r'id': id,
        r'input': input,
      });

  Variables$Mutation$SaveLessonProgress._(this._$data);

  factory Variables$Mutation$SaveLessonProgress.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$input = data['input'];
    result$data['input'] = Input$SaveLessonProgressInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$SaveLessonProgress._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$SaveLessonProgressInput get input =>
      (_$data['input'] as Input$SaveLessonProgressInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SaveLessonProgress<
          Variables$Mutation$SaveLessonProgress>
      get copyWith => CopyWith$Variables$Mutation$SaveLessonProgress(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SaveLessonProgress) ||
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

abstract class CopyWith$Variables$Mutation$SaveLessonProgress<TRes> {
  factory CopyWith$Variables$Mutation$SaveLessonProgress(
    Variables$Mutation$SaveLessonProgress instance,
    TRes Function(Variables$Mutation$SaveLessonProgress) then,
  ) = _CopyWithImpl$Variables$Mutation$SaveLessonProgress;

  factory CopyWith$Variables$Mutation$SaveLessonProgress.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SaveLessonProgress;

  TRes call({
    String? id,
    Input$SaveLessonProgressInput? input,
  });
}

class _CopyWithImpl$Variables$Mutation$SaveLessonProgress<TRes>
    implements CopyWith$Variables$Mutation$SaveLessonProgress<TRes> {
  _CopyWithImpl$Variables$Mutation$SaveLessonProgress(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SaveLessonProgress _instance;

  final TRes Function(Variables$Mutation$SaveLessonProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Mutation$SaveLessonProgress._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (input != _undefined && input != null)
          'input': (input as Input$SaveLessonProgressInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SaveLessonProgress<TRes>
    implements CopyWith$Variables$Mutation$SaveLessonProgress<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SaveLessonProgress(this._res);

  TRes _res;

  call({
    String? id,
    Input$SaveLessonProgressInput? input,
  }) =>
      _res;
}

class Mutation$SaveLessonProgress {
  Mutation$SaveLessonProgress({
    required this.success,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SaveLessonProgress.fromJson(Map<String, dynamic> json) {
    final l$success = json['success'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveLessonProgress(
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
    if (!(other is Mutation$SaveLessonProgress) ||
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

extension UtilityExtension$Mutation$SaveLessonProgress
    on Mutation$SaveLessonProgress {
  CopyWith$Mutation$SaveLessonProgress<Mutation$SaveLessonProgress>
      get copyWith => CopyWith$Mutation$SaveLessonProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SaveLessonProgress<TRes> {
  factory CopyWith$Mutation$SaveLessonProgress(
    Mutation$SaveLessonProgress instance,
    TRes Function(Mutation$SaveLessonProgress) then,
  ) = _CopyWithImpl$Mutation$SaveLessonProgress;

  factory CopyWith$Mutation$SaveLessonProgress.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveLessonProgress;

  TRes call({
    bool? success,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SaveLessonProgress<TRes>
    implements CopyWith$Mutation$SaveLessonProgress<TRes> {
  _CopyWithImpl$Mutation$SaveLessonProgress(
    this._instance,
    this._then,
  );

  final Mutation$SaveLessonProgress _instance;

  final TRes Function(Mutation$SaveLessonProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SaveLessonProgress(
        success: success == _undefined || success == null
            ? _instance.success
            : (success as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SaveLessonProgress<TRes>
    implements CopyWith$Mutation$SaveLessonProgress<TRes> {
  _CopyWithStubImpl$Mutation$SaveLessonProgress(this._res);

  TRes _res;

  call({
    bool? success,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationSaveLessonProgress = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SaveLessonProgress'),
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
          name: NameNode(value: 'SaveLessonProgressInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'saveLessonProgress'),
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
Mutation$SaveLessonProgress _parserFn$Mutation$SaveLessonProgress(
        Map<String, dynamic> data) =>
    Mutation$SaveLessonProgress.fromJson(data);
typedef OnMutationCompleted$Mutation$SaveLessonProgress = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$SaveLessonProgress?,
);

class Options$Mutation$SaveLessonProgress
    extends graphql.MutationOptions<Mutation$SaveLessonProgress> {
  Options$Mutation$SaveLessonProgress({
    String? operationName,
    required Variables$Mutation$SaveLessonProgress variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SaveLessonProgress? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SaveLessonProgress? onCompleted,
    graphql.OnMutationUpdate<Mutation$SaveLessonProgress>? update,
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
                        : _parserFn$Mutation$SaveLessonProgress(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSaveLessonProgress,
          parserFn: _parserFn$Mutation$SaveLessonProgress,
        );

  final OnMutationCompleted$Mutation$SaveLessonProgress? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SaveLessonProgress
    extends graphql.WatchQueryOptions<Mutation$SaveLessonProgress> {
  WatchOptions$Mutation$SaveLessonProgress({
    String? operationName,
    required Variables$Mutation$SaveLessonProgress variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SaveLessonProgress? typedOptimisticResult,
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
          document: documentNodeMutationSaveLessonProgress,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SaveLessonProgress,
        );
}

extension ClientExtension$Mutation$SaveLessonProgress on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SaveLessonProgress>>
      mutate$SaveLessonProgress(
              Options$Mutation$SaveLessonProgress options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$SaveLessonProgress>
      watchMutation$SaveLessonProgress(
              WatchOptions$Mutation$SaveLessonProgress options) =>
          this.watchMutation(options);
}

class Mutation$SaveLessonProgress$HookResult {
  Mutation$SaveLessonProgress$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$SaveLessonProgress runMutation;

  final graphql.QueryResult<Mutation$SaveLessonProgress> result;
}

Mutation$SaveLessonProgress$HookResult useMutation$SaveLessonProgress(
    [WidgetOptions$Mutation$SaveLessonProgress? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$SaveLessonProgress());
  return Mutation$SaveLessonProgress$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SaveLessonProgress>
    useWatchMutation$SaveLessonProgress(
            WatchOptions$Mutation$SaveLessonProgress options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$SaveLessonProgress
    extends graphql.MutationOptions<Mutation$SaveLessonProgress> {
  WidgetOptions$Mutation$SaveLessonProgress({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SaveLessonProgress? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SaveLessonProgress? onCompleted,
    graphql.OnMutationUpdate<Mutation$SaveLessonProgress>? update,
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
                        : _parserFn$Mutation$SaveLessonProgress(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSaveLessonProgress,
          parserFn: _parserFn$Mutation$SaveLessonProgress,
        );

  final OnMutationCompleted$Mutation$SaveLessonProgress? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$SaveLessonProgress
    = graphql.MultiSourceResult<Mutation$SaveLessonProgress> Function(
  Variables$Mutation$SaveLessonProgress, {
  Object? optimisticResult,
  Mutation$SaveLessonProgress? typedOptimisticResult,
});
typedef Builder$Mutation$SaveLessonProgress = widgets.Widget Function(
  RunMutation$Mutation$SaveLessonProgress,
  graphql.QueryResult<Mutation$SaveLessonProgress>?,
);

class Mutation$SaveLessonProgress$Widget
    extends graphql_flutter.Mutation<Mutation$SaveLessonProgress> {
  Mutation$SaveLessonProgress$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SaveLessonProgress? options,
    required Builder$Mutation$SaveLessonProgress builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$SaveLessonProgress(),
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

class Variables$Mutation$ResetLessonProgress {
  factory Variables$Mutation$ResetLessonProgress({
    required String id,
    required Input$ResetLessonProgressInput input,
  }) =>
      Variables$Mutation$ResetLessonProgress._({
        r'id': id,
        r'input': input,
      });

  Variables$Mutation$ResetLessonProgress._(this._$data);

  factory Variables$Mutation$ResetLessonProgress.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$input = data['input'];
    result$data['input'] = Input$ResetLessonProgressInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$ResetLessonProgress._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$ResetLessonProgressInput get input =>
      (_$data['input'] as Input$ResetLessonProgressInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$ResetLessonProgress<
          Variables$Mutation$ResetLessonProgress>
      get copyWith => CopyWith$Variables$Mutation$ResetLessonProgress(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$ResetLessonProgress) ||
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

abstract class CopyWith$Variables$Mutation$ResetLessonProgress<TRes> {
  factory CopyWith$Variables$Mutation$ResetLessonProgress(
    Variables$Mutation$ResetLessonProgress instance,
    TRes Function(Variables$Mutation$ResetLessonProgress) then,
  ) = _CopyWithImpl$Variables$Mutation$ResetLessonProgress;

  factory CopyWith$Variables$Mutation$ResetLessonProgress.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ResetLessonProgress;

  TRes call({
    String? id,
    Input$ResetLessonProgressInput? input,
  });
}

class _CopyWithImpl$Variables$Mutation$ResetLessonProgress<TRes>
    implements CopyWith$Variables$Mutation$ResetLessonProgress<TRes> {
  _CopyWithImpl$Variables$Mutation$ResetLessonProgress(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ResetLessonProgress _instance;

  final TRes Function(Variables$Mutation$ResetLessonProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Mutation$ResetLessonProgress._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (input != _undefined && input != null)
          'input': (input as Input$ResetLessonProgressInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ResetLessonProgress<TRes>
    implements CopyWith$Variables$Mutation$ResetLessonProgress<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ResetLessonProgress(this._res);

  TRes _res;

  call({
    String? id,
    Input$ResetLessonProgressInput? input,
  }) =>
      _res;
}

class Mutation$ResetLessonProgress {
  Mutation$ResetLessonProgress({
    required this.resetLessonProgress,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ResetLessonProgress.fromJson(Map<String, dynamic> json) {
    final l$resetLessonProgress = json['resetLessonProgress'];
    final l$$__typename = json['__typename'];
    return Mutation$ResetLessonProgress(
      resetLessonProgress: Fragment$LessonFull.fromJson(
          (l$resetLessonProgress as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$LessonFull resetLessonProgress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$resetLessonProgress = resetLessonProgress;
    _resultData['resetLessonProgress'] = l$resetLessonProgress.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$resetLessonProgress = resetLessonProgress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$resetLessonProgress,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ResetLessonProgress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$resetLessonProgress = resetLessonProgress;
    final lOther$resetLessonProgress = other.resetLessonProgress;
    if (l$resetLessonProgress != lOther$resetLessonProgress) {
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

extension UtilityExtension$Mutation$ResetLessonProgress
    on Mutation$ResetLessonProgress {
  CopyWith$Mutation$ResetLessonProgress<Mutation$ResetLessonProgress>
      get copyWith => CopyWith$Mutation$ResetLessonProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ResetLessonProgress<TRes> {
  factory CopyWith$Mutation$ResetLessonProgress(
    Mutation$ResetLessonProgress instance,
    TRes Function(Mutation$ResetLessonProgress) then,
  ) = _CopyWithImpl$Mutation$ResetLessonProgress;

  factory CopyWith$Mutation$ResetLessonProgress.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ResetLessonProgress;

  TRes call({
    Fragment$LessonFull? resetLessonProgress,
    String? $__typename,
  });
  CopyWith$Fragment$LessonFull<TRes> get resetLessonProgress;
}

class _CopyWithImpl$Mutation$ResetLessonProgress<TRes>
    implements CopyWith$Mutation$ResetLessonProgress<TRes> {
  _CopyWithImpl$Mutation$ResetLessonProgress(
    this._instance,
    this._then,
  );

  final Mutation$ResetLessonProgress _instance;

  final TRes Function(Mutation$ResetLessonProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? resetLessonProgress = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ResetLessonProgress(
        resetLessonProgress:
            resetLessonProgress == _undefined || resetLessonProgress == null
                ? _instance.resetLessonProgress
                : (resetLessonProgress as Fragment$LessonFull),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$LessonFull<TRes> get resetLessonProgress {
    final local$resetLessonProgress = _instance.resetLessonProgress;
    return CopyWith$Fragment$LessonFull(
        local$resetLessonProgress, (e) => call(resetLessonProgress: e));
  }
}

class _CopyWithStubImpl$Mutation$ResetLessonProgress<TRes>
    implements CopyWith$Mutation$ResetLessonProgress<TRes> {
  _CopyWithStubImpl$Mutation$ResetLessonProgress(this._res);

  TRes _res;

  call({
    Fragment$LessonFull? resetLessonProgress,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$LessonFull<TRes> get resetLessonProgress =>
      CopyWith$Fragment$LessonFull.stub(_res);
}

const documentNodeMutationResetLessonProgress = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ResetLessonProgress'),
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
          name: NameNode(value: 'ResetLessonProgressInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'resetLessonProgress'),
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
            name: NameNode(value: 'LessonFull'),
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
  fragmentDefinitionLessonFull,
  fragmentDefinitionLesson,
  fragmentDefinitionLessonAudio,
  fragmentDefinitionUnit,
  fragmentDefinitionCourse,
  fragmentDefinitionLessonTechnique,
  fragmentDefinitionTechnique,
]);
Mutation$ResetLessonProgress _parserFn$Mutation$ResetLessonProgress(
        Map<String, dynamic> data) =>
    Mutation$ResetLessonProgress.fromJson(data);
typedef OnMutationCompleted$Mutation$ResetLessonProgress = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$ResetLessonProgress?,
);

class Options$Mutation$ResetLessonProgress
    extends graphql.MutationOptions<Mutation$ResetLessonProgress> {
  Options$Mutation$ResetLessonProgress({
    String? operationName,
    required Variables$Mutation$ResetLessonProgress variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ResetLessonProgress? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ResetLessonProgress? onCompleted,
    graphql.OnMutationUpdate<Mutation$ResetLessonProgress>? update,
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
                        : _parserFn$Mutation$ResetLessonProgress(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationResetLessonProgress,
          parserFn: _parserFn$Mutation$ResetLessonProgress,
        );

  final OnMutationCompleted$Mutation$ResetLessonProgress? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ResetLessonProgress
    extends graphql.WatchQueryOptions<Mutation$ResetLessonProgress> {
  WatchOptions$Mutation$ResetLessonProgress({
    String? operationName,
    required Variables$Mutation$ResetLessonProgress variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ResetLessonProgress? typedOptimisticResult,
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
          document: documentNodeMutationResetLessonProgress,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ResetLessonProgress,
        );
}

extension ClientExtension$Mutation$ResetLessonProgress
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ResetLessonProgress>>
      mutate$ResetLessonProgress(
              Options$Mutation$ResetLessonProgress options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$ResetLessonProgress>
      watchMutation$ResetLessonProgress(
              WatchOptions$Mutation$ResetLessonProgress options) =>
          this.watchMutation(options);
}

class Mutation$ResetLessonProgress$HookResult {
  Mutation$ResetLessonProgress$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$ResetLessonProgress runMutation;

  final graphql.QueryResult<Mutation$ResetLessonProgress> result;
}

Mutation$ResetLessonProgress$HookResult useMutation$ResetLessonProgress(
    [WidgetOptions$Mutation$ResetLessonProgress? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$ResetLessonProgress());
  return Mutation$ResetLessonProgress$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ResetLessonProgress>
    useWatchMutation$ResetLessonProgress(
            WatchOptions$Mutation$ResetLessonProgress options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ResetLessonProgress
    extends graphql.MutationOptions<Mutation$ResetLessonProgress> {
  WidgetOptions$Mutation$ResetLessonProgress({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ResetLessonProgress? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ResetLessonProgress? onCompleted,
    graphql.OnMutationUpdate<Mutation$ResetLessonProgress>? update,
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
                        : _parserFn$Mutation$ResetLessonProgress(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationResetLessonProgress,
          parserFn: _parserFn$Mutation$ResetLessonProgress,
        );

  final OnMutationCompleted$Mutation$ResetLessonProgress? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$ResetLessonProgress
    = graphql.MultiSourceResult<Mutation$ResetLessonProgress> Function(
  Variables$Mutation$ResetLessonProgress, {
  Object? optimisticResult,
  Mutation$ResetLessonProgress? typedOptimisticResult,
});
typedef Builder$Mutation$ResetLessonProgress = widgets.Widget Function(
  RunMutation$Mutation$ResetLessonProgress,
  graphql.QueryResult<Mutation$ResetLessonProgress>?,
);

class Mutation$ResetLessonProgress$Widget
    extends graphql_flutter.Mutation<Mutation$ResetLessonProgress> {
  Mutation$ResetLessonProgress$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ResetLessonProgress? options,
    required Builder$Mutation$ResetLessonProgress builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$ResetLessonProgress(),
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

class Variables$Mutation$FinishLesson {
  factory Variables$Mutation$FinishLesson({
    required String id,
    required Input$FinishLessonInput input,
  }) =>
      Variables$Mutation$FinishLesson._({
        r'id': id,
        r'input': input,
      });

  Variables$Mutation$FinishLesson._(this._$data);

  factory Variables$Mutation$FinishLesson.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$input = data['input'];
    result$data['input'] =
        Input$FinishLessonInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$FinishLesson._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$FinishLessonInput get input =>
      (_$data['input'] as Input$FinishLessonInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$FinishLesson<Variables$Mutation$FinishLesson>
      get copyWith => CopyWith$Variables$Mutation$FinishLesson(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$FinishLesson) ||
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

abstract class CopyWith$Variables$Mutation$FinishLesson<TRes> {
  factory CopyWith$Variables$Mutation$FinishLesson(
    Variables$Mutation$FinishLesson instance,
    TRes Function(Variables$Mutation$FinishLesson) then,
  ) = _CopyWithImpl$Variables$Mutation$FinishLesson;

  factory CopyWith$Variables$Mutation$FinishLesson.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$FinishLesson;

  TRes call({
    String? id,
    Input$FinishLessonInput? input,
  });
}

class _CopyWithImpl$Variables$Mutation$FinishLesson<TRes>
    implements CopyWith$Variables$Mutation$FinishLesson<TRes> {
  _CopyWithImpl$Variables$Mutation$FinishLesson(
    this._instance,
    this._then,
  );

  final Variables$Mutation$FinishLesson _instance;

  final TRes Function(Variables$Mutation$FinishLesson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Mutation$FinishLesson._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (input != _undefined && input != null)
          'input': (input as Input$FinishLessonInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$FinishLesson<TRes>
    implements CopyWith$Variables$Mutation$FinishLesson<TRes> {
  _CopyWithStubImpl$Variables$Mutation$FinishLesson(this._res);

  TRes _res;

  call({
    String? id,
    Input$FinishLessonInput? input,
  }) =>
      _res;
}

class Mutation$FinishLesson {
  Mutation$FinishLesson({
    required this.finishLesson,
    this.$__typename = 'Mutation',
  });

  factory Mutation$FinishLesson.fromJson(Map<String, dynamic> json) {
    final l$finishLesson = json['finishLesson'];
    final l$$__typename = json['__typename'];
    return Mutation$FinishLesson(
      finishLesson: Mutation$FinishLesson$finishLesson.fromJson(
          (l$finishLesson as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$FinishLesson$finishLesson finishLesson;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$finishLesson = finishLesson;
    _resultData['finishLesson'] = l$finishLesson.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$finishLesson = finishLesson;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$finishLesson,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$FinishLesson) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$finishLesson = finishLesson;
    final lOther$finishLesson = other.finishLesson;
    if (l$finishLesson != lOther$finishLesson) {
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

extension UtilityExtension$Mutation$FinishLesson on Mutation$FinishLesson {
  CopyWith$Mutation$FinishLesson<Mutation$FinishLesson> get copyWith =>
      CopyWith$Mutation$FinishLesson(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$FinishLesson<TRes> {
  factory CopyWith$Mutation$FinishLesson(
    Mutation$FinishLesson instance,
    TRes Function(Mutation$FinishLesson) then,
  ) = _CopyWithImpl$Mutation$FinishLesson;

  factory CopyWith$Mutation$FinishLesson.stub(TRes res) =
      _CopyWithStubImpl$Mutation$FinishLesson;

  TRes call({
    Mutation$FinishLesson$finishLesson? finishLesson,
    String? $__typename,
  });
  CopyWith$Mutation$FinishLesson$finishLesson<TRes> get finishLesson;
}

class _CopyWithImpl$Mutation$FinishLesson<TRes>
    implements CopyWith$Mutation$FinishLesson<TRes> {
  _CopyWithImpl$Mutation$FinishLesson(
    this._instance,
    this._then,
  );

  final Mutation$FinishLesson _instance;

  final TRes Function(Mutation$FinishLesson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? finishLesson = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$FinishLesson(
        finishLesson: finishLesson == _undefined || finishLesson == null
            ? _instance.finishLesson
            : (finishLesson as Mutation$FinishLesson$finishLesson),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$FinishLesson$finishLesson<TRes> get finishLesson {
    final local$finishLesson = _instance.finishLesson;
    return CopyWith$Mutation$FinishLesson$finishLesson(
        local$finishLesson, (e) => call(finishLesson: e));
  }
}

class _CopyWithStubImpl$Mutation$FinishLesson<TRes>
    implements CopyWith$Mutation$FinishLesson<TRes> {
  _CopyWithStubImpl$Mutation$FinishLesson(this._res);

  TRes _res;

  call({
    Mutation$FinishLesson$finishLesson? finishLesson,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$FinishLesson$finishLesson<TRes> get finishLesson =>
      CopyWith$Mutation$FinishLesson$finishLesson.stub(_res);
}

const documentNodeMutationFinishLesson = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'FinishLesson'),
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
          name: NameNode(value: 'FinishLessonInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'finishLesson'),
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
            name: NameNode(value: 'lesson'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'LessonFull'),
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
            name: NameNode(value: 'journalRecord'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'JournalRecord'),
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
  fragmentDefinitionLessonFull,
  fragmentDefinitionLesson,
  fragmentDefinitionLessonAudio,
  fragmentDefinitionUnit,
  fragmentDefinitionCourse,
  fragmentDefinitionLessonTechnique,
  fragmentDefinitionTechnique,
  fragmentDefinitionJournalRecord,
]);
Mutation$FinishLesson _parserFn$Mutation$FinishLesson(
        Map<String, dynamic> data) =>
    Mutation$FinishLesson.fromJson(data);
typedef OnMutationCompleted$Mutation$FinishLesson = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$FinishLesson?,
);

class Options$Mutation$FinishLesson
    extends graphql.MutationOptions<Mutation$FinishLesson> {
  Options$Mutation$FinishLesson({
    String? operationName,
    required Variables$Mutation$FinishLesson variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$FinishLesson? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$FinishLesson? onCompleted,
    graphql.OnMutationUpdate<Mutation$FinishLesson>? update,
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
                    data == null ? null : _parserFn$Mutation$FinishLesson(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationFinishLesson,
          parserFn: _parserFn$Mutation$FinishLesson,
        );

  final OnMutationCompleted$Mutation$FinishLesson? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$FinishLesson
    extends graphql.WatchQueryOptions<Mutation$FinishLesson> {
  WatchOptions$Mutation$FinishLesson({
    String? operationName,
    required Variables$Mutation$FinishLesson variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$FinishLesson? typedOptimisticResult,
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
          document: documentNodeMutationFinishLesson,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$FinishLesson,
        );
}

extension ClientExtension$Mutation$FinishLesson on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$FinishLesson>> mutate$FinishLesson(
          Options$Mutation$FinishLesson options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$FinishLesson> watchMutation$FinishLesson(
          WatchOptions$Mutation$FinishLesson options) =>
      this.watchMutation(options);
}

class Mutation$FinishLesson$HookResult {
  Mutation$FinishLesson$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$FinishLesson runMutation;

  final graphql.QueryResult<Mutation$FinishLesson> result;
}

Mutation$FinishLesson$HookResult useMutation$FinishLesson(
    [WidgetOptions$Mutation$FinishLesson? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$FinishLesson());
  return Mutation$FinishLesson$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$FinishLesson> useWatchMutation$FinishLesson(
        WatchOptions$Mutation$FinishLesson options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$FinishLesson
    extends graphql.MutationOptions<Mutation$FinishLesson> {
  WidgetOptions$Mutation$FinishLesson({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$FinishLesson? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$FinishLesson? onCompleted,
    graphql.OnMutationUpdate<Mutation$FinishLesson>? update,
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
                    data == null ? null : _parserFn$Mutation$FinishLesson(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationFinishLesson,
          parserFn: _parserFn$Mutation$FinishLesson,
        );

  final OnMutationCompleted$Mutation$FinishLesson? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$FinishLesson
    = graphql.MultiSourceResult<Mutation$FinishLesson> Function(
  Variables$Mutation$FinishLesson, {
  Object? optimisticResult,
  Mutation$FinishLesson? typedOptimisticResult,
});
typedef Builder$Mutation$FinishLesson = widgets.Widget Function(
  RunMutation$Mutation$FinishLesson,
  graphql.QueryResult<Mutation$FinishLesson>?,
);

class Mutation$FinishLesson$Widget
    extends graphql_flutter.Mutation<Mutation$FinishLesson> {
  Mutation$FinishLesson$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$FinishLesson? options,
    required Builder$Mutation$FinishLesson builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$FinishLesson(),
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

class Mutation$FinishLesson$finishLesson {
  Mutation$FinishLesson$finishLesson({
    required this.lesson,
    required this.journalRecord,
    this.$__typename = 'FinishLessonResult',
  });

  factory Mutation$FinishLesson$finishLesson.fromJson(
      Map<String, dynamic> json) {
    final l$lesson = json['lesson'];
    final l$journalRecord = json['journalRecord'];
    final l$$__typename = json['__typename'];
    return Mutation$FinishLesson$finishLesson(
      lesson: Fragment$LessonFull.fromJson((l$lesson as Map<String, dynamic>)),
      journalRecord: Fragment$JournalRecord.fromJson(
          (l$journalRecord as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$LessonFull lesson;

  final Fragment$JournalRecord journalRecord;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lesson = lesson;
    _resultData['lesson'] = l$lesson.toJson();
    final l$journalRecord = journalRecord;
    _resultData['journalRecord'] = l$journalRecord.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lesson = lesson;
    final l$journalRecord = journalRecord;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lesson,
      l$journalRecord,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$FinishLesson$finishLesson) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lesson = lesson;
    final lOther$lesson = other.lesson;
    if (l$lesson != lOther$lesson) {
      return false;
    }
    final l$journalRecord = journalRecord;
    final lOther$journalRecord = other.journalRecord;
    if (l$journalRecord != lOther$journalRecord) {
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

extension UtilityExtension$Mutation$FinishLesson$finishLesson
    on Mutation$FinishLesson$finishLesson {
  CopyWith$Mutation$FinishLesson$finishLesson<
          Mutation$FinishLesson$finishLesson>
      get copyWith => CopyWith$Mutation$FinishLesson$finishLesson(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$FinishLesson$finishLesson<TRes> {
  factory CopyWith$Mutation$FinishLesson$finishLesson(
    Mutation$FinishLesson$finishLesson instance,
    TRes Function(Mutation$FinishLesson$finishLesson) then,
  ) = _CopyWithImpl$Mutation$FinishLesson$finishLesson;

  factory CopyWith$Mutation$FinishLesson$finishLesson.stub(TRes res) =
      _CopyWithStubImpl$Mutation$FinishLesson$finishLesson;

  TRes call({
    Fragment$LessonFull? lesson,
    Fragment$JournalRecord? journalRecord,
    String? $__typename,
  });
  CopyWith$Fragment$LessonFull<TRes> get lesson;
  CopyWith$Fragment$JournalRecord<TRes> get journalRecord;
}

class _CopyWithImpl$Mutation$FinishLesson$finishLesson<TRes>
    implements CopyWith$Mutation$FinishLesson$finishLesson<TRes> {
  _CopyWithImpl$Mutation$FinishLesson$finishLesson(
    this._instance,
    this._then,
  );

  final Mutation$FinishLesson$finishLesson _instance;

  final TRes Function(Mutation$FinishLesson$finishLesson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lesson = _undefined,
    Object? journalRecord = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$FinishLesson$finishLesson(
        lesson: lesson == _undefined || lesson == null
            ? _instance.lesson
            : (lesson as Fragment$LessonFull),
        journalRecord: journalRecord == _undefined || journalRecord == null
            ? _instance.journalRecord
            : (journalRecord as Fragment$JournalRecord),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$LessonFull<TRes> get lesson {
    final local$lesson = _instance.lesson;
    return CopyWith$Fragment$LessonFull(local$lesson, (e) => call(lesson: e));
  }

  CopyWith$Fragment$JournalRecord<TRes> get journalRecord {
    final local$journalRecord = _instance.journalRecord;
    return CopyWith$Fragment$JournalRecord(
        local$journalRecord, (e) => call(journalRecord: e));
  }
}

class _CopyWithStubImpl$Mutation$FinishLesson$finishLesson<TRes>
    implements CopyWith$Mutation$FinishLesson$finishLesson<TRes> {
  _CopyWithStubImpl$Mutation$FinishLesson$finishLesson(this._res);

  TRes _res;

  call({
    Fragment$LessonFull? lesson,
    Fragment$JournalRecord? journalRecord,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$LessonFull<TRes> get lesson =>
      CopyWith$Fragment$LessonFull.stub(_res);

  CopyWith$Fragment$JournalRecord<TRes> get journalRecord =>
      CopyWith$Fragment$JournalRecord.stub(_res);
}

class Variables$Mutation$DownloadLesson {
  factory Variables$Mutation$DownloadLesson({
    required String id,
    required Input$DownloadLessonInput input,
  }) =>
      Variables$Mutation$DownloadLesson._({
        r'id': id,
        r'input': input,
      });

  Variables$Mutation$DownloadLesson._(this._$data);

  factory Variables$Mutation$DownloadLesson.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$input = data['input'];
    result$data['input'] =
        Input$DownloadLessonInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$DownloadLesson._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$DownloadLessonInput get input =>
      (_$data['input'] as Input$DownloadLessonInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$DownloadLesson<Variables$Mutation$DownloadLesson>
      get copyWith => CopyWith$Variables$Mutation$DownloadLesson(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DownloadLesson) ||
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

abstract class CopyWith$Variables$Mutation$DownloadLesson<TRes> {
  factory CopyWith$Variables$Mutation$DownloadLesson(
    Variables$Mutation$DownloadLesson instance,
    TRes Function(Variables$Mutation$DownloadLesson) then,
  ) = _CopyWithImpl$Variables$Mutation$DownloadLesson;

  factory CopyWith$Variables$Mutation$DownloadLesson.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DownloadLesson;

  TRes call({
    String? id,
    Input$DownloadLessonInput? input,
  });
}

class _CopyWithImpl$Variables$Mutation$DownloadLesson<TRes>
    implements CopyWith$Variables$Mutation$DownloadLesson<TRes> {
  _CopyWithImpl$Variables$Mutation$DownloadLesson(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DownloadLesson _instance;

  final TRes Function(Variables$Mutation$DownloadLesson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Mutation$DownloadLesson._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (input != _undefined && input != null)
          'input': (input as Input$DownloadLessonInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DownloadLesson<TRes>
    implements CopyWith$Variables$Mutation$DownloadLesson<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DownloadLesson(this._res);

  TRes _res;

  call({
    String? id,
    Input$DownloadLessonInput? input,
  }) =>
      _res;
}

class Mutation$DownloadLesson {
  Mutation$DownloadLesson({
    required this.downloadLesson,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DownloadLesson.fromJson(Map<String, dynamic> json) {
    final l$downloadLesson = json['downloadLesson'];
    final l$$__typename = json['__typename'];
    return Mutation$DownloadLesson(
      downloadLesson: Mutation$DownloadLesson$downloadLesson.fromJson(
          (l$downloadLesson as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DownloadLesson$downloadLesson downloadLesson;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$downloadLesson = downloadLesson;
    _resultData['downloadLesson'] = l$downloadLesson.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$downloadLesson = downloadLesson;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$downloadLesson,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DownloadLesson) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$downloadLesson = downloadLesson;
    final lOther$downloadLesson = other.downloadLesson;
    if (l$downloadLesson != lOther$downloadLesson) {
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

extension UtilityExtension$Mutation$DownloadLesson on Mutation$DownloadLesson {
  CopyWith$Mutation$DownloadLesson<Mutation$DownloadLesson> get copyWith =>
      CopyWith$Mutation$DownloadLesson(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DownloadLesson<TRes> {
  factory CopyWith$Mutation$DownloadLesson(
    Mutation$DownloadLesson instance,
    TRes Function(Mutation$DownloadLesson) then,
  ) = _CopyWithImpl$Mutation$DownloadLesson;

  factory CopyWith$Mutation$DownloadLesson.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DownloadLesson;

  TRes call({
    Mutation$DownloadLesson$downloadLesson? downloadLesson,
    String? $__typename,
  });
  CopyWith$Mutation$DownloadLesson$downloadLesson<TRes> get downloadLesson;
}

class _CopyWithImpl$Mutation$DownloadLesson<TRes>
    implements CopyWith$Mutation$DownloadLesson<TRes> {
  _CopyWithImpl$Mutation$DownloadLesson(
    this._instance,
    this._then,
  );

  final Mutation$DownloadLesson _instance;

  final TRes Function(Mutation$DownloadLesson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? downloadLesson = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DownloadLesson(
        downloadLesson: downloadLesson == _undefined || downloadLesson == null
            ? _instance.downloadLesson
            : (downloadLesson as Mutation$DownloadLesson$downloadLesson),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DownloadLesson$downloadLesson<TRes> get downloadLesson {
    final local$downloadLesson = _instance.downloadLesson;
    return CopyWith$Mutation$DownloadLesson$downloadLesson(
        local$downloadLesson, (e) => call(downloadLesson: e));
  }
}

class _CopyWithStubImpl$Mutation$DownloadLesson<TRes>
    implements CopyWith$Mutation$DownloadLesson<TRes> {
  _CopyWithStubImpl$Mutation$DownloadLesson(this._res);

  TRes _res;

  call({
    Mutation$DownloadLesson$downloadLesson? downloadLesson,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DownloadLesson$downloadLesson<TRes> get downloadLesson =>
      CopyWith$Mutation$DownloadLesson$downloadLesson.stub(_res);
}

const documentNodeMutationDownloadLesson = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DownloadLesson'),
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
          name: NameNode(value: 'DownloadLessonInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'downloadLesson'),
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
Mutation$DownloadLesson _parserFn$Mutation$DownloadLesson(
        Map<String, dynamic> data) =>
    Mutation$DownloadLesson.fromJson(data);
typedef OnMutationCompleted$Mutation$DownloadLesson = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DownloadLesson?,
);

class Options$Mutation$DownloadLesson
    extends graphql.MutationOptions<Mutation$DownloadLesson> {
  Options$Mutation$DownloadLesson({
    String? operationName,
    required Variables$Mutation$DownloadLesson variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DownloadLesson? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DownloadLesson? onCompleted,
    graphql.OnMutationUpdate<Mutation$DownloadLesson>? update,
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
                        : _parserFn$Mutation$DownloadLesson(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDownloadLesson,
          parserFn: _parserFn$Mutation$DownloadLesson,
        );

  final OnMutationCompleted$Mutation$DownloadLesson? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DownloadLesson
    extends graphql.WatchQueryOptions<Mutation$DownloadLesson> {
  WatchOptions$Mutation$DownloadLesson({
    String? operationName,
    required Variables$Mutation$DownloadLesson variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DownloadLesson? typedOptimisticResult,
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
          document: documentNodeMutationDownloadLesson,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DownloadLesson,
        );
}

extension ClientExtension$Mutation$DownloadLesson on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DownloadLesson>> mutate$DownloadLesson(
          Options$Mutation$DownloadLesson options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$DownloadLesson> watchMutation$DownloadLesson(
          WatchOptions$Mutation$DownloadLesson options) =>
      this.watchMutation(options);
}

class Mutation$DownloadLesson$HookResult {
  Mutation$DownloadLesson$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DownloadLesson runMutation;

  final graphql.QueryResult<Mutation$DownloadLesson> result;
}

Mutation$DownloadLesson$HookResult useMutation$DownloadLesson(
    [WidgetOptions$Mutation$DownloadLesson? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DownloadLesson());
  return Mutation$DownloadLesson$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DownloadLesson>
    useWatchMutation$DownloadLesson(
            WatchOptions$Mutation$DownloadLesson options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DownloadLesson
    extends graphql.MutationOptions<Mutation$DownloadLesson> {
  WidgetOptions$Mutation$DownloadLesson({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DownloadLesson? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DownloadLesson? onCompleted,
    graphql.OnMutationUpdate<Mutation$DownloadLesson>? update,
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
                        : _parserFn$Mutation$DownloadLesson(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDownloadLesson,
          parserFn: _parserFn$Mutation$DownloadLesson,
        );

  final OnMutationCompleted$Mutation$DownloadLesson? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DownloadLesson
    = graphql.MultiSourceResult<Mutation$DownloadLesson> Function(
  Variables$Mutation$DownloadLesson, {
  Object? optimisticResult,
  Mutation$DownloadLesson? typedOptimisticResult,
});
typedef Builder$Mutation$DownloadLesson = widgets.Widget Function(
  RunMutation$Mutation$DownloadLesson,
  graphql.QueryResult<Mutation$DownloadLesson>?,
);

class Mutation$DownloadLesson$Widget
    extends graphql_flutter.Mutation<Mutation$DownloadLesson> {
  Mutation$DownloadLesson$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DownloadLesson? options,
    required Builder$Mutation$DownloadLesson builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DownloadLesson(),
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

class Mutation$DownloadLesson$downloadLesson {
  Mutation$DownloadLesson$downloadLesson({
    required this.success,
    this.$__typename = 'DownloadLessonResult',
  });

  factory Mutation$DownloadLesson$downloadLesson.fromJson(
      Map<String, dynamic> json) {
    final l$success = json['success'];
    final l$$__typename = json['__typename'];
    return Mutation$DownloadLesson$downloadLesson(
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
    if (!(other is Mutation$DownloadLesson$downloadLesson) ||
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

extension UtilityExtension$Mutation$DownloadLesson$downloadLesson
    on Mutation$DownloadLesson$downloadLesson {
  CopyWith$Mutation$DownloadLesson$downloadLesson<
          Mutation$DownloadLesson$downloadLesson>
      get copyWith => CopyWith$Mutation$DownloadLesson$downloadLesson(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DownloadLesson$downloadLesson<TRes> {
  factory CopyWith$Mutation$DownloadLesson$downloadLesson(
    Mutation$DownloadLesson$downloadLesson instance,
    TRes Function(Mutation$DownloadLesson$downloadLesson) then,
  ) = _CopyWithImpl$Mutation$DownloadLesson$downloadLesson;

  factory CopyWith$Mutation$DownloadLesson$downloadLesson.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DownloadLesson$downloadLesson;

  TRes call({
    bool? success,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DownloadLesson$downloadLesson<TRes>
    implements CopyWith$Mutation$DownloadLesson$downloadLesson<TRes> {
  _CopyWithImpl$Mutation$DownloadLesson$downloadLesson(
    this._instance,
    this._then,
  );

  final Mutation$DownloadLesson$downloadLesson _instance;

  final TRes Function(Mutation$DownloadLesson$downloadLesson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DownloadLesson$downloadLesson(
        success: success == _undefined || success == null
            ? _instance.success
            : (success as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DownloadLesson$downloadLesson<TRes>
    implements CopyWith$Mutation$DownloadLesson$downloadLesson<TRes> {
  _CopyWithStubImpl$Mutation$DownloadLesson$downloadLesson(this._res);

  TRes _res;

  call({
    bool? success,
    String? $__typename,
  }) =>
      _res;
}
