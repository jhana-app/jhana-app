// GENERATED FILE, DO NOT MODIFY
import 'course.graphql.dart';
import 'dart:async';
import 'lesson.graphql.dart';
import 'lesson_audio.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';
import 'technique.graphql.dart';
import 'unit_technique.graphql.dart';

class Fragment$Unit {
  Fragment$Unit({
    required this.id,
    required this.courseID,
    required this.coverimage,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.mastering,
    required this.days,
    required this.color,
    required this.order,
    required this.lessonsTotal,
    required this.lessonsCompleted,
    required this.isActive,
    required this.course,
    this.$__typename = 'Unit',
  });

  factory Fragment$Unit.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$courseID = json['courseID'];
    final l$coverimage = json['coverimage'];
    final l$title = json['title'];
    final l$subtitle = json['subtitle'];
    final l$description = json['description'];
    final l$mastering = json['mastering'];
    final l$days = json['days'];
    final l$color = json['color'];
    final l$order = json['order'];
    final l$lessonsTotal = json['lessonsTotal'];
    final l$lessonsCompleted = json['lessonsCompleted'];
    final l$isActive = json['isActive'];
    final l$course = json['course'];
    final l$$__typename = json['__typename'];
    return Fragment$Unit(
      id: (l$id as String),
      courseID: (l$courseID as String),
      coverimage: (l$coverimage as String),
      title: (l$title as String),
      subtitle: (l$subtitle as String),
      description: (l$description as String),
      mastering: (l$mastering as String),
      days: (l$days as int),
      color: (l$color as String),
      order: (l$order as int),
      lessonsTotal: (l$lessonsTotal as int),
      lessonsCompleted: (l$lessonsCompleted as int),
      isActive: (l$isActive as bool),
      course: Fragment$Course.fromJson((l$course as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String courseID;

  final String coverimage;

  final String title;

  final String subtitle;

  final String description;

  final String mastering;

  final int days;

  final String color;

  final int order;

  final int lessonsTotal;

  final int lessonsCompleted;

  final bool isActive;

  final Fragment$Course course;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$courseID = courseID;
    _resultData['courseID'] = l$courseID;
    final l$coverimage = coverimage;
    _resultData['coverimage'] = l$coverimage;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$subtitle = subtitle;
    _resultData['subtitle'] = l$subtitle;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$mastering = mastering;
    _resultData['mastering'] = l$mastering;
    final l$days = days;
    _resultData['days'] = l$days;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$lessonsTotal = lessonsTotal;
    _resultData['lessonsTotal'] = l$lessonsTotal;
    final l$lessonsCompleted = lessonsCompleted;
    _resultData['lessonsCompleted'] = l$lessonsCompleted;
    final l$isActive = isActive;
    _resultData['isActive'] = l$isActive;
    final l$course = course;
    _resultData['course'] = l$course.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$courseID = courseID;
    final l$coverimage = coverimage;
    final l$title = title;
    final l$subtitle = subtitle;
    final l$description = description;
    final l$mastering = mastering;
    final l$days = days;
    final l$color = color;
    final l$order = order;
    final l$lessonsTotal = lessonsTotal;
    final l$lessonsCompleted = lessonsCompleted;
    final l$isActive = isActive;
    final l$course = course;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$courseID,
      l$coverimage,
      l$title,
      l$subtitle,
      l$description,
      l$mastering,
      l$days,
      l$color,
      l$order,
      l$lessonsTotal,
      l$lessonsCompleted,
      l$isActive,
      l$course,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Unit) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$courseID = courseID;
    final lOther$courseID = other.courseID;
    if (l$courseID != lOther$courseID) {
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
    final l$mastering = mastering;
    final lOther$mastering = other.mastering;
    if (l$mastering != lOther$mastering) {
      return false;
    }
    final l$days = days;
    final lOther$days = other.days;
    if (l$days != lOther$days) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$lessonsTotal = lessonsTotal;
    final lOther$lessonsTotal = other.lessonsTotal;
    if (l$lessonsTotal != lOther$lessonsTotal) {
      return false;
    }
    final l$lessonsCompleted = lessonsCompleted;
    final lOther$lessonsCompleted = other.lessonsCompleted;
    if (l$lessonsCompleted != lOther$lessonsCompleted) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$course = course;
    final lOther$course = other.course;
    if (l$course != lOther$course) {
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

extension UtilityExtension$Fragment$Unit on Fragment$Unit {
  CopyWith$Fragment$Unit<Fragment$Unit> get copyWith => CopyWith$Fragment$Unit(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Unit<TRes> {
  factory CopyWith$Fragment$Unit(
    Fragment$Unit instance,
    TRes Function(Fragment$Unit) then,
  ) = _CopyWithImpl$Fragment$Unit;

  factory CopyWith$Fragment$Unit.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Unit;

  TRes call({
    String? id,
    String? courseID,
    String? coverimage,
    String? title,
    String? subtitle,
    String? description,
    String? mastering,
    int? days,
    String? color,
    int? order,
    int? lessonsTotal,
    int? lessonsCompleted,
    bool? isActive,
    Fragment$Course? course,
    String? $__typename,
  });
  CopyWith$Fragment$Course<TRes> get course;
}

class _CopyWithImpl$Fragment$Unit<TRes>
    implements CopyWith$Fragment$Unit<TRes> {
  _CopyWithImpl$Fragment$Unit(
    this._instance,
    this._then,
  );

  final Fragment$Unit _instance;

  final TRes Function(Fragment$Unit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? courseID = _undefined,
    Object? coverimage = _undefined,
    Object? title = _undefined,
    Object? subtitle = _undefined,
    Object? description = _undefined,
    Object? mastering = _undefined,
    Object? days = _undefined,
    Object? color = _undefined,
    Object? order = _undefined,
    Object? lessonsTotal = _undefined,
    Object? lessonsCompleted = _undefined,
    Object? isActive = _undefined,
    Object? course = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Unit(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        courseID: courseID == _undefined || courseID == null
            ? _instance.courseID
            : (courseID as String),
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
        mastering: mastering == _undefined || mastering == null
            ? _instance.mastering
            : (mastering as String),
        days:
            days == _undefined || days == null ? _instance.days : (days as int),
        color: color == _undefined || color == null
            ? _instance.color
            : (color as String),
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        lessonsTotal: lessonsTotal == _undefined || lessonsTotal == null
            ? _instance.lessonsTotal
            : (lessonsTotal as int),
        lessonsCompleted:
            lessonsCompleted == _undefined || lessonsCompleted == null
                ? _instance.lessonsCompleted
                : (lessonsCompleted as int),
        isActive: isActive == _undefined || isActive == null
            ? _instance.isActive
            : (isActive as bool),
        course: course == _undefined || course == null
            ? _instance.course
            : (course as Fragment$Course),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Course<TRes> get course {
    final local$course = _instance.course;
    return CopyWith$Fragment$Course(local$course, (e) => call(course: e));
  }
}

class _CopyWithStubImpl$Fragment$Unit<TRes>
    implements CopyWith$Fragment$Unit<TRes> {
  _CopyWithStubImpl$Fragment$Unit(this._res);

  TRes _res;

  call({
    String? id,
    String? courseID,
    String? coverimage,
    String? title,
    String? subtitle,
    String? description,
    String? mastering,
    int? days,
    String? color,
    int? order,
    int? lessonsTotal,
    int? lessonsCompleted,
    bool? isActive,
    Fragment$Course? course,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Course<TRes> get course =>
      CopyWith$Fragment$Course.stub(_res);
}

const fragmentDefinitionUnit = FragmentDefinitionNode(
  name: NameNode(value: 'Unit'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Unit'),
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
      name: NameNode(value: 'courseID'),
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
      name: NameNode(value: 'mastering'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'days'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'color'),
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
      name: NameNode(value: 'lessonsTotal'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'lessonsCompleted'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isActive'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'course'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Course'),
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
const documentNodeFragmentUnit = DocumentNode(definitions: [
  fragmentDefinitionUnit,
  fragmentDefinitionCourse,
]);

extension ClientExtension$Fragment$Unit on graphql.GraphQLClient {
  void writeFragment$Unit({
    required Fragment$Unit data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Unit',
            document: documentNodeFragmentUnit,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Unit? readFragment$Unit({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Unit',
          document: documentNodeFragmentUnit,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Unit.fromJson(result);
  }
}

class Fragment$UnitFull implements Fragment$Unit {
  Fragment$UnitFull({
    required this.id,
    required this.courseID,
    required this.coverimage,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.mastering,
    required this.days,
    required this.color,
    required this.order,
    required this.lessonsTotal,
    required this.lessonsCompleted,
    required this.isActive,
    required this.course,
    this.$__typename = 'Unit',
    required this.lessons,
    required this.unitTechniques,
    this.nextUnit,
  });

  factory Fragment$UnitFull.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$courseID = json['courseID'];
    final l$coverimage = json['coverimage'];
    final l$title = json['title'];
    final l$subtitle = json['subtitle'];
    final l$description = json['description'];
    final l$mastering = json['mastering'];
    final l$days = json['days'];
    final l$color = json['color'];
    final l$order = json['order'];
    final l$lessonsTotal = json['lessonsTotal'];
    final l$lessonsCompleted = json['lessonsCompleted'];
    final l$isActive = json['isActive'];
    final l$course = json['course'];
    final l$$__typename = json['__typename'];
    final l$lessons = json['lessons'];
    final l$unitTechniques = json['unitTechniques'];
    final l$nextUnit = json['nextUnit'];
    return Fragment$UnitFull(
      id: (l$id as String),
      courseID: (l$courseID as String),
      coverimage: (l$coverimage as String),
      title: (l$title as String),
      subtitle: (l$subtitle as String),
      description: (l$description as String),
      mastering: (l$mastering as String),
      days: (l$days as int),
      color: (l$color as String),
      order: (l$order as int),
      lessonsTotal: (l$lessonsTotal as int),
      lessonsCompleted: (l$lessonsCompleted as int),
      isActive: (l$isActive as bool),
      course: Fragment$Course.fromJson((l$course as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      lessons: Fragment$UnitFull$lessons.fromJson(
          (l$lessons as Map<String, dynamic>)),
      unitTechniques: (l$unitTechniques as List<dynamic>)
          .map((e) =>
              Fragment$UnitTechnique.fromJson((e as Map<String, dynamic>)))
          .toList(),
      nextUnit: l$nextUnit == null
          ? null
          : Fragment$Unit.fromJson((l$nextUnit as Map<String, dynamic>)),
    );
  }

  final String id;

  final String courseID;

  final String coverimage;

  final String title;

  final String subtitle;

  final String description;

  final String mastering;

  final int days;

  final String color;

  final int order;

  final int lessonsTotal;

  final int lessonsCompleted;

  final bool isActive;

  final Fragment$Course course;

  final String $__typename;

  final Fragment$UnitFull$lessons lessons;

  final List<Fragment$UnitTechnique> unitTechniques;

  final Fragment$Unit? nextUnit;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$courseID = courseID;
    _resultData['courseID'] = l$courseID;
    final l$coverimage = coverimage;
    _resultData['coverimage'] = l$coverimage;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$subtitle = subtitle;
    _resultData['subtitle'] = l$subtitle;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$mastering = mastering;
    _resultData['mastering'] = l$mastering;
    final l$days = days;
    _resultData['days'] = l$days;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$lessonsTotal = lessonsTotal;
    _resultData['lessonsTotal'] = l$lessonsTotal;
    final l$lessonsCompleted = lessonsCompleted;
    _resultData['lessonsCompleted'] = l$lessonsCompleted;
    final l$isActive = isActive;
    _resultData['isActive'] = l$isActive;
    final l$course = course;
    _resultData['course'] = l$course.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$lessons = lessons;
    _resultData['lessons'] = l$lessons.toJson();
    final l$unitTechniques = unitTechniques;
    _resultData['unitTechniques'] =
        l$unitTechniques.map((e) => e.toJson()).toList();
    final l$nextUnit = nextUnit;
    _resultData['nextUnit'] = l$nextUnit?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$courseID = courseID;
    final l$coverimage = coverimage;
    final l$title = title;
    final l$subtitle = subtitle;
    final l$description = description;
    final l$mastering = mastering;
    final l$days = days;
    final l$color = color;
    final l$order = order;
    final l$lessonsTotal = lessonsTotal;
    final l$lessonsCompleted = lessonsCompleted;
    final l$isActive = isActive;
    final l$course = course;
    final l$$__typename = $__typename;
    final l$lessons = lessons;
    final l$unitTechniques = unitTechniques;
    final l$nextUnit = nextUnit;
    return Object.hashAll([
      l$id,
      l$courseID,
      l$coverimage,
      l$title,
      l$subtitle,
      l$description,
      l$mastering,
      l$days,
      l$color,
      l$order,
      l$lessonsTotal,
      l$lessonsCompleted,
      l$isActive,
      l$course,
      l$$__typename,
      l$lessons,
      Object.hashAll(l$unitTechniques.map((v) => v)),
      l$nextUnit,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$UnitFull) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$courseID = courseID;
    final lOther$courseID = other.courseID;
    if (l$courseID != lOther$courseID) {
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
    final l$mastering = mastering;
    final lOther$mastering = other.mastering;
    if (l$mastering != lOther$mastering) {
      return false;
    }
    final l$days = days;
    final lOther$days = other.days;
    if (l$days != lOther$days) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$lessonsTotal = lessonsTotal;
    final lOther$lessonsTotal = other.lessonsTotal;
    if (l$lessonsTotal != lOther$lessonsTotal) {
      return false;
    }
    final l$lessonsCompleted = lessonsCompleted;
    final lOther$lessonsCompleted = other.lessonsCompleted;
    if (l$lessonsCompleted != lOther$lessonsCompleted) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$course = course;
    final lOther$course = other.course;
    if (l$course != lOther$course) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$lessons = lessons;
    final lOther$lessons = other.lessons;
    if (l$lessons != lOther$lessons) {
      return false;
    }
    final l$unitTechniques = unitTechniques;
    final lOther$unitTechniques = other.unitTechniques;
    if (l$unitTechniques.length != lOther$unitTechniques.length) {
      return false;
    }
    for (int i = 0; i < l$unitTechniques.length; i++) {
      final l$unitTechniques$entry = l$unitTechniques[i];
      final lOther$unitTechniques$entry = lOther$unitTechniques[i];
      if (l$unitTechniques$entry != lOther$unitTechniques$entry) {
        return false;
      }
    }
    final l$nextUnit = nextUnit;
    final lOther$nextUnit = other.nextUnit;
    if (l$nextUnit != lOther$nextUnit) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$UnitFull on Fragment$UnitFull {
  CopyWith$Fragment$UnitFull<Fragment$UnitFull> get copyWith =>
      CopyWith$Fragment$UnitFull(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$UnitFull<TRes> {
  factory CopyWith$Fragment$UnitFull(
    Fragment$UnitFull instance,
    TRes Function(Fragment$UnitFull) then,
  ) = _CopyWithImpl$Fragment$UnitFull;

  factory CopyWith$Fragment$UnitFull.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UnitFull;

  TRes call({
    String? id,
    String? courseID,
    String? coverimage,
    String? title,
    String? subtitle,
    String? description,
    String? mastering,
    int? days,
    String? color,
    int? order,
    int? lessonsTotal,
    int? lessonsCompleted,
    bool? isActive,
    Fragment$Course? course,
    String? $__typename,
    Fragment$UnitFull$lessons? lessons,
    List<Fragment$UnitTechnique>? unitTechniques,
    Fragment$Unit? nextUnit,
  });
  CopyWith$Fragment$Course<TRes> get course;
  CopyWith$Fragment$UnitFull$lessons<TRes> get lessons;
  TRes unitTechniques(
      Iterable<Fragment$UnitTechnique> Function(
              Iterable<CopyWith$Fragment$UnitTechnique<Fragment$UnitTechnique>>)
          _fn);
  CopyWith$Fragment$Unit<TRes> get nextUnit;
}

class _CopyWithImpl$Fragment$UnitFull<TRes>
    implements CopyWith$Fragment$UnitFull<TRes> {
  _CopyWithImpl$Fragment$UnitFull(
    this._instance,
    this._then,
  );

  final Fragment$UnitFull _instance;

  final TRes Function(Fragment$UnitFull) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? courseID = _undefined,
    Object? coverimage = _undefined,
    Object? title = _undefined,
    Object? subtitle = _undefined,
    Object? description = _undefined,
    Object? mastering = _undefined,
    Object? days = _undefined,
    Object? color = _undefined,
    Object? order = _undefined,
    Object? lessonsTotal = _undefined,
    Object? lessonsCompleted = _undefined,
    Object? isActive = _undefined,
    Object? course = _undefined,
    Object? $__typename = _undefined,
    Object? lessons = _undefined,
    Object? unitTechniques = _undefined,
    Object? nextUnit = _undefined,
  }) =>
      _then(Fragment$UnitFull(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        courseID: courseID == _undefined || courseID == null
            ? _instance.courseID
            : (courseID as String),
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
        mastering: mastering == _undefined || mastering == null
            ? _instance.mastering
            : (mastering as String),
        days:
            days == _undefined || days == null ? _instance.days : (days as int),
        color: color == _undefined || color == null
            ? _instance.color
            : (color as String),
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        lessonsTotal: lessonsTotal == _undefined || lessonsTotal == null
            ? _instance.lessonsTotal
            : (lessonsTotal as int),
        lessonsCompleted:
            lessonsCompleted == _undefined || lessonsCompleted == null
                ? _instance.lessonsCompleted
                : (lessonsCompleted as int),
        isActive: isActive == _undefined || isActive == null
            ? _instance.isActive
            : (isActive as bool),
        course: course == _undefined || course == null
            ? _instance.course
            : (course as Fragment$Course),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        lessons: lessons == _undefined || lessons == null
            ? _instance.lessons
            : (lessons as Fragment$UnitFull$lessons),
        unitTechniques: unitTechniques == _undefined || unitTechniques == null
            ? _instance.unitTechniques
            : (unitTechniques as List<Fragment$UnitTechnique>),
        nextUnit: nextUnit == _undefined
            ? _instance.nextUnit
            : (nextUnit as Fragment$Unit?),
      ));

  CopyWith$Fragment$Course<TRes> get course {
    final local$course = _instance.course;
    return CopyWith$Fragment$Course(local$course, (e) => call(course: e));
  }

  CopyWith$Fragment$UnitFull$lessons<TRes> get lessons {
    final local$lessons = _instance.lessons;
    return CopyWith$Fragment$UnitFull$lessons(
        local$lessons, (e) => call(lessons: e));
  }

  TRes unitTechniques(
          Iterable<Fragment$UnitTechnique> Function(
                  Iterable<
                      CopyWith$Fragment$UnitTechnique<Fragment$UnitTechnique>>)
              _fn) =>
      call(
          unitTechniques: _fn(_instance.unitTechniques
              .map((e) => CopyWith$Fragment$UnitTechnique(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Fragment$Unit<TRes> get nextUnit {
    final local$nextUnit = _instance.nextUnit;
    return local$nextUnit == null
        ? CopyWith$Fragment$Unit.stub(_then(_instance))
        : CopyWith$Fragment$Unit(local$nextUnit, (e) => call(nextUnit: e));
  }
}

class _CopyWithStubImpl$Fragment$UnitFull<TRes>
    implements CopyWith$Fragment$UnitFull<TRes> {
  _CopyWithStubImpl$Fragment$UnitFull(this._res);

  TRes _res;

  call({
    String? id,
    String? courseID,
    String? coverimage,
    String? title,
    String? subtitle,
    String? description,
    String? mastering,
    int? days,
    String? color,
    int? order,
    int? lessonsTotal,
    int? lessonsCompleted,
    bool? isActive,
    Fragment$Course? course,
    String? $__typename,
    Fragment$UnitFull$lessons? lessons,
    List<Fragment$UnitTechnique>? unitTechniques,
    Fragment$Unit? nextUnit,
  }) =>
      _res;

  CopyWith$Fragment$Course<TRes> get course =>
      CopyWith$Fragment$Course.stub(_res);

  CopyWith$Fragment$UnitFull$lessons<TRes> get lessons =>
      CopyWith$Fragment$UnitFull$lessons.stub(_res);

  unitTechniques(_fn) => _res;

  CopyWith$Fragment$Unit<TRes> get nextUnit =>
      CopyWith$Fragment$Unit.stub(_res);
}

const fragmentDefinitionUnitFull = FragmentDefinitionNode(
  name: NameNode(value: 'UnitFull'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Unit'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FragmentSpreadNode(
      name: NameNode(value: 'Unit'),
      directives: [],
    ),
    FieldNode(
      name: NameNode(value: 'lessons'),
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
                  name: NameNode(value: 'Lesson'),
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
    FieldNode(
      name: NameNode(value: 'unitTechniques'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'UnitTechnique'),
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
      name: NameNode(value: 'nextUnit'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentUnitFull = DocumentNode(definitions: [
  fragmentDefinitionUnitFull,
  fragmentDefinitionUnit,
  fragmentDefinitionCourse,
  fragmentDefinitionLesson,
  fragmentDefinitionLessonAudio,
  fragmentDefinitionUnitTechnique,
  fragmentDefinitionTechnique,
]);

extension ClientExtension$Fragment$UnitFull on graphql.GraphQLClient {
  void writeFragment$UnitFull({
    required Fragment$UnitFull data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'UnitFull',
            document: documentNodeFragmentUnitFull,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$UnitFull? readFragment$UnitFull({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'UnitFull',
          document: documentNodeFragmentUnitFull,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$UnitFull.fromJson(result);
  }
}

class Fragment$UnitFull$lessons {
  Fragment$UnitFull$lessons({
    this.edges,
    this.$__typename = 'LessonConnection',
  });

  factory Fragment$UnitFull$lessons.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Fragment$UnitFull$lessons(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$UnitFull$lessons$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$UnitFull$lessons$edges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$UnitFull$lessons) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$UnitFull$lessons
    on Fragment$UnitFull$lessons {
  CopyWith$Fragment$UnitFull$lessons<Fragment$UnitFull$lessons> get copyWith =>
      CopyWith$Fragment$UnitFull$lessons(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$UnitFull$lessons<TRes> {
  factory CopyWith$Fragment$UnitFull$lessons(
    Fragment$UnitFull$lessons instance,
    TRes Function(Fragment$UnitFull$lessons) then,
  ) = _CopyWithImpl$Fragment$UnitFull$lessons;

  factory CopyWith$Fragment$UnitFull$lessons.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UnitFull$lessons;

  TRes call({
    List<Fragment$UnitFull$lessons$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$UnitFull$lessons$edges?>? Function(
              Iterable<
                  CopyWith$Fragment$UnitFull$lessons$edges<
                      Fragment$UnitFull$lessons$edges>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$UnitFull$lessons<TRes>
    implements CopyWith$Fragment$UnitFull$lessons<TRes> {
  _CopyWithImpl$Fragment$UnitFull$lessons(
    this._instance,
    this._then,
  );

  final Fragment$UnitFull$lessons _instance;

  final TRes Function(Fragment$UnitFull$lessons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UnitFull$lessons(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Fragment$UnitFull$lessons$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Fragment$UnitFull$lessons$edges?>? Function(
                  Iterable<
                      CopyWith$Fragment$UnitFull$lessons$edges<
                          Fragment$UnitFull$lessons$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Fragment$UnitFull$lessons$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$UnitFull$lessons<TRes>
    implements CopyWith$Fragment$UnitFull$lessons<TRes> {
  _CopyWithStubImpl$Fragment$UnitFull$lessons(this._res);

  TRes _res;

  call({
    List<Fragment$UnitFull$lessons$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Fragment$UnitFull$lessons$edges {
  Fragment$UnitFull$lessons$edges({
    this.node,
    this.$__typename = 'LessonEdge',
  });

  factory Fragment$UnitFull$lessons$edges.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Fragment$UnitFull$lessons$edges(
      node: l$node == null
          ? null
          : Fragment$Lesson.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Lesson? node;

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
    if (!(other is Fragment$UnitFull$lessons$edges) ||
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

extension UtilityExtension$Fragment$UnitFull$lessons$edges
    on Fragment$UnitFull$lessons$edges {
  CopyWith$Fragment$UnitFull$lessons$edges<Fragment$UnitFull$lessons$edges>
      get copyWith => CopyWith$Fragment$UnitFull$lessons$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UnitFull$lessons$edges<TRes> {
  factory CopyWith$Fragment$UnitFull$lessons$edges(
    Fragment$UnitFull$lessons$edges instance,
    TRes Function(Fragment$UnitFull$lessons$edges) then,
  ) = _CopyWithImpl$Fragment$UnitFull$lessons$edges;

  factory CopyWith$Fragment$UnitFull$lessons$edges.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UnitFull$lessons$edges;

  TRes call({
    Fragment$Lesson? node,
    String? $__typename,
  });
  CopyWith$Fragment$Lesson<TRes> get node;
}

class _CopyWithImpl$Fragment$UnitFull$lessons$edges<TRes>
    implements CopyWith$Fragment$UnitFull$lessons$edges<TRes> {
  _CopyWithImpl$Fragment$UnitFull$lessons$edges(
    this._instance,
    this._then,
  );

  final Fragment$UnitFull$lessons$edges _instance;

  final TRes Function(Fragment$UnitFull$lessons$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UnitFull$lessons$edges(
        node: node == _undefined ? _instance.node : (node as Fragment$Lesson?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Lesson<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$Lesson.stub(_then(_instance))
        : CopyWith$Fragment$Lesson(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Fragment$UnitFull$lessons$edges<TRes>
    implements CopyWith$Fragment$UnitFull$lessons$edges<TRes> {
  _CopyWithStubImpl$Fragment$UnitFull$lessons$edges(this._res);

  TRes _res;

  call({
    Fragment$Lesson? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Lesson<TRes> get node =>
      CopyWith$Fragment$Lesson.stub(_res);
}

class Variables$Query$FetchCourseUnits {
  factory Variables$Query$FetchCourseUnits({required String courseId}) =>
      Variables$Query$FetchCourseUnits._({
        r'courseId': courseId,
      });

  Variables$Query$FetchCourseUnits._(this._$data);

  factory Variables$Query$FetchCourseUnits.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$courseId = data['courseId'];
    result$data['courseId'] = (l$courseId as String);
    return Variables$Query$FetchCourseUnits._(result$data);
  }

  Map<String, dynamic> _$data;

  String get courseId => (_$data['courseId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$courseId = courseId;
    result$data['courseId'] = l$courseId;
    return result$data;
  }

  CopyWith$Variables$Query$FetchCourseUnits<Variables$Query$FetchCourseUnits>
      get copyWith => CopyWith$Variables$Query$FetchCourseUnits(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FetchCourseUnits) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$courseId = courseId;
    final lOther$courseId = other.courseId;
    if (l$courseId != lOther$courseId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$courseId = courseId;
    return Object.hashAll([l$courseId]);
  }
}

abstract class CopyWith$Variables$Query$FetchCourseUnits<TRes> {
  factory CopyWith$Variables$Query$FetchCourseUnits(
    Variables$Query$FetchCourseUnits instance,
    TRes Function(Variables$Query$FetchCourseUnits) then,
  ) = _CopyWithImpl$Variables$Query$FetchCourseUnits;

  factory CopyWith$Variables$Query$FetchCourseUnits.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FetchCourseUnits;

  TRes call({String? courseId});
}

class _CopyWithImpl$Variables$Query$FetchCourseUnits<TRes>
    implements CopyWith$Variables$Query$FetchCourseUnits<TRes> {
  _CopyWithImpl$Variables$Query$FetchCourseUnits(
    this._instance,
    this._then,
  );

  final Variables$Query$FetchCourseUnits _instance;

  final TRes Function(Variables$Query$FetchCourseUnits) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? courseId = _undefined}) =>
      _then(Variables$Query$FetchCourseUnits._({
        ..._instance._$data,
        if (courseId != _undefined && courseId != null)
          'courseId': (courseId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$FetchCourseUnits<TRes>
    implements CopyWith$Variables$Query$FetchCourseUnits<TRes> {
  _CopyWithStubImpl$Variables$Query$FetchCourseUnits(this._res);

  TRes _res;

  call({String? courseId}) => _res;
}

class Query$FetchCourseUnits {
  Query$FetchCourseUnits({
    this.node,
    this.$__typename = 'Query',
  });

  factory Query$FetchCourseUnits.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$FetchCourseUnits(
      node: l$node == null
          ? null
          : Query$FetchCourseUnits$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchCourseUnits$node? node;

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
    if (!(other is Query$FetchCourseUnits) ||
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

extension UtilityExtension$Query$FetchCourseUnits on Query$FetchCourseUnits {
  CopyWith$Query$FetchCourseUnits<Query$FetchCourseUnits> get copyWith =>
      CopyWith$Query$FetchCourseUnits(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchCourseUnits<TRes> {
  factory CopyWith$Query$FetchCourseUnits(
    Query$FetchCourseUnits instance,
    TRes Function(Query$FetchCourseUnits) then,
  ) = _CopyWithImpl$Query$FetchCourseUnits;

  factory CopyWith$Query$FetchCourseUnits.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourseUnits;

  TRes call({
    Query$FetchCourseUnits$node? node,
    String? $__typename,
  });
  CopyWith$Query$FetchCourseUnits$node<TRes> get node;
}

class _CopyWithImpl$Query$FetchCourseUnits<TRes>
    implements CopyWith$Query$FetchCourseUnits<TRes> {
  _CopyWithImpl$Query$FetchCourseUnits(
    this._instance,
    this._then,
  );

  final Query$FetchCourseUnits _instance;

  final TRes Function(Query$FetchCourseUnits) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourseUnits(
        node: node == _undefined
            ? _instance.node
            : (node as Query$FetchCourseUnits$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FetchCourseUnits$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$FetchCourseUnits$node.stub(_then(_instance))
        : CopyWith$Query$FetchCourseUnits$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$FetchCourseUnits<TRes>
    implements CopyWith$Query$FetchCourseUnits<TRes> {
  _CopyWithStubImpl$Query$FetchCourseUnits(this._res);

  TRes _res;

  call({
    Query$FetchCourseUnits$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FetchCourseUnits$node<TRes> get node =>
      CopyWith$Query$FetchCourseUnits$node.stub(_res);
}

const documentNodeQueryFetchCourseUnits = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchCourseUnits'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'courseId')),
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
            value: VariableNode(name: NameNode(value: 'courseId')),
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
              name: NameNode(value: 'Course'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Course'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: 'units'),
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
  fragmentDefinitionCourse,
  fragmentDefinitionUnit,
]);
Query$FetchCourseUnits _parserFn$Query$FetchCourseUnits(
        Map<String, dynamic> data) =>
    Query$FetchCourseUnits.fromJson(data);
typedef OnQueryComplete$Query$FetchCourseUnits = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FetchCourseUnits?,
);

class Options$Query$FetchCourseUnits
    extends graphql.QueryOptions<Query$FetchCourseUnits> {
  Options$Query$FetchCourseUnits({
    String? operationName,
    required Variables$Query$FetchCourseUnits variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchCourseUnits? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FetchCourseUnits? onComplete,
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
                        : _parserFn$Query$FetchCourseUnits(data),
                  ),
          onError: onError,
          document: documentNodeQueryFetchCourseUnits,
          parserFn: _parserFn$Query$FetchCourseUnits,
        );

  final OnQueryComplete$Query$FetchCourseUnits? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FetchCourseUnits
    extends graphql.WatchQueryOptions<Query$FetchCourseUnits> {
  WatchOptions$Query$FetchCourseUnits({
    String? operationName,
    required Variables$Query$FetchCourseUnits variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchCourseUnits? typedOptimisticResult,
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
          document: documentNodeQueryFetchCourseUnits,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchCourseUnits,
        );
}

class FetchMoreOptions$Query$FetchCourseUnits extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchCourseUnits({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$FetchCourseUnits variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryFetchCourseUnits,
        );
}

extension ClientExtension$Query$FetchCourseUnits on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchCourseUnits>> query$FetchCourseUnits(
          Options$Query$FetchCourseUnits options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$FetchCourseUnits> watchQuery$FetchCourseUnits(
          WatchOptions$Query$FetchCourseUnits options) =>
      this.watchQuery(options);
  void writeQuery$FetchCourseUnits({
    required Query$FetchCourseUnits data,
    required Variables$Query$FetchCourseUnits variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFetchCourseUnits),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchCourseUnits? readQuery$FetchCourseUnits({
    required Variables$Query$FetchCourseUnits variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryFetchCourseUnits),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchCourseUnits.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchCourseUnits>
    useQuery$FetchCourseUnits(Options$Query$FetchCourseUnits options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$FetchCourseUnits> useWatchQuery$FetchCourseUnits(
        WatchOptions$Query$FetchCourseUnits options) =>
    graphql_flutter.useWatchQuery(options);

class Query$FetchCourseUnits$Widget
    extends graphql_flutter.Query<Query$FetchCourseUnits> {
  Query$FetchCourseUnits$Widget({
    widgets.Key? key,
    required Options$Query$FetchCourseUnits options,
    required graphql_flutter.QueryBuilder<Query$FetchCourseUnits> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$FetchCourseUnits$node {
  Query$FetchCourseUnits$node({
    required this.id,
    required this.$__typename,
  });

  factory Query$FetchCourseUnits$node.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Course":
        return Query$FetchCourseUnits$node$$Course.fromJson(json);

      case "Content":
        return Query$FetchCourseUnits$node$$Content.fromJson(json);

      case "ContentEpisode":
        return Query$FetchCourseUnits$node$$ContentEpisode.fromJson(json);

      case "ContentProgress":
        return Query$FetchCourseUnits$node$$ContentProgress.fromJson(json);

      case "JournalRecord":
        return Query$FetchCourseUnits$node$$JournalRecord.fromJson(json);

      case "Lesson":
        return Query$FetchCourseUnits$node$$Lesson.fromJson(json);

      case "LessonAudio":
        return Query$FetchCourseUnits$node$$LessonAudio.fromJson(json);

      case "Technique":
        return Query$FetchCourseUnits$node$$Technique.fromJson(json);

      case "Unit":
        return Query$FetchCourseUnits$node$$Unit.fromJson(json);

      case "User":
        return Query$FetchCourseUnits$node$$User.fromJson(json);

      case "UserProgress":
        return Query$FetchCourseUnits$node$$UserProgress.fromJson(json);

      default:
        final l$id = json['id'];
        final l$$__typename = json['__typename'];
        return Query$FetchCourseUnits$node(
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
    if (!(other is Query$FetchCourseUnits$node) ||
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

extension UtilityExtension$Query$FetchCourseUnits$node
    on Query$FetchCourseUnits$node {
  CopyWith$Query$FetchCourseUnits$node<Query$FetchCourseUnits$node>
      get copyWith => CopyWith$Query$FetchCourseUnits$node(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Query$FetchCourseUnits$node$$Course) course,
    required _T Function(Query$FetchCourseUnits$node$$Content) content,
    required _T Function(Query$FetchCourseUnits$node$$ContentEpisode)
        contentEpisode,
    required _T Function(Query$FetchCourseUnits$node$$ContentProgress)
        contentProgress,
    required _T Function(Query$FetchCourseUnits$node$$JournalRecord)
        journalRecord,
    required _T Function(Query$FetchCourseUnits$node$$Lesson) lesson,
    required _T Function(Query$FetchCourseUnits$node$$LessonAudio) lessonAudio,
    required _T Function(Query$FetchCourseUnits$node$$Technique) technique,
    required _T Function(Query$FetchCourseUnits$node$$Unit) unit,
    required _T Function(Query$FetchCourseUnits$node$$User) user,
    required _T Function(Query$FetchCourseUnits$node$$UserProgress)
        userProgress,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Course":
        return course(this as Query$FetchCourseUnits$node$$Course);

      case "Content":
        return content(this as Query$FetchCourseUnits$node$$Content);

      case "ContentEpisode":
        return contentEpisode(
            this as Query$FetchCourseUnits$node$$ContentEpisode);

      case "ContentProgress":
        return contentProgress(
            this as Query$FetchCourseUnits$node$$ContentProgress);

      case "JournalRecord":
        return journalRecord(
            this as Query$FetchCourseUnits$node$$JournalRecord);

      case "Lesson":
        return lesson(this as Query$FetchCourseUnits$node$$Lesson);

      case "LessonAudio":
        return lessonAudio(this as Query$FetchCourseUnits$node$$LessonAudio);

      case "Technique":
        return technique(this as Query$FetchCourseUnits$node$$Technique);

      case "Unit":
        return unit(this as Query$FetchCourseUnits$node$$Unit);

      case "User":
        return user(this as Query$FetchCourseUnits$node$$User);

      case "UserProgress":
        return userProgress(this as Query$FetchCourseUnits$node$$UserProgress);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$FetchCourseUnits$node$$Course)? course,
    _T Function(Query$FetchCourseUnits$node$$Content)? content,
    _T Function(Query$FetchCourseUnits$node$$ContentEpisode)? contentEpisode,
    _T Function(Query$FetchCourseUnits$node$$ContentProgress)? contentProgress,
    _T Function(Query$FetchCourseUnits$node$$JournalRecord)? journalRecord,
    _T Function(Query$FetchCourseUnits$node$$Lesson)? lesson,
    _T Function(Query$FetchCourseUnits$node$$LessonAudio)? lessonAudio,
    _T Function(Query$FetchCourseUnits$node$$Technique)? technique,
    _T Function(Query$FetchCourseUnits$node$$Unit)? unit,
    _T Function(Query$FetchCourseUnits$node$$User)? user,
    _T Function(Query$FetchCourseUnits$node$$UserProgress)? userProgress,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Course":
        if (course != null) {
          return course(this as Query$FetchCourseUnits$node$$Course);
        } else {
          return orElse();
        }

      case "Content":
        if (content != null) {
          return content(this as Query$FetchCourseUnits$node$$Content);
        } else {
          return orElse();
        }

      case "ContentEpisode":
        if (contentEpisode != null) {
          return contentEpisode(
              this as Query$FetchCourseUnits$node$$ContentEpisode);
        } else {
          return orElse();
        }

      case "ContentProgress":
        if (contentProgress != null) {
          return contentProgress(
              this as Query$FetchCourseUnits$node$$ContentProgress);
        } else {
          return orElse();
        }

      case "JournalRecord":
        if (journalRecord != null) {
          return journalRecord(
              this as Query$FetchCourseUnits$node$$JournalRecord);
        } else {
          return orElse();
        }

      case "Lesson":
        if (lesson != null) {
          return lesson(this as Query$FetchCourseUnits$node$$Lesson);
        } else {
          return orElse();
        }

      case "LessonAudio":
        if (lessonAudio != null) {
          return lessonAudio(this as Query$FetchCourseUnits$node$$LessonAudio);
        } else {
          return orElse();
        }

      case "Technique":
        if (technique != null) {
          return technique(this as Query$FetchCourseUnits$node$$Technique);
        } else {
          return orElse();
        }

      case "Unit":
        if (unit != null) {
          return unit(this as Query$FetchCourseUnits$node$$Unit);
        } else {
          return orElse();
        }

      case "User":
        if (user != null) {
          return user(this as Query$FetchCourseUnits$node$$User);
        } else {
          return orElse();
        }

      case "UserProgress":
        if (userProgress != null) {
          return userProgress(
              this as Query$FetchCourseUnits$node$$UserProgress);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$FetchCourseUnits$node<TRes> {
  factory CopyWith$Query$FetchCourseUnits$node(
    Query$FetchCourseUnits$node instance,
    TRes Function(Query$FetchCourseUnits$node) then,
  ) = _CopyWithImpl$Query$FetchCourseUnits$node;

  factory CopyWith$Query$FetchCourseUnits$node.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourseUnits$node;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchCourseUnits$node<TRes>
    implements CopyWith$Query$FetchCourseUnits$node<TRes> {
  _CopyWithImpl$Query$FetchCourseUnits$node(
    this._instance,
    this._then,
  );

  final Query$FetchCourseUnits$node _instance;

  final TRes Function(Query$FetchCourseUnits$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourseUnits$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchCourseUnits$node<TRes>
    implements CopyWith$Query$FetchCourseUnits$node<TRes> {
  _CopyWithStubImpl$Query$FetchCourseUnits$node(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchCourseUnits$node$$Course
    implements Fragment$Course, Query$FetchCourseUnits$node {
  Query$FetchCourseUnits$node$$Course({
    required this.id,
    required this.coverimage,
    required this.title,
    required this.description,
    required this.color,
    required this.active,
    required this.order,
    required this.isStarted,
    this.$__typename = 'Course',
    required this.units,
  });

  factory Query$FetchCourseUnits$node$$Course.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$coverimage = json['coverimage'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$color = json['color'];
    final l$active = json['active'];
    final l$order = json['order'];
    final l$isStarted = json['isStarted'];
    final l$$__typename = json['__typename'];
    final l$units = json['units'];
    return Query$FetchCourseUnits$node$$Course(
      id: (l$id as String),
      coverimage: (l$coverimage as String),
      title: (l$title as String),
      description: (l$description as String),
      color: (l$color as String),
      active: (l$active as bool),
      order: (l$order as int),
      isStarted: (l$isStarted as bool),
      $__typename: (l$$__typename as String),
      units: Query$FetchCourseUnits$node$$Course$units.fromJson(
          (l$units as Map<String, dynamic>)),
    );
  }

  final String id;

  final String coverimage;

  final String title;

  final String description;

  final String color;

  final bool active;

  final int order;

  final bool isStarted;

  final String $__typename;

  final Query$FetchCourseUnits$node$$Course$units units;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$coverimage = coverimage;
    _resultData['coverimage'] = l$coverimage;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$isStarted = isStarted;
    _resultData['isStarted'] = l$isStarted;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$units = units;
    _resultData['units'] = l$units.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$coverimage = coverimage;
    final l$title = title;
    final l$description = description;
    final l$color = color;
    final l$active = active;
    final l$order = order;
    final l$isStarted = isStarted;
    final l$$__typename = $__typename;
    final l$units = units;
    return Object.hashAll([
      l$id,
      l$coverimage,
      l$title,
      l$description,
      l$color,
      l$active,
      l$order,
      l$isStarted,
      l$$__typename,
      l$units,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchCourseUnits$node$$Course) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$isStarted = isStarted;
    final lOther$isStarted = other.isStarted;
    if (l$isStarted != lOther$isStarted) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$units = units;
    final lOther$units = other.units;
    if (l$units != lOther$units) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchCourseUnits$node$$Course
    on Query$FetchCourseUnits$node$$Course {
  CopyWith$Query$FetchCourseUnits$node$$Course<
          Query$FetchCourseUnits$node$$Course>
      get copyWith => CopyWith$Query$FetchCourseUnits$node$$Course(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCourseUnits$node$$Course<TRes> {
  factory CopyWith$Query$FetchCourseUnits$node$$Course(
    Query$FetchCourseUnits$node$$Course instance,
    TRes Function(Query$FetchCourseUnits$node$$Course) then,
  ) = _CopyWithImpl$Query$FetchCourseUnits$node$$Course;

  factory CopyWith$Query$FetchCourseUnits$node$$Course.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourseUnits$node$$Course;

  TRes call({
    String? id,
    String? coverimage,
    String? title,
    String? description,
    String? color,
    bool? active,
    int? order,
    bool? isStarted,
    String? $__typename,
    Query$FetchCourseUnits$node$$Course$units? units,
  });
  CopyWith$Query$FetchCourseUnits$node$$Course$units<TRes> get units;
}

class _CopyWithImpl$Query$FetchCourseUnits$node$$Course<TRes>
    implements CopyWith$Query$FetchCourseUnits$node$$Course<TRes> {
  _CopyWithImpl$Query$FetchCourseUnits$node$$Course(
    this._instance,
    this._then,
  );

  final Query$FetchCourseUnits$node$$Course _instance;

  final TRes Function(Query$FetchCourseUnits$node$$Course) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? coverimage = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? color = _undefined,
    Object? active = _undefined,
    Object? order = _undefined,
    Object? isStarted = _undefined,
    Object? $__typename = _undefined,
    Object? units = _undefined,
  }) =>
      _then(Query$FetchCourseUnits$node$$Course(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        coverimage: coverimage == _undefined || coverimage == null
            ? _instance.coverimage
            : (coverimage as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        color: color == _undefined || color == null
            ? _instance.color
            : (color as String),
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        isStarted: isStarted == _undefined || isStarted == null
            ? _instance.isStarted
            : (isStarted as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        units: units == _undefined || units == null
            ? _instance.units
            : (units as Query$FetchCourseUnits$node$$Course$units),
      ));

  CopyWith$Query$FetchCourseUnits$node$$Course$units<TRes> get units {
    final local$units = _instance.units;
    return CopyWith$Query$FetchCourseUnits$node$$Course$units(
        local$units, (e) => call(units: e));
  }
}

class _CopyWithStubImpl$Query$FetchCourseUnits$node$$Course<TRes>
    implements CopyWith$Query$FetchCourseUnits$node$$Course<TRes> {
  _CopyWithStubImpl$Query$FetchCourseUnits$node$$Course(this._res);

  TRes _res;

  call({
    String? id,
    String? coverimage,
    String? title,
    String? description,
    String? color,
    bool? active,
    int? order,
    bool? isStarted,
    String? $__typename,
    Query$FetchCourseUnits$node$$Course$units? units,
  }) =>
      _res;

  CopyWith$Query$FetchCourseUnits$node$$Course$units<TRes> get units =>
      CopyWith$Query$FetchCourseUnits$node$$Course$units.stub(_res);
}

class Query$FetchCourseUnits$node$$Course$units {
  Query$FetchCourseUnits$node$$Course$units({
    this.edges,
    required this.totalCount,
    this.$__typename = 'UnitConnection',
  });

  factory Query$FetchCourseUnits$node$$Course$units.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$FetchCourseUnits$node$$Course$units(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$FetchCourseUnits$node$$Course$units$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      totalCount: (l$totalCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FetchCourseUnits$node$$Course$units$edges?>? edges;

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
    if (!(other is Query$FetchCourseUnits$node$$Course$units) ||
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

extension UtilityExtension$Query$FetchCourseUnits$node$$Course$units
    on Query$FetchCourseUnits$node$$Course$units {
  CopyWith$Query$FetchCourseUnits$node$$Course$units<
          Query$FetchCourseUnits$node$$Course$units>
      get copyWith => CopyWith$Query$FetchCourseUnits$node$$Course$units(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCourseUnits$node$$Course$units<TRes> {
  factory CopyWith$Query$FetchCourseUnits$node$$Course$units(
    Query$FetchCourseUnits$node$$Course$units instance,
    TRes Function(Query$FetchCourseUnits$node$$Course$units) then,
  ) = _CopyWithImpl$Query$FetchCourseUnits$node$$Course$units;

  factory CopyWith$Query$FetchCourseUnits$node$$Course$units.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourseUnits$node$$Course$units;

  TRes call({
    List<Query$FetchCourseUnits$node$$Course$units$edges?>? edges,
    int? totalCount,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$FetchCourseUnits$node$$Course$units$edges?>? Function(
              Iterable<
                  CopyWith$Query$FetchCourseUnits$node$$Course$units$edges<
                      Query$FetchCourseUnits$node$$Course$units$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$FetchCourseUnits$node$$Course$units<TRes>
    implements CopyWith$Query$FetchCourseUnits$node$$Course$units<TRes> {
  _CopyWithImpl$Query$FetchCourseUnits$node$$Course$units(
    this._instance,
    this._then,
  );

  final Query$FetchCourseUnits$node$$Course$units _instance;

  final TRes Function(Query$FetchCourseUnits$node$$Course$units) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourseUnits$node$$Course$units(
        edges: edges == _undefined
            ? _instance.edges
            : (edges
                as List<Query$FetchCourseUnits$node$$Course$units$edges?>?),
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$FetchCourseUnits$node$$Course$units$edges?>? Function(
                  Iterable<
                      CopyWith$Query$FetchCourseUnits$node$$Course$units$edges<
                          Query$FetchCourseUnits$node$$Course$units$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$FetchCourseUnits$node$$Course$units$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FetchCourseUnits$node$$Course$units<TRes>
    implements CopyWith$Query$FetchCourseUnits$node$$Course$units<TRes> {
  _CopyWithStubImpl$Query$FetchCourseUnits$node$$Course$units(this._res);

  TRes _res;

  call({
    List<Query$FetchCourseUnits$node$$Course$units$edges?>? edges,
    int? totalCount,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$FetchCourseUnits$node$$Course$units$edges {
  Query$FetchCourseUnits$node$$Course$units$edges({
    this.node,
    this.$__typename = 'UnitEdge',
  });

  factory Query$FetchCourseUnits$node$$Course$units$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$FetchCourseUnits$node$$Course$units$edges(
      node: l$node == null
          ? null
          : Fragment$Unit.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Unit? node;

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
    if (!(other is Query$FetchCourseUnits$node$$Course$units$edges) ||
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

extension UtilityExtension$Query$FetchCourseUnits$node$$Course$units$edges
    on Query$FetchCourseUnits$node$$Course$units$edges {
  CopyWith$Query$FetchCourseUnits$node$$Course$units$edges<
          Query$FetchCourseUnits$node$$Course$units$edges>
      get copyWith => CopyWith$Query$FetchCourseUnits$node$$Course$units$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCourseUnits$node$$Course$units$edges<TRes> {
  factory CopyWith$Query$FetchCourseUnits$node$$Course$units$edges(
    Query$FetchCourseUnits$node$$Course$units$edges instance,
    TRes Function(Query$FetchCourseUnits$node$$Course$units$edges) then,
  ) = _CopyWithImpl$Query$FetchCourseUnits$node$$Course$units$edges;

  factory CopyWith$Query$FetchCourseUnits$node$$Course$units$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FetchCourseUnits$node$$Course$units$edges;

  TRes call({
    Fragment$Unit? node,
    String? $__typename,
  });
  CopyWith$Fragment$Unit<TRes> get node;
}

class _CopyWithImpl$Query$FetchCourseUnits$node$$Course$units$edges<TRes>
    implements CopyWith$Query$FetchCourseUnits$node$$Course$units$edges<TRes> {
  _CopyWithImpl$Query$FetchCourseUnits$node$$Course$units$edges(
    this._instance,
    this._then,
  );

  final Query$FetchCourseUnits$node$$Course$units$edges _instance;

  final TRes Function(Query$FetchCourseUnits$node$$Course$units$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourseUnits$node$$Course$units$edges(
        node: node == _undefined ? _instance.node : (node as Fragment$Unit?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Unit<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$Unit.stub(_then(_instance))
        : CopyWith$Fragment$Unit(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$FetchCourseUnits$node$$Course$units$edges<TRes>
    implements CopyWith$Query$FetchCourseUnits$node$$Course$units$edges<TRes> {
  _CopyWithStubImpl$Query$FetchCourseUnits$node$$Course$units$edges(this._res);

  TRes _res;

  call({
    Fragment$Unit? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Unit<TRes> get node => CopyWith$Fragment$Unit.stub(_res);
}

class Query$FetchCourseUnits$node$$Content
    implements Query$FetchCourseUnits$node {
  Query$FetchCourseUnits$node$$Content({
    required this.id,
    this.$__typename = 'Content',
  });

  factory Query$FetchCourseUnits$node$$Content.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchCourseUnits$node$$Content(
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
    if (!(other is Query$FetchCourseUnits$node$$Content) ||
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

extension UtilityExtension$Query$FetchCourseUnits$node$$Content
    on Query$FetchCourseUnits$node$$Content {
  CopyWith$Query$FetchCourseUnits$node$$Content<
          Query$FetchCourseUnits$node$$Content>
      get copyWith => CopyWith$Query$FetchCourseUnits$node$$Content(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCourseUnits$node$$Content<TRes> {
  factory CopyWith$Query$FetchCourseUnits$node$$Content(
    Query$FetchCourseUnits$node$$Content instance,
    TRes Function(Query$FetchCourseUnits$node$$Content) then,
  ) = _CopyWithImpl$Query$FetchCourseUnits$node$$Content;

  factory CopyWith$Query$FetchCourseUnits$node$$Content.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourseUnits$node$$Content;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchCourseUnits$node$$Content<TRes>
    implements CopyWith$Query$FetchCourseUnits$node$$Content<TRes> {
  _CopyWithImpl$Query$FetchCourseUnits$node$$Content(
    this._instance,
    this._then,
  );

  final Query$FetchCourseUnits$node$$Content _instance;

  final TRes Function(Query$FetchCourseUnits$node$$Content) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourseUnits$node$$Content(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchCourseUnits$node$$Content<TRes>
    implements CopyWith$Query$FetchCourseUnits$node$$Content<TRes> {
  _CopyWithStubImpl$Query$FetchCourseUnits$node$$Content(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchCourseUnits$node$$ContentEpisode
    implements Query$FetchCourseUnits$node {
  Query$FetchCourseUnits$node$$ContentEpisode({
    required this.id,
    this.$__typename = 'ContentEpisode',
  });

  factory Query$FetchCourseUnits$node$$ContentEpisode.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchCourseUnits$node$$ContentEpisode(
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
    if (!(other is Query$FetchCourseUnits$node$$ContentEpisode) ||
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

extension UtilityExtension$Query$FetchCourseUnits$node$$ContentEpisode
    on Query$FetchCourseUnits$node$$ContentEpisode {
  CopyWith$Query$FetchCourseUnits$node$$ContentEpisode<
          Query$FetchCourseUnits$node$$ContentEpisode>
      get copyWith => CopyWith$Query$FetchCourseUnits$node$$ContentEpisode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCourseUnits$node$$ContentEpisode<TRes> {
  factory CopyWith$Query$FetchCourseUnits$node$$ContentEpisode(
    Query$FetchCourseUnits$node$$ContentEpisode instance,
    TRes Function(Query$FetchCourseUnits$node$$ContentEpisode) then,
  ) = _CopyWithImpl$Query$FetchCourseUnits$node$$ContentEpisode;

  factory CopyWith$Query$FetchCourseUnits$node$$ContentEpisode.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourseUnits$node$$ContentEpisode;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchCourseUnits$node$$ContentEpisode<TRes>
    implements CopyWith$Query$FetchCourseUnits$node$$ContentEpisode<TRes> {
  _CopyWithImpl$Query$FetchCourseUnits$node$$ContentEpisode(
    this._instance,
    this._then,
  );

  final Query$FetchCourseUnits$node$$ContentEpisode _instance;

  final TRes Function(Query$FetchCourseUnits$node$$ContentEpisode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourseUnits$node$$ContentEpisode(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchCourseUnits$node$$ContentEpisode<TRes>
    implements CopyWith$Query$FetchCourseUnits$node$$ContentEpisode<TRes> {
  _CopyWithStubImpl$Query$FetchCourseUnits$node$$ContentEpisode(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchCourseUnits$node$$ContentProgress
    implements Query$FetchCourseUnits$node {
  Query$FetchCourseUnits$node$$ContentProgress({
    required this.id,
    this.$__typename = 'ContentProgress',
  });

  factory Query$FetchCourseUnits$node$$ContentProgress.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchCourseUnits$node$$ContentProgress(
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
    if (!(other is Query$FetchCourseUnits$node$$ContentProgress) ||
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

extension UtilityExtension$Query$FetchCourseUnits$node$$ContentProgress
    on Query$FetchCourseUnits$node$$ContentProgress {
  CopyWith$Query$FetchCourseUnits$node$$ContentProgress<
          Query$FetchCourseUnits$node$$ContentProgress>
      get copyWith => CopyWith$Query$FetchCourseUnits$node$$ContentProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCourseUnits$node$$ContentProgress<TRes> {
  factory CopyWith$Query$FetchCourseUnits$node$$ContentProgress(
    Query$FetchCourseUnits$node$$ContentProgress instance,
    TRes Function(Query$FetchCourseUnits$node$$ContentProgress) then,
  ) = _CopyWithImpl$Query$FetchCourseUnits$node$$ContentProgress;

  factory CopyWith$Query$FetchCourseUnits$node$$ContentProgress.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourseUnits$node$$ContentProgress;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchCourseUnits$node$$ContentProgress<TRes>
    implements CopyWith$Query$FetchCourseUnits$node$$ContentProgress<TRes> {
  _CopyWithImpl$Query$FetchCourseUnits$node$$ContentProgress(
    this._instance,
    this._then,
  );

  final Query$FetchCourseUnits$node$$ContentProgress _instance;

  final TRes Function(Query$FetchCourseUnits$node$$ContentProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourseUnits$node$$ContentProgress(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchCourseUnits$node$$ContentProgress<TRes>
    implements CopyWith$Query$FetchCourseUnits$node$$ContentProgress<TRes> {
  _CopyWithStubImpl$Query$FetchCourseUnits$node$$ContentProgress(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchCourseUnits$node$$JournalRecord
    implements Query$FetchCourseUnits$node {
  Query$FetchCourseUnits$node$$JournalRecord({
    required this.id,
    this.$__typename = 'JournalRecord',
  });

  factory Query$FetchCourseUnits$node$$JournalRecord.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchCourseUnits$node$$JournalRecord(
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
    if (!(other is Query$FetchCourseUnits$node$$JournalRecord) ||
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

extension UtilityExtension$Query$FetchCourseUnits$node$$JournalRecord
    on Query$FetchCourseUnits$node$$JournalRecord {
  CopyWith$Query$FetchCourseUnits$node$$JournalRecord<
          Query$FetchCourseUnits$node$$JournalRecord>
      get copyWith => CopyWith$Query$FetchCourseUnits$node$$JournalRecord(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCourseUnits$node$$JournalRecord<TRes> {
  factory CopyWith$Query$FetchCourseUnits$node$$JournalRecord(
    Query$FetchCourseUnits$node$$JournalRecord instance,
    TRes Function(Query$FetchCourseUnits$node$$JournalRecord) then,
  ) = _CopyWithImpl$Query$FetchCourseUnits$node$$JournalRecord;

  factory CopyWith$Query$FetchCourseUnits$node$$JournalRecord.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourseUnits$node$$JournalRecord;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchCourseUnits$node$$JournalRecord<TRes>
    implements CopyWith$Query$FetchCourseUnits$node$$JournalRecord<TRes> {
  _CopyWithImpl$Query$FetchCourseUnits$node$$JournalRecord(
    this._instance,
    this._then,
  );

  final Query$FetchCourseUnits$node$$JournalRecord _instance;

  final TRes Function(Query$FetchCourseUnits$node$$JournalRecord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourseUnits$node$$JournalRecord(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchCourseUnits$node$$JournalRecord<TRes>
    implements CopyWith$Query$FetchCourseUnits$node$$JournalRecord<TRes> {
  _CopyWithStubImpl$Query$FetchCourseUnits$node$$JournalRecord(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchCourseUnits$node$$Lesson
    implements Query$FetchCourseUnits$node {
  Query$FetchCourseUnits$node$$Lesson({
    required this.id,
    this.$__typename = 'Lesson',
  });

  factory Query$FetchCourseUnits$node$$Lesson.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchCourseUnits$node$$Lesson(
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
    if (!(other is Query$FetchCourseUnits$node$$Lesson) ||
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

extension UtilityExtension$Query$FetchCourseUnits$node$$Lesson
    on Query$FetchCourseUnits$node$$Lesson {
  CopyWith$Query$FetchCourseUnits$node$$Lesson<
          Query$FetchCourseUnits$node$$Lesson>
      get copyWith => CopyWith$Query$FetchCourseUnits$node$$Lesson(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCourseUnits$node$$Lesson<TRes> {
  factory CopyWith$Query$FetchCourseUnits$node$$Lesson(
    Query$FetchCourseUnits$node$$Lesson instance,
    TRes Function(Query$FetchCourseUnits$node$$Lesson) then,
  ) = _CopyWithImpl$Query$FetchCourseUnits$node$$Lesson;

  factory CopyWith$Query$FetchCourseUnits$node$$Lesson.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourseUnits$node$$Lesson;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchCourseUnits$node$$Lesson<TRes>
    implements CopyWith$Query$FetchCourseUnits$node$$Lesson<TRes> {
  _CopyWithImpl$Query$FetchCourseUnits$node$$Lesson(
    this._instance,
    this._then,
  );

  final Query$FetchCourseUnits$node$$Lesson _instance;

  final TRes Function(Query$FetchCourseUnits$node$$Lesson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourseUnits$node$$Lesson(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchCourseUnits$node$$Lesson<TRes>
    implements CopyWith$Query$FetchCourseUnits$node$$Lesson<TRes> {
  _CopyWithStubImpl$Query$FetchCourseUnits$node$$Lesson(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchCourseUnits$node$$LessonAudio
    implements Query$FetchCourseUnits$node {
  Query$FetchCourseUnits$node$$LessonAudio({
    required this.id,
    this.$__typename = 'LessonAudio',
  });

  factory Query$FetchCourseUnits$node$$LessonAudio.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchCourseUnits$node$$LessonAudio(
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
    if (!(other is Query$FetchCourseUnits$node$$LessonAudio) ||
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

extension UtilityExtension$Query$FetchCourseUnits$node$$LessonAudio
    on Query$FetchCourseUnits$node$$LessonAudio {
  CopyWith$Query$FetchCourseUnits$node$$LessonAudio<
          Query$FetchCourseUnits$node$$LessonAudio>
      get copyWith => CopyWith$Query$FetchCourseUnits$node$$LessonAudio(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCourseUnits$node$$LessonAudio<TRes> {
  factory CopyWith$Query$FetchCourseUnits$node$$LessonAudio(
    Query$FetchCourseUnits$node$$LessonAudio instance,
    TRes Function(Query$FetchCourseUnits$node$$LessonAudio) then,
  ) = _CopyWithImpl$Query$FetchCourseUnits$node$$LessonAudio;

  factory CopyWith$Query$FetchCourseUnits$node$$LessonAudio.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourseUnits$node$$LessonAudio;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchCourseUnits$node$$LessonAudio<TRes>
    implements CopyWith$Query$FetchCourseUnits$node$$LessonAudio<TRes> {
  _CopyWithImpl$Query$FetchCourseUnits$node$$LessonAudio(
    this._instance,
    this._then,
  );

  final Query$FetchCourseUnits$node$$LessonAudio _instance;

  final TRes Function(Query$FetchCourseUnits$node$$LessonAudio) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourseUnits$node$$LessonAudio(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchCourseUnits$node$$LessonAudio<TRes>
    implements CopyWith$Query$FetchCourseUnits$node$$LessonAudio<TRes> {
  _CopyWithStubImpl$Query$FetchCourseUnits$node$$LessonAudio(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchCourseUnits$node$$Technique
    implements Query$FetchCourseUnits$node {
  Query$FetchCourseUnits$node$$Technique({
    required this.id,
    this.$__typename = 'Technique',
  });

  factory Query$FetchCourseUnits$node$$Technique.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchCourseUnits$node$$Technique(
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
    if (!(other is Query$FetchCourseUnits$node$$Technique) ||
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

extension UtilityExtension$Query$FetchCourseUnits$node$$Technique
    on Query$FetchCourseUnits$node$$Technique {
  CopyWith$Query$FetchCourseUnits$node$$Technique<
          Query$FetchCourseUnits$node$$Technique>
      get copyWith => CopyWith$Query$FetchCourseUnits$node$$Technique(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCourseUnits$node$$Technique<TRes> {
  factory CopyWith$Query$FetchCourseUnits$node$$Technique(
    Query$FetchCourseUnits$node$$Technique instance,
    TRes Function(Query$FetchCourseUnits$node$$Technique) then,
  ) = _CopyWithImpl$Query$FetchCourseUnits$node$$Technique;

  factory CopyWith$Query$FetchCourseUnits$node$$Technique.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourseUnits$node$$Technique;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchCourseUnits$node$$Technique<TRes>
    implements CopyWith$Query$FetchCourseUnits$node$$Technique<TRes> {
  _CopyWithImpl$Query$FetchCourseUnits$node$$Technique(
    this._instance,
    this._then,
  );

  final Query$FetchCourseUnits$node$$Technique _instance;

  final TRes Function(Query$FetchCourseUnits$node$$Technique) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourseUnits$node$$Technique(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchCourseUnits$node$$Technique<TRes>
    implements CopyWith$Query$FetchCourseUnits$node$$Technique<TRes> {
  _CopyWithStubImpl$Query$FetchCourseUnits$node$$Technique(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchCourseUnits$node$$Unit implements Query$FetchCourseUnits$node {
  Query$FetchCourseUnits$node$$Unit({
    required this.id,
    this.$__typename = 'Unit',
  });

  factory Query$FetchCourseUnits$node$$Unit.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchCourseUnits$node$$Unit(
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
    if (!(other is Query$FetchCourseUnits$node$$Unit) ||
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

extension UtilityExtension$Query$FetchCourseUnits$node$$Unit
    on Query$FetchCourseUnits$node$$Unit {
  CopyWith$Query$FetchCourseUnits$node$$Unit<Query$FetchCourseUnits$node$$Unit>
      get copyWith => CopyWith$Query$FetchCourseUnits$node$$Unit(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCourseUnits$node$$Unit<TRes> {
  factory CopyWith$Query$FetchCourseUnits$node$$Unit(
    Query$FetchCourseUnits$node$$Unit instance,
    TRes Function(Query$FetchCourseUnits$node$$Unit) then,
  ) = _CopyWithImpl$Query$FetchCourseUnits$node$$Unit;

  factory CopyWith$Query$FetchCourseUnits$node$$Unit.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourseUnits$node$$Unit;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchCourseUnits$node$$Unit<TRes>
    implements CopyWith$Query$FetchCourseUnits$node$$Unit<TRes> {
  _CopyWithImpl$Query$FetchCourseUnits$node$$Unit(
    this._instance,
    this._then,
  );

  final Query$FetchCourseUnits$node$$Unit _instance;

  final TRes Function(Query$FetchCourseUnits$node$$Unit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourseUnits$node$$Unit(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchCourseUnits$node$$Unit<TRes>
    implements CopyWith$Query$FetchCourseUnits$node$$Unit<TRes> {
  _CopyWithStubImpl$Query$FetchCourseUnits$node$$Unit(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchCourseUnits$node$$User implements Query$FetchCourseUnits$node {
  Query$FetchCourseUnits$node$$User({
    required this.id,
    this.$__typename = 'User',
  });

  factory Query$FetchCourseUnits$node$$User.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchCourseUnits$node$$User(
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
    if (!(other is Query$FetchCourseUnits$node$$User) ||
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

extension UtilityExtension$Query$FetchCourseUnits$node$$User
    on Query$FetchCourseUnits$node$$User {
  CopyWith$Query$FetchCourseUnits$node$$User<Query$FetchCourseUnits$node$$User>
      get copyWith => CopyWith$Query$FetchCourseUnits$node$$User(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCourseUnits$node$$User<TRes> {
  factory CopyWith$Query$FetchCourseUnits$node$$User(
    Query$FetchCourseUnits$node$$User instance,
    TRes Function(Query$FetchCourseUnits$node$$User) then,
  ) = _CopyWithImpl$Query$FetchCourseUnits$node$$User;

  factory CopyWith$Query$FetchCourseUnits$node$$User.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourseUnits$node$$User;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchCourseUnits$node$$User<TRes>
    implements CopyWith$Query$FetchCourseUnits$node$$User<TRes> {
  _CopyWithImpl$Query$FetchCourseUnits$node$$User(
    this._instance,
    this._then,
  );

  final Query$FetchCourseUnits$node$$User _instance;

  final TRes Function(Query$FetchCourseUnits$node$$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourseUnits$node$$User(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchCourseUnits$node$$User<TRes>
    implements CopyWith$Query$FetchCourseUnits$node$$User<TRes> {
  _CopyWithStubImpl$Query$FetchCourseUnits$node$$User(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchCourseUnits$node$$UserProgress
    implements Query$FetchCourseUnits$node {
  Query$FetchCourseUnits$node$$UserProgress({
    required this.id,
    this.$__typename = 'UserProgress',
  });

  factory Query$FetchCourseUnits$node$$UserProgress.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchCourseUnits$node$$UserProgress(
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
    if (!(other is Query$FetchCourseUnits$node$$UserProgress) ||
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

extension UtilityExtension$Query$FetchCourseUnits$node$$UserProgress
    on Query$FetchCourseUnits$node$$UserProgress {
  CopyWith$Query$FetchCourseUnits$node$$UserProgress<
          Query$FetchCourseUnits$node$$UserProgress>
      get copyWith => CopyWith$Query$FetchCourseUnits$node$$UserProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCourseUnits$node$$UserProgress<TRes> {
  factory CopyWith$Query$FetchCourseUnits$node$$UserProgress(
    Query$FetchCourseUnits$node$$UserProgress instance,
    TRes Function(Query$FetchCourseUnits$node$$UserProgress) then,
  ) = _CopyWithImpl$Query$FetchCourseUnits$node$$UserProgress;

  factory CopyWith$Query$FetchCourseUnits$node$$UserProgress.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourseUnits$node$$UserProgress;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchCourseUnits$node$$UserProgress<TRes>
    implements CopyWith$Query$FetchCourseUnits$node$$UserProgress<TRes> {
  _CopyWithImpl$Query$FetchCourseUnits$node$$UserProgress(
    this._instance,
    this._then,
  );

  final Query$FetchCourseUnits$node$$UserProgress _instance;

  final TRes Function(Query$FetchCourseUnits$node$$UserProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourseUnits$node$$UserProgress(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchCourseUnits$node$$UserProgress<TRes>
    implements CopyWith$Query$FetchCourseUnits$node$$UserProgress<TRes> {
  _CopyWithStubImpl$Query$FetchCourseUnits$node$$UserProgress(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$FetchUnit {
  factory Variables$Query$FetchUnit({required String unitId}) =>
      Variables$Query$FetchUnit._({
        r'unitId': unitId,
      });

  Variables$Query$FetchUnit._(this._$data);

  factory Variables$Query$FetchUnit.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$unitId = data['unitId'];
    result$data['unitId'] = (l$unitId as String);
    return Variables$Query$FetchUnit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get unitId => (_$data['unitId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$unitId = unitId;
    result$data['unitId'] = l$unitId;
    return result$data;
  }

  CopyWith$Variables$Query$FetchUnit<Variables$Query$FetchUnit> get copyWith =>
      CopyWith$Variables$Query$FetchUnit(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FetchUnit) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$unitId = unitId;
    final lOther$unitId = other.unitId;
    if (l$unitId != lOther$unitId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$unitId = unitId;
    return Object.hashAll([l$unitId]);
  }
}

abstract class CopyWith$Variables$Query$FetchUnit<TRes> {
  factory CopyWith$Variables$Query$FetchUnit(
    Variables$Query$FetchUnit instance,
    TRes Function(Variables$Query$FetchUnit) then,
  ) = _CopyWithImpl$Variables$Query$FetchUnit;

  factory CopyWith$Variables$Query$FetchUnit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FetchUnit;

  TRes call({String? unitId});
}

class _CopyWithImpl$Variables$Query$FetchUnit<TRes>
    implements CopyWith$Variables$Query$FetchUnit<TRes> {
  _CopyWithImpl$Variables$Query$FetchUnit(
    this._instance,
    this._then,
  );

  final Variables$Query$FetchUnit _instance;

  final TRes Function(Variables$Query$FetchUnit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? unitId = _undefined}) =>
      _then(Variables$Query$FetchUnit._({
        ..._instance._$data,
        if (unitId != _undefined && unitId != null)
          'unitId': (unitId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$FetchUnit<TRes>
    implements CopyWith$Variables$Query$FetchUnit<TRes> {
  _CopyWithStubImpl$Variables$Query$FetchUnit(this._res);

  TRes _res;

  call({String? unitId}) => _res;
}

class Query$FetchUnit {
  Query$FetchUnit({
    this.node,
    this.$__typename = 'Query',
  });

  factory Query$FetchUnit.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$FetchUnit(
      node: l$node == null
          ? null
          : Query$FetchUnit$node.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchUnit$node? node;

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
    if (!(other is Query$FetchUnit) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FetchUnit on Query$FetchUnit {
  CopyWith$Query$FetchUnit<Query$FetchUnit> get copyWith =>
      CopyWith$Query$FetchUnit(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchUnit<TRes> {
  factory CopyWith$Query$FetchUnit(
    Query$FetchUnit instance,
    TRes Function(Query$FetchUnit) then,
  ) = _CopyWithImpl$Query$FetchUnit;

  factory CopyWith$Query$FetchUnit.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchUnit;

  TRes call({
    Query$FetchUnit$node? node,
    String? $__typename,
  });
  CopyWith$Query$FetchUnit$node<TRes> get node;
}

class _CopyWithImpl$Query$FetchUnit<TRes>
    implements CopyWith$Query$FetchUnit<TRes> {
  _CopyWithImpl$Query$FetchUnit(
    this._instance,
    this._then,
  );

  final Query$FetchUnit _instance;

  final TRes Function(Query$FetchUnit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchUnit(
        node: node == _undefined
            ? _instance.node
            : (node as Query$FetchUnit$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FetchUnit$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$FetchUnit$node.stub(_then(_instance))
        : CopyWith$Query$FetchUnit$node(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$FetchUnit<TRes>
    implements CopyWith$Query$FetchUnit<TRes> {
  _CopyWithStubImpl$Query$FetchUnit(this._res);

  TRes _res;

  call({
    Query$FetchUnit$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FetchUnit$node<TRes> get node =>
      CopyWith$Query$FetchUnit$node.stub(_res);
}

const documentNodeQueryFetchUnit = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchUnit'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'unitId')),
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
            value: VariableNode(name: NameNode(value: 'unitId')),
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
              name: NameNode(value: 'Unit'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'UnitFull'),
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
  fragmentDefinitionUnitFull,
  fragmentDefinitionUnit,
  fragmentDefinitionCourse,
  fragmentDefinitionLesson,
  fragmentDefinitionLessonAudio,
  fragmentDefinitionUnitTechnique,
  fragmentDefinitionTechnique,
]);
Query$FetchUnit _parserFn$Query$FetchUnit(Map<String, dynamic> data) =>
    Query$FetchUnit.fromJson(data);
typedef OnQueryComplete$Query$FetchUnit = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FetchUnit?,
);

class Options$Query$FetchUnit extends graphql.QueryOptions<Query$FetchUnit> {
  Options$Query$FetchUnit({
    String? operationName,
    required Variables$Query$FetchUnit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchUnit? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FetchUnit? onComplete,
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
                    data == null ? null : _parserFn$Query$FetchUnit(data),
                  ),
          onError: onError,
          document: documentNodeQueryFetchUnit,
          parserFn: _parserFn$Query$FetchUnit,
        );

  final OnQueryComplete$Query$FetchUnit? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FetchUnit
    extends graphql.WatchQueryOptions<Query$FetchUnit> {
  WatchOptions$Query$FetchUnit({
    String? operationName,
    required Variables$Query$FetchUnit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchUnit? typedOptimisticResult,
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
          document: documentNodeQueryFetchUnit,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchUnit,
        );
}

class FetchMoreOptions$Query$FetchUnit extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchUnit({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$FetchUnit variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryFetchUnit,
        );
}

extension ClientExtension$Query$FetchUnit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchUnit>> query$FetchUnit(
          Options$Query$FetchUnit options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$FetchUnit> watchQuery$FetchUnit(
          WatchOptions$Query$FetchUnit options) =>
      this.watchQuery(options);
  void writeQuery$FetchUnit({
    required Query$FetchUnit data,
    required Variables$Query$FetchUnit variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryFetchUnit),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchUnit? readQuery$FetchUnit({
    required Variables$Query$FetchUnit variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFetchUnit),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchUnit.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchUnit> useQuery$FetchUnit(
        Options$Query$FetchUnit options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$FetchUnit> useWatchQuery$FetchUnit(
        WatchOptions$Query$FetchUnit options) =>
    graphql_flutter.useWatchQuery(options);

class Query$FetchUnit$Widget extends graphql_flutter.Query<Query$FetchUnit> {
  Query$FetchUnit$Widget({
    widgets.Key? key,
    required Options$Query$FetchUnit options,
    required graphql_flutter.QueryBuilder<Query$FetchUnit> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$FetchUnit$node {
  Query$FetchUnit$node({
    required this.id,
    required this.$__typename,
  });

  factory Query$FetchUnit$node.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Unit":
        return Query$FetchUnit$node$$Unit.fromJson(json);

      case "Content":
        return Query$FetchUnit$node$$Content.fromJson(json);

      case "ContentEpisode":
        return Query$FetchUnit$node$$ContentEpisode.fromJson(json);

      case "ContentProgress":
        return Query$FetchUnit$node$$ContentProgress.fromJson(json);

      case "Course":
        return Query$FetchUnit$node$$Course.fromJson(json);

      case "JournalRecord":
        return Query$FetchUnit$node$$JournalRecord.fromJson(json);

      case "Lesson":
        return Query$FetchUnit$node$$Lesson.fromJson(json);

      case "LessonAudio":
        return Query$FetchUnit$node$$LessonAudio.fromJson(json);

      case "Technique":
        return Query$FetchUnit$node$$Technique.fromJson(json);

      case "User":
        return Query$FetchUnit$node$$User.fromJson(json);

      case "UserProgress":
        return Query$FetchUnit$node$$UserProgress.fromJson(json);

      default:
        final l$id = json['id'];
        final l$$__typename = json['__typename'];
        return Query$FetchUnit$node(
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
    if (!(other is Query$FetchUnit$node) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FetchUnit$node on Query$FetchUnit$node {
  CopyWith$Query$FetchUnit$node<Query$FetchUnit$node> get copyWith =>
      CopyWith$Query$FetchUnit$node(
        this,
        (i) => i,
      );
  _T when<_T>({
    required _T Function(Query$FetchUnit$node$$Unit) unit,
    required _T Function(Query$FetchUnit$node$$Content) content,
    required _T Function(Query$FetchUnit$node$$ContentEpisode) contentEpisode,
    required _T Function(Query$FetchUnit$node$$ContentProgress) contentProgress,
    required _T Function(Query$FetchUnit$node$$Course) course,
    required _T Function(Query$FetchUnit$node$$JournalRecord) journalRecord,
    required _T Function(Query$FetchUnit$node$$Lesson) lesson,
    required _T Function(Query$FetchUnit$node$$LessonAudio) lessonAudio,
    required _T Function(Query$FetchUnit$node$$Technique) technique,
    required _T Function(Query$FetchUnit$node$$User) user,
    required _T Function(Query$FetchUnit$node$$UserProgress) userProgress,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Unit":
        return unit(this as Query$FetchUnit$node$$Unit);

      case "Content":
        return content(this as Query$FetchUnit$node$$Content);

      case "ContentEpisode":
        return contentEpisode(this as Query$FetchUnit$node$$ContentEpisode);

      case "ContentProgress":
        return contentProgress(this as Query$FetchUnit$node$$ContentProgress);

      case "Course":
        return course(this as Query$FetchUnit$node$$Course);

      case "JournalRecord":
        return journalRecord(this as Query$FetchUnit$node$$JournalRecord);

      case "Lesson":
        return lesson(this as Query$FetchUnit$node$$Lesson);

      case "LessonAudio":
        return lessonAudio(this as Query$FetchUnit$node$$LessonAudio);

      case "Technique":
        return technique(this as Query$FetchUnit$node$$Technique);

      case "User":
        return user(this as Query$FetchUnit$node$$User);

      case "UserProgress":
        return userProgress(this as Query$FetchUnit$node$$UserProgress);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$FetchUnit$node$$Unit)? unit,
    _T Function(Query$FetchUnit$node$$Content)? content,
    _T Function(Query$FetchUnit$node$$ContentEpisode)? contentEpisode,
    _T Function(Query$FetchUnit$node$$ContentProgress)? contentProgress,
    _T Function(Query$FetchUnit$node$$Course)? course,
    _T Function(Query$FetchUnit$node$$JournalRecord)? journalRecord,
    _T Function(Query$FetchUnit$node$$Lesson)? lesson,
    _T Function(Query$FetchUnit$node$$LessonAudio)? lessonAudio,
    _T Function(Query$FetchUnit$node$$Technique)? technique,
    _T Function(Query$FetchUnit$node$$User)? user,
    _T Function(Query$FetchUnit$node$$UserProgress)? userProgress,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Unit":
        if (unit != null) {
          return unit(this as Query$FetchUnit$node$$Unit);
        } else {
          return orElse();
        }

      case "Content":
        if (content != null) {
          return content(this as Query$FetchUnit$node$$Content);
        } else {
          return orElse();
        }

      case "ContentEpisode":
        if (contentEpisode != null) {
          return contentEpisode(this as Query$FetchUnit$node$$ContentEpisode);
        } else {
          return orElse();
        }

      case "ContentProgress":
        if (contentProgress != null) {
          return contentProgress(this as Query$FetchUnit$node$$ContentProgress);
        } else {
          return orElse();
        }

      case "Course":
        if (course != null) {
          return course(this as Query$FetchUnit$node$$Course);
        } else {
          return orElse();
        }

      case "JournalRecord":
        if (journalRecord != null) {
          return journalRecord(this as Query$FetchUnit$node$$JournalRecord);
        } else {
          return orElse();
        }

      case "Lesson":
        if (lesson != null) {
          return lesson(this as Query$FetchUnit$node$$Lesson);
        } else {
          return orElse();
        }

      case "LessonAudio":
        if (lessonAudio != null) {
          return lessonAudio(this as Query$FetchUnit$node$$LessonAudio);
        } else {
          return orElse();
        }

      case "Technique":
        if (technique != null) {
          return technique(this as Query$FetchUnit$node$$Technique);
        } else {
          return orElse();
        }

      case "User":
        if (user != null) {
          return user(this as Query$FetchUnit$node$$User);
        } else {
          return orElse();
        }

      case "UserProgress":
        if (userProgress != null) {
          return userProgress(this as Query$FetchUnit$node$$UserProgress);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$FetchUnit$node<TRes> {
  factory CopyWith$Query$FetchUnit$node(
    Query$FetchUnit$node instance,
    TRes Function(Query$FetchUnit$node) then,
  ) = _CopyWithImpl$Query$FetchUnit$node;

  factory CopyWith$Query$FetchUnit$node.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchUnit$node;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchUnit$node<TRes>
    implements CopyWith$Query$FetchUnit$node<TRes> {
  _CopyWithImpl$Query$FetchUnit$node(
    this._instance,
    this._then,
  );

  final Query$FetchUnit$node _instance;

  final TRes Function(Query$FetchUnit$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchUnit$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchUnit$node<TRes>
    implements CopyWith$Query$FetchUnit$node<TRes> {
  _CopyWithStubImpl$Query$FetchUnit$node(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchUnit$node$$Unit
    implements Fragment$UnitFull, Fragment$Unit, Query$FetchUnit$node {
  Query$FetchUnit$node$$Unit({
    required this.id,
    required this.courseID,
    required this.coverimage,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.mastering,
    required this.days,
    required this.color,
    required this.order,
    required this.lessonsTotal,
    required this.lessonsCompleted,
    required this.isActive,
    required this.course,
    this.$__typename = 'Unit',
    required this.lessons,
    required this.unitTechniques,
    this.nextUnit,
  });

  factory Query$FetchUnit$node$$Unit.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$courseID = json['courseID'];
    final l$coverimage = json['coverimage'];
    final l$title = json['title'];
    final l$subtitle = json['subtitle'];
    final l$description = json['description'];
    final l$mastering = json['mastering'];
    final l$days = json['days'];
    final l$color = json['color'];
    final l$order = json['order'];
    final l$lessonsTotal = json['lessonsTotal'];
    final l$lessonsCompleted = json['lessonsCompleted'];
    final l$isActive = json['isActive'];
    final l$course = json['course'];
    final l$$__typename = json['__typename'];
    final l$lessons = json['lessons'];
    final l$unitTechniques = json['unitTechniques'];
    final l$nextUnit = json['nextUnit'];
    return Query$FetchUnit$node$$Unit(
      id: (l$id as String),
      courseID: (l$courseID as String),
      coverimage: (l$coverimage as String),
      title: (l$title as String),
      subtitle: (l$subtitle as String),
      description: (l$description as String),
      mastering: (l$mastering as String),
      days: (l$days as int),
      color: (l$color as String),
      order: (l$order as int),
      lessonsTotal: (l$lessonsTotal as int),
      lessonsCompleted: (l$lessonsCompleted as int),
      isActive: (l$isActive as bool),
      course: Fragment$Course.fromJson((l$course as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      lessons: Query$FetchUnit$node$$Unit$lessons.fromJson(
          (l$lessons as Map<String, dynamic>)),
      unitTechniques: (l$unitTechniques as List<dynamic>)
          .map((e) =>
              Fragment$UnitTechnique.fromJson((e as Map<String, dynamic>)))
          .toList(),
      nextUnit: l$nextUnit == null
          ? null
          : Fragment$Unit.fromJson((l$nextUnit as Map<String, dynamic>)),
    );
  }

  final String id;

  final String courseID;

  final String coverimage;

  final String title;

  final String subtitle;

  final String description;

  final String mastering;

  final int days;

  final String color;

  final int order;

  final int lessonsTotal;

  final int lessonsCompleted;

  final bool isActive;

  final Fragment$Course course;

  final String $__typename;

  final Query$FetchUnit$node$$Unit$lessons lessons;

  final List<Fragment$UnitTechnique> unitTechniques;

  final Fragment$Unit? nextUnit;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$courseID = courseID;
    _resultData['courseID'] = l$courseID;
    final l$coverimage = coverimage;
    _resultData['coverimage'] = l$coverimage;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$subtitle = subtitle;
    _resultData['subtitle'] = l$subtitle;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$mastering = mastering;
    _resultData['mastering'] = l$mastering;
    final l$days = days;
    _resultData['days'] = l$days;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$lessonsTotal = lessonsTotal;
    _resultData['lessonsTotal'] = l$lessonsTotal;
    final l$lessonsCompleted = lessonsCompleted;
    _resultData['lessonsCompleted'] = l$lessonsCompleted;
    final l$isActive = isActive;
    _resultData['isActive'] = l$isActive;
    final l$course = course;
    _resultData['course'] = l$course.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$lessons = lessons;
    _resultData['lessons'] = l$lessons.toJson();
    final l$unitTechniques = unitTechniques;
    _resultData['unitTechniques'] =
        l$unitTechniques.map((e) => e.toJson()).toList();
    final l$nextUnit = nextUnit;
    _resultData['nextUnit'] = l$nextUnit?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$courseID = courseID;
    final l$coverimage = coverimage;
    final l$title = title;
    final l$subtitle = subtitle;
    final l$description = description;
    final l$mastering = mastering;
    final l$days = days;
    final l$color = color;
    final l$order = order;
    final l$lessonsTotal = lessonsTotal;
    final l$lessonsCompleted = lessonsCompleted;
    final l$isActive = isActive;
    final l$course = course;
    final l$$__typename = $__typename;
    final l$lessons = lessons;
    final l$unitTechniques = unitTechniques;
    final l$nextUnit = nextUnit;
    return Object.hashAll([
      l$id,
      l$courseID,
      l$coverimage,
      l$title,
      l$subtitle,
      l$description,
      l$mastering,
      l$days,
      l$color,
      l$order,
      l$lessonsTotal,
      l$lessonsCompleted,
      l$isActive,
      l$course,
      l$$__typename,
      l$lessons,
      Object.hashAll(l$unitTechniques.map((v) => v)),
      l$nextUnit,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchUnit$node$$Unit) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$courseID = courseID;
    final lOther$courseID = other.courseID;
    if (l$courseID != lOther$courseID) {
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
    final l$mastering = mastering;
    final lOther$mastering = other.mastering;
    if (l$mastering != lOther$mastering) {
      return false;
    }
    final l$days = days;
    final lOther$days = other.days;
    if (l$days != lOther$days) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$lessonsTotal = lessonsTotal;
    final lOther$lessonsTotal = other.lessonsTotal;
    if (l$lessonsTotal != lOther$lessonsTotal) {
      return false;
    }
    final l$lessonsCompleted = lessonsCompleted;
    final lOther$lessonsCompleted = other.lessonsCompleted;
    if (l$lessonsCompleted != lOther$lessonsCompleted) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$course = course;
    final lOther$course = other.course;
    if (l$course != lOther$course) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$lessons = lessons;
    final lOther$lessons = other.lessons;
    if (l$lessons != lOther$lessons) {
      return false;
    }
    final l$unitTechniques = unitTechniques;
    final lOther$unitTechniques = other.unitTechniques;
    if (l$unitTechniques.length != lOther$unitTechniques.length) {
      return false;
    }
    for (int i = 0; i < l$unitTechniques.length; i++) {
      final l$unitTechniques$entry = l$unitTechniques[i];
      final lOther$unitTechniques$entry = lOther$unitTechniques[i];
      if (l$unitTechniques$entry != lOther$unitTechniques$entry) {
        return false;
      }
    }
    final l$nextUnit = nextUnit;
    final lOther$nextUnit = other.nextUnit;
    if (l$nextUnit != lOther$nextUnit) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchUnit$node$$Unit
    on Query$FetchUnit$node$$Unit {
  CopyWith$Query$FetchUnit$node$$Unit<Query$FetchUnit$node$$Unit>
      get copyWith => CopyWith$Query$FetchUnit$node$$Unit(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchUnit$node$$Unit<TRes> {
  factory CopyWith$Query$FetchUnit$node$$Unit(
    Query$FetchUnit$node$$Unit instance,
    TRes Function(Query$FetchUnit$node$$Unit) then,
  ) = _CopyWithImpl$Query$FetchUnit$node$$Unit;

  factory CopyWith$Query$FetchUnit$node$$Unit.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchUnit$node$$Unit;

  TRes call({
    String? id,
    String? courseID,
    String? coverimage,
    String? title,
    String? subtitle,
    String? description,
    String? mastering,
    int? days,
    String? color,
    int? order,
    int? lessonsTotal,
    int? lessonsCompleted,
    bool? isActive,
    Fragment$Course? course,
    String? $__typename,
    Query$FetchUnit$node$$Unit$lessons? lessons,
    List<Fragment$UnitTechnique>? unitTechniques,
    Fragment$Unit? nextUnit,
  });
  CopyWith$Fragment$Course<TRes> get course;
  CopyWith$Query$FetchUnit$node$$Unit$lessons<TRes> get lessons;
  TRes unitTechniques(
      Iterable<Fragment$UnitTechnique> Function(
              Iterable<CopyWith$Fragment$UnitTechnique<Fragment$UnitTechnique>>)
          _fn);
  CopyWith$Fragment$Unit<TRes> get nextUnit;
}

class _CopyWithImpl$Query$FetchUnit$node$$Unit<TRes>
    implements CopyWith$Query$FetchUnit$node$$Unit<TRes> {
  _CopyWithImpl$Query$FetchUnit$node$$Unit(
    this._instance,
    this._then,
  );

  final Query$FetchUnit$node$$Unit _instance;

  final TRes Function(Query$FetchUnit$node$$Unit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? courseID = _undefined,
    Object? coverimage = _undefined,
    Object? title = _undefined,
    Object? subtitle = _undefined,
    Object? description = _undefined,
    Object? mastering = _undefined,
    Object? days = _undefined,
    Object? color = _undefined,
    Object? order = _undefined,
    Object? lessonsTotal = _undefined,
    Object? lessonsCompleted = _undefined,
    Object? isActive = _undefined,
    Object? course = _undefined,
    Object? $__typename = _undefined,
    Object? lessons = _undefined,
    Object? unitTechniques = _undefined,
    Object? nextUnit = _undefined,
  }) =>
      _then(Query$FetchUnit$node$$Unit(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        courseID: courseID == _undefined || courseID == null
            ? _instance.courseID
            : (courseID as String),
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
        mastering: mastering == _undefined || mastering == null
            ? _instance.mastering
            : (mastering as String),
        days:
            days == _undefined || days == null ? _instance.days : (days as int),
        color: color == _undefined || color == null
            ? _instance.color
            : (color as String),
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        lessonsTotal: lessonsTotal == _undefined || lessonsTotal == null
            ? _instance.lessonsTotal
            : (lessonsTotal as int),
        lessonsCompleted:
            lessonsCompleted == _undefined || lessonsCompleted == null
                ? _instance.lessonsCompleted
                : (lessonsCompleted as int),
        isActive: isActive == _undefined || isActive == null
            ? _instance.isActive
            : (isActive as bool),
        course: course == _undefined || course == null
            ? _instance.course
            : (course as Fragment$Course),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        lessons: lessons == _undefined || lessons == null
            ? _instance.lessons
            : (lessons as Query$FetchUnit$node$$Unit$lessons),
        unitTechniques: unitTechniques == _undefined || unitTechniques == null
            ? _instance.unitTechniques
            : (unitTechniques as List<Fragment$UnitTechnique>),
        nextUnit: nextUnit == _undefined
            ? _instance.nextUnit
            : (nextUnit as Fragment$Unit?),
      ));

  CopyWith$Fragment$Course<TRes> get course {
    final local$course = _instance.course;
    return CopyWith$Fragment$Course(local$course, (e) => call(course: e));
  }

  CopyWith$Query$FetchUnit$node$$Unit$lessons<TRes> get lessons {
    final local$lessons = _instance.lessons;
    return CopyWith$Query$FetchUnit$node$$Unit$lessons(
        local$lessons, (e) => call(lessons: e));
  }

  TRes unitTechniques(
          Iterable<Fragment$UnitTechnique> Function(
                  Iterable<
                      CopyWith$Fragment$UnitTechnique<Fragment$UnitTechnique>>)
              _fn) =>
      call(
          unitTechniques: _fn(_instance.unitTechniques
              .map((e) => CopyWith$Fragment$UnitTechnique(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Fragment$Unit<TRes> get nextUnit {
    final local$nextUnit = _instance.nextUnit;
    return local$nextUnit == null
        ? CopyWith$Fragment$Unit.stub(_then(_instance))
        : CopyWith$Fragment$Unit(local$nextUnit, (e) => call(nextUnit: e));
  }
}

class _CopyWithStubImpl$Query$FetchUnit$node$$Unit<TRes>
    implements CopyWith$Query$FetchUnit$node$$Unit<TRes> {
  _CopyWithStubImpl$Query$FetchUnit$node$$Unit(this._res);

  TRes _res;

  call({
    String? id,
    String? courseID,
    String? coverimage,
    String? title,
    String? subtitle,
    String? description,
    String? mastering,
    int? days,
    String? color,
    int? order,
    int? lessonsTotal,
    int? lessonsCompleted,
    bool? isActive,
    Fragment$Course? course,
    String? $__typename,
    Query$FetchUnit$node$$Unit$lessons? lessons,
    List<Fragment$UnitTechnique>? unitTechniques,
    Fragment$Unit? nextUnit,
  }) =>
      _res;

  CopyWith$Fragment$Course<TRes> get course =>
      CopyWith$Fragment$Course.stub(_res);

  CopyWith$Query$FetchUnit$node$$Unit$lessons<TRes> get lessons =>
      CopyWith$Query$FetchUnit$node$$Unit$lessons.stub(_res);

  unitTechniques(_fn) => _res;

  CopyWith$Fragment$Unit<TRes> get nextUnit =>
      CopyWith$Fragment$Unit.stub(_res);
}

class Query$FetchUnit$node$$Unit$lessons implements Fragment$UnitFull$lessons {
  Query$FetchUnit$node$$Unit$lessons({
    this.edges,
    this.$__typename = 'LessonConnection',
  });

  factory Query$FetchUnit$node$$Unit$lessons.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$FetchUnit$node$$Unit$lessons(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$FetchUnit$node$$Unit$lessons$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FetchUnit$node$$Unit$lessons$edges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchUnit$node$$Unit$lessons) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchUnit$node$$Unit$lessons
    on Query$FetchUnit$node$$Unit$lessons {
  CopyWith$Query$FetchUnit$node$$Unit$lessons<
          Query$FetchUnit$node$$Unit$lessons>
      get copyWith => CopyWith$Query$FetchUnit$node$$Unit$lessons(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchUnit$node$$Unit$lessons<TRes> {
  factory CopyWith$Query$FetchUnit$node$$Unit$lessons(
    Query$FetchUnit$node$$Unit$lessons instance,
    TRes Function(Query$FetchUnit$node$$Unit$lessons) then,
  ) = _CopyWithImpl$Query$FetchUnit$node$$Unit$lessons;

  factory CopyWith$Query$FetchUnit$node$$Unit$lessons.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchUnit$node$$Unit$lessons;

  TRes call({
    List<Query$FetchUnit$node$$Unit$lessons$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$FetchUnit$node$$Unit$lessons$edges?>? Function(
              Iterable<
                  CopyWith$Query$FetchUnit$node$$Unit$lessons$edges<
                      Query$FetchUnit$node$$Unit$lessons$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$FetchUnit$node$$Unit$lessons<TRes>
    implements CopyWith$Query$FetchUnit$node$$Unit$lessons<TRes> {
  _CopyWithImpl$Query$FetchUnit$node$$Unit$lessons(
    this._instance,
    this._then,
  );

  final Query$FetchUnit$node$$Unit$lessons _instance;

  final TRes Function(Query$FetchUnit$node$$Unit$lessons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchUnit$node$$Unit$lessons(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$FetchUnit$node$$Unit$lessons$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$FetchUnit$node$$Unit$lessons$edges?>? Function(
                  Iterable<
                      CopyWith$Query$FetchUnit$node$$Unit$lessons$edges<
                          Query$FetchUnit$node$$Unit$lessons$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$FetchUnit$node$$Unit$lessons$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FetchUnit$node$$Unit$lessons<TRes>
    implements CopyWith$Query$FetchUnit$node$$Unit$lessons<TRes> {
  _CopyWithStubImpl$Query$FetchUnit$node$$Unit$lessons(this._res);

  TRes _res;

  call({
    List<Query$FetchUnit$node$$Unit$lessons$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$FetchUnit$node$$Unit$lessons$edges
    implements Fragment$UnitFull$lessons$edges {
  Query$FetchUnit$node$$Unit$lessons$edges({
    this.node,
    this.$__typename = 'LessonEdge',
  });

  factory Query$FetchUnit$node$$Unit$lessons$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$FetchUnit$node$$Unit$lessons$edges(
      node: l$node == null
          ? null
          : Fragment$Lesson.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Lesson? node;

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
    if (!(other is Query$FetchUnit$node$$Unit$lessons$edges) ||
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

extension UtilityExtension$Query$FetchUnit$node$$Unit$lessons$edges
    on Query$FetchUnit$node$$Unit$lessons$edges {
  CopyWith$Query$FetchUnit$node$$Unit$lessons$edges<
          Query$FetchUnit$node$$Unit$lessons$edges>
      get copyWith => CopyWith$Query$FetchUnit$node$$Unit$lessons$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchUnit$node$$Unit$lessons$edges<TRes> {
  factory CopyWith$Query$FetchUnit$node$$Unit$lessons$edges(
    Query$FetchUnit$node$$Unit$lessons$edges instance,
    TRes Function(Query$FetchUnit$node$$Unit$lessons$edges) then,
  ) = _CopyWithImpl$Query$FetchUnit$node$$Unit$lessons$edges;

  factory CopyWith$Query$FetchUnit$node$$Unit$lessons$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchUnit$node$$Unit$lessons$edges;

  TRes call({
    Fragment$Lesson? node,
    String? $__typename,
  });
  CopyWith$Fragment$Lesson<TRes> get node;
}

class _CopyWithImpl$Query$FetchUnit$node$$Unit$lessons$edges<TRes>
    implements CopyWith$Query$FetchUnit$node$$Unit$lessons$edges<TRes> {
  _CopyWithImpl$Query$FetchUnit$node$$Unit$lessons$edges(
    this._instance,
    this._then,
  );

  final Query$FetchUnit$node$$Unit$lessons$edges _instance;

  final TRes Function(Query$FetchUnit$node$$Unit$lessons$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchUnit$node$$Unit$lessons$edges(
        node: node == _undefined ? _instance.node : (node as Fragment$Lesson?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Lesson<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$Lesson.stub(_then(_instance))
        : CopyWith$Fragment$Lesson(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$FetchUnit$node$$Unit$lessons$edges<TRes>
    implements CopyWith$Query$FetchUnit$node$$Unit$lessons$edges<TRes> {
  _CopyWithStubImpl$Query$FetchUnit$node$$Unit$lessons$edges(this._res);

  TRes _res;

  call({
    Fragment$Lesson? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Lesson<TRes> get node =>
      CopyWith$Fragment$Lesson.stub(_res);
}

class Query$FetchUnit$node$$Content implements Query$FetchUnit$node {
  Query$FetchUnit$node$$Content({
    required this.id,
    this.$__typename = 'Content',
  });

  factory Query$FetchUnit$node$$Content.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchUnit$node$$Content(
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
    if (!(other is Query$FetchUnit$node$$Content) ||
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

extension UtilityExtension$Query$FetchUnit$node$$Content
    on Query$FetchUnit$node$$Content {
  CopyWith$Query$FetchUnit$node$$Content<Query$FetchUnit$node$$Content>
      get copyWith => CopyWith$Query$FetchUnit$node$$Content(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchUnit$node$$Content<TRes> {
  factory CopyWith$Query$FetchUnit$node$$Content(
    Query$FetchUnit$node$$Content instance,
    TRes Function(Query$FetchUnit$node$$Content) then,
  ) = _CopyWithImpl$Query$FetchUnit$node$$Content;

  factory CopyWith$Query$FetchUnit$node$$Content.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchUnit$node$$Content;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchUnit$node$$Content<TRes>
    implements CopyWith$Query$FetchUnit$node$$Content<TRes> {
  _CopyWithImpl$Query$FetchUnit$node$$Content(
    this._instance,
    this._then,
  );

  final Query$FetchUnit$node$$Content _instance;

  final TRes Function(Query$FetchUnit$node$$Content) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchUnit$node$$Content(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchUnit$node$$Content<TRes>
    implements CopyWith$Query$FetchUnit$node$$Content<TRes> {
  _CopyWithStubImpl$Query$FetchUnit$node$$Content(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchUnit$node$$ContentEpisode implements Query$FetchUnit$node {
  Query$FetchUnit$node$$ContentEpisode({
    required this.id,
    this.$__typename = 'ContentEpisode',
  });

  factory Query$FetchUnit$node$$ContentEpisode.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchUnit$node$$ContentEpisode(
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
    if (!(other is Query$FetchUnit$node$$ContentEpisode) ||
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

extension UtilityExtension$Query$FetchUnit$node$$ContentEpisode
    on Query$FetchUnit$node$$ContentEpisode {
  CopyWith$Query$FetchUnit$node$$ContentEpisode<
          Query$FetchUnit$node$$ContentEpisode>
      get copyWith => CopyWith$Query$FetchUnit$node$$ContentEpisode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchUnit$node$$ContentEpisode<TRes> {
  factory CopyWith$Query$FetchUnit$node$$ContentEpisode(
    Query$FetchUnit$node$$ContentEpisode instance,
    TRes Function(Query$FetchUnit$node$$ContentEpisode) then,
  ) = _CopyWithImpl$Query$FetchUnit$node$$ContentEpisode;

  factory CopyWith$Query$FetchUnit$node$$ContentEpisode.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchUnit$node$$ContentEpisode;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchUnit$node$$ContentEpisode<TRes>
    implements CopyWith$Query$FetchUnit$node$$ContentEpisode<TRes> {
  _CopyWithImpl$Query$FetchUnit$node$$ContentEpisode(
    this._instance,
    this._then,
  );

  final Query$FetchUnit$node$$ContentEpisode _instance;

  final TRes Function(Query$FetchUnit$node$$ContentEpisode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchUnit$node$$ContentEpisode(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchUnit$node$$ContentEpisode<TRes>
    implements CopyWith$Query$FetchUnit$node$$ContentEpisode<TRes> {
  _CopyWithStubImpl$Query$FetchUnit$node$$ContentEpisode(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchUnit$node$$ContentProgress implements Query$FetchUnit$node {
  Query$FetchUnit$node$$ContentProgress({
    required this.id,
    this.$__typename = 'ContentProgress',
  });

  factory Query$FetchUnit$node$$ContentProgress.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchUnit$node$$ContentProgress(
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
    if (!(other is Query$FetchUnit$node$$ContentProgress) ||
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

extension UtilityExtension$Query$FetchUnit$node$$ContentProgress
    on Query$FetchUnit$node$$ContentProgress {
  CopyWith$Query$FetchUnit$node$$ContentProgress<
          Query$FetchUnit$node$$ContentProgress>
      get copyWith => CopyWith$Query$FetchUnit$node$$ContentProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchUnit$node$$ContentProgress<TRes> {
  factory CopyWith$Query$FetchUnit$node$$ContentProgress(
    Query$FetchUnit$node$$ContentProgress instance,
    TRes Function(Query$FetchUnit$node$$ContentProgress) then,
  ) = _CopyWithImpl$Query$FetchUnit$node$$ContentProgress;

  factory CopyWith$Query$FetchUnit$node$$ContentProgress.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchUnit$node$$ContentProgress;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchUnit$node$$ContentProgress<TRes>
    implements CopyWith$Query$FetchUnit$node$$ContentProgress<TRes> {
  _CopyWithImpl$Query$FetchUnit$node$$ContentProgress(
    this._instance,
    this._then,
  );

  final Query$FetchUnit$node$$ContentProgress _instance;

  final TRes Function(Query$FetchUnit$node$$ContentProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchUnit$node$$ContentProgress(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchUnit$node$$ContentProgress<TRes>
    implements CopyWith$Query$FetchUnit$node$$ContentProgress<TRes> {
  _CopyWithStubImpl$Query$FetchUnit$node$$ContentProgress(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchUnit$node$$Course implements Query$FetchUnit$node {
  Query$FetchUnit$node$$Course({
    required this.id,
    this.$__typename = 'Course',
  });

  factory Query$FetchUnit$node$$Course.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchUnit$node$$Course(
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
    if (!(other is Query$FetchUnit$node$$Course) ||
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

extension UtilityExtension$Query$FetchUnit$node$$Course
    on Query$FetchUnit$node$$Course {
  CopyWith$Query$FetchUnit$node$$Course<Query$FetchUnit$node$$Course>
      get copyWith => CopyWith$Query$FetchUnit$node$$Course(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchUnit$node$$Course<TRes> {
  factory CopyWith$Query$FetchUnit$node$$Course(
    Query$FetchUnit$node$$Course instance,
    TRes Function(Query$FetchUnit$node$$Course) then,
  ) = _CopyWithImpl$Query$FetchUnit$node$$Course;

  factory CopyWith$Query$FetchUnit$node$$Course.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchUnit$node$$Course;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchUnit$node$$Course<TRes>
    implements CopyWith$Query$FetchUnit$node$$Course<TRes> {
  _CopyWithImpl$Query$FetchUnit$node$$Course(
    this._instance,
    this._then,
  );

  final Query$FetchUnit$node$$Course _instance;

  final TRes Function(Query$FetchUnit$node$$Course) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchUnit$node$$Course(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchUnit$node$$Course<TRes>
    implements CopyWith$Query$FetchUnit$node$$Course<TRes> {
  _CopyWithStubImpl$Query$FetchUnit$node$$Course(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchUnit$node$$JournalRecord implements Query$FetchUnit$node {
  Query$FetchUnit$node$$JournalRecord({
    required this.id,
    this.$__typename = 'JournalRecord',
  });

  factory Query$FetchUnit$node$$JournalRecord.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchUnit$node$$JournalRecord(
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
    if (!(other is Query$FetchUnit$node$$JournalRecord) ||
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

extension UtilityExtension$Query$FetchUnit$node$$JournalRecord
    on Query$FetchUnit$node$$JournalRecord {
  CopyWith$Query$FetchUnit$node$$JournalRecord<
          Query$FetchUnit$node$$JournalRecord>
      get copyWith => CopyWith$Query$FetchUnit$node$$JournalRecord(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchUnit$node$$JournalRecord<TRes> {
  factory CopyWith$Query$FetchUnit$node$$JournalRecord(
    Query$FetchUnit$node$$JournalRecord instance,
    TRes Function(Query$FetchUnit$node$$JournalRecord) then,
  ) = _CopyWithImpl$Query$FetchUnit$node$$JournalRecord;

  factory CopyWith$Query$FetchUnit$node$$JournalRecord.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchUnit$node$$JournalRecord;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchUnit$node$$JournalRecord<TRes>
    implements CopyWith$Query$FetchUnit$node$$JournalRecord<TRes> {
  _CopyWithImpl$Query$FetchUnit$node$$JournalRecord(
    this._instance,
    this._then,
  );

  final Query$FetchUnit$node$$JournalRecord _instance;

  final TRes Function(Query$FetchUnit$node$$JournalRecord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchUnit$node$$JournalRecord(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchUnit$node$$JournalRecord<TRes>
    implements CopyWith$Query$FetchUnit$node$$JournalRecord<TRes> {
  _CopyWithStubImpl$Query$FetchUnit$node$$JournalRecord(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchUnit$node$$Lesson implements Query$FetchUnit$node {
  Query$FetchUnit$node$$Lesson({
    required this.id,
    this.$__typename = 'Lesson',
  });

  factory Query$FetchUnit$node$$Lesson.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchUnit$node$$Lesson(
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
    if (!(other is Query$FetchUnit$node$$Lesson) ||
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

extension UtilityExtension$Query$FetchUnit$node$$Lesson
    on Query$FetchUnit$node$$Lesson {
  CopyWith$Query$FetchUnit$node$$Lesson<Query$FetchUnit$node$$Lesson>
      get copyWith => CopyWith$Query$FetchUnit$node$$Lesson(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchUnit$node$$Lesson<TRes> {
  factory CopyWith$Query$FetchUnit$node$$Lesson(
    Query$FetchUnit$node$$Lesson instance,
    TRes Function(Query$FetchUnit$node$$Lesson) then,
  ) = _CopyWithImpl$Query$FetchUnit$node$$Lesson;

  factory CopyWith$Query$FetchUnit$node$$Lesson.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchUnit$node$$Lesson;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchUnit$node$$Lesson<TRes>
    implements CopyWith$Query$FetchUnit$node$$Lesson<TRes> {
  _CopyWithImpl$Query$FetchUnit$node$$Lesson(
    this._instance,
    this._then,
  );

  final Query$FetchUnit$node$$Lesson _instance;

  final TRes Function(Query$FetchUnit$node$$Lesson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchUnit$node$$Lesson(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchUnit$node$$Lesson<TRes>
    implements CopyWith$Query$FetchUnit$node$$Lesson<TRes> {
  _CopyWithStubImpl$Query$FetchUnit$node$$Lesson(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchUnit$node$$LessonAudio implements Query$FetchUnit$node {
  Query$FetchUnit$node$$LessonAudio({
    required this.id,
    this.$__typename = 'LessonAudio',
  });

  factory Query$FetchUnit$node$$LessonAudio.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchUnit$node$$LessonAudio(
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
    if (!(other is Query$FetchUnit$node$$LessonAudio) ||
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

extension UtilityExtension$Query$FetchUnit$node$$LessonAudio
    on Query$FetchUnit$node$$LessonAudio {
  CopyWith$Query$FetchUnit$node$$LessonAudio<Query$FetchUnit$node$$LessonAudio>
      get copyWith => CopyWith$Query$FetchUnit$node$$LessonAudio(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchUnit$node$$LessonAudio<TRes> {
  factory CopyWith$Query$FetchUnit$node$$LessonAudio(
    Query$FetchUnit$node$$LessonAudio instance,
    TRes Function(Query$FetchUnit$node$$LessonAudio) then,
  ) = _CopyWithImpl$Query$FetchUnit$node$$LessonAudio;

  factory CopyWith$Query$FetchUnit$node$$LessonAudio.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchUnit$node$$LessonAudio;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchUnit$node$$LessonAudio<TRes>
    implements CopyWith$Query$FetchUnit$node$$LessonAudio<TRes> {
  _CopyWithImpl$Query$FetchUnit$node$$LessonAudio(
    this._instance,
    this._then,
  );

  final Query$FetchUnit$node$$LessonAudio _instance;

  final TRes Function(Query$FetchUnit$node$$LessonAudio) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchUnit$node$$LessonAudio(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchUnit$node$$LessonAudio<TRes>
    implements CopyWith$Query$FetchUnit$node$$LessonAudio<TRes> {
  _CopyWithStubImpl$Query$FetchUnit$node$$LessonAudio(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchUnit$node$$Technique implements Query$FetchUnit$node {
  Query$FetchUnit$node$$Technique({
    required this.id,
    this.$__typename = 'Technique',
  });

  factory Query$FetchUnit$node$$Technique.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchUnit$node$$Technique(
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
    if (!(other is Query$FetchUnit$node$$Technique) ||
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

extension UtilityExtension$Query$FetchUnit$node$$Technique
    on Query$FetchUnit$node$$Technique {
  CopyWith$Query$FetchUnit$node$$Technique<Query$FetchUnit$node$$Technique>
      get copyWith => CopyWith$Query$FetchUnit$node$$Technique(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchUnit$node$$Technique<TRes> {
  factory CopyWith$Query$FetchUnit$node$$Technique(
    Query$FetchUnit$node$$Technique instance,
    TRes Function(Query$FetchUnit$node$$Technique) then,
  ) = _CopyWithImpl$Query$FetchUnit$node$$Technique;

  factory CopyWith$Query$FetchUnit$node$$Technique.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchUnit$node$$Technique;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchUnit$node$$Technique<TRes>
    implements CopyWith$Query$FetchUnit$node$$Technique<TRes> {
  _CopyWithImpl$Query$FetchUnit$node$$Technique(
    this._instance,
    this._then,
  );

  final Query$FetchUnit$node$$Technique _instance;

  final TRes Function(Query$FetchUnit$node$$Technique) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchUnit$node$$Technique(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchUnit$node$$Technique<TRes>
    implements CopyWith$Query$FetchUnit$node$$Technique<TRes> {
  _CopyWithStubImpl$Query$FetchUnit$node$$Technique(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchUnit$node$$User implements Query$FetchUnit$node {
  Query$FetchUnit$node$$User({
    required this.id,
    this.$__typename = 'User',
  });

  factory Query$FetchUnit$node$$User.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchUnit$node$$User(
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
    if (!(other is Query$FetchUnit$node$$User) ||
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

extension UtilityExtension$Query$FetchUnit$node$$User
    on Query$FetchUnit$node$$User {
  CopyWith$Query$FetchUnit$node$$User<Query$FetchUnit$node$$User>
      get copyWith => CopyWith$Query$FetchUnit$node$$User(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchUnit$node$$User<TRes> {
  factory CopyWith$Query$FetchUnit$node$$User(
    Query$FetchUnit$node$$User instance,
    TRes Function(Query$FetchUnit$node$$User) then,
  ) = _CopyWithImpl$Query$FetchUnit$node$$User;

  factory CopyWith$Query$FetchUnit$node$$User.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchUnit$node$$User;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchUnit$node$$User<TRes>
    implements CopyWith$Query$FetchUnit$node$$User<TRes> {
  _CopyWithImpl$Query$FetchUnit$node$$User(
    this._instance,
    this._then,
  );

  final Query$FetchUnit$node$$User _instance;

  final TRes Function(Query$FetchUnit$node$$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchUnit$node$$User(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchUnit$node$$User<TRes>
    implements CopyWith$Query$FetchUnit$node$$User<TRes> {
  _CopyWithStubImpl$Query$FetchUnit$node$$User(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchUnit$node$$UserProgress implements Query$FetchUnit$node {
  Query$FetchUnit$node$$UserProgress({
    required this.id,
    this.$__typename = 'UserProgress',
  });

  factory Query$FetchUnit$node$$UserProgress.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchUnit$node$$UserProgress(
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
    if (!(other is Query$FetchUnit$node$$UserProgress) ||
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

extension UtilityExtension$Query$FetchUnit$node$$UserProgress
    on Query$FetchUnit$node$$UserProgress {
  CopyWith$Query$FetchUnit$node$$UserProgress<
          Query$FetchUnit$node$$UserProgress>
      get copyWith => CopyWith$Query$FetchUnit$node$$UserProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchUnit$node$$UserProgress<TRes> {
  factory CopyWith$Query$FetchUnit$node$$UserProgress(
    Query$FetchUnit$node$$UserProgress instance,
    TRes Function(Query$FetchUnit$node$$UserProgress) then,
  ) = _CopyWithImpl$Query$FetchUnit$node$$UserProgress;

  factory CopyWith$Query$FetchUnit$node$$UserProgress.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchUnit$node$$UserProgress;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchUnit$node$$UserProgress<TRes>
    implements CopyWith$Query$FetchUnit$node$$UserProgress<TRes> {
  _CopyWithImpl$Query$FetchUnit$node$$UserProgress(
    this._instance,
    this._then,
  );

  final Query$FetchUnit$node$$UserProgress _instance;

  final TRes Function(Query$FetchUnit$node$$UserProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchUnit$node$$UserProgress(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchUnit$node$$UserProgress<TRes>
    implements CopyWith$Query$FetchUnit$node$$UserProgress<TRes> {
  _CopyWithStubImpl$Query$FetchUnit$node$$UserProgress(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$ResetUnitProgress {
  factory Variables$Mutation$ResetUnitProgress({
    required String id,
    required Input$ResetUnitProgressInput input,
  }) =>
      Variables$Mutation$ResetUnitProgress._({
        r'id': id,
        r'input': input,
      });

  Variables$Mutation$ResetUnitProgress._(this._$data);

  factory Variables$Mutation$ResetUnitProgress.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$input = data['input'];
    result$data['input'] = Input$ResetUnitProgressInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$ResetUnitProgress._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$ResetUnitProgressInput get input =>
      (_$data['input'] as Input$ResetUnitProgressInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$ResetUnitProgress<
          Variables$Mutation$ResetUnitProgress>
      get copyWith => CopyWith$Variables$Mutation$ResetUnitProgress(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$ResetUnitProgress) ||
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

abstract class CopyWith$Variables$Mutation$ResetUnitProgress<TRes> {
  factory CopyWith$Variables$Mutation$ResetUnitProgress(
    Variables$Mutation$ResetUnitProgress instance,
    TRes Function(Variables$Mutation$ResetUnitProgress) then,
  ) = _CopyWithImpl$Variables$Mutation$ResetUnitProgress;

  factory CopyWith$Variables$Mutation$ResetUnitProgress.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ResetUnitProgress;

  TRes call({
    String? id,
    Input$ResetUnitProgressInput? input,
  });
}

class _CopyWithImpl$Variables$Mutation$ResetUnitProgress<TRes>
    implements CopyWith$Variables$Mutation$ResetUnitProgress<TRes> {
  _CopyWithImpl$Variables$Mutation$ResetUnitProgress(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ResetUnitProgress _instance;

  final TRes Function(Variables$Mutation$ResetUnitProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Mutation$ResetUnitProgress._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (input != _undefined && input != null)
          'input': (input as Input$ResetUnitProgressInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ResetUnitProgress<TRes>
    implements CopyWith$Variables$Mutation$ResetUnitProgress<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ResetUnitProgress(this._res);

  TRes _res;

  call({
    String? id,
    Input$ResetUnitProgressInput? input,
  }) =>
      _res;
}

class Mutation$ResetUnitProgress {
  Mutation$ResetUnitProgress({
    required this.unit,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ResetUnitProgress.fromJson(Map<String, dynamic> json) {
    final l$unit = json['unit'];
    final l$$__typename = json['__typename'];
    return Mutation$ResetUnitProgress(
      unit: Fragment$UnitFull.fromJson((l$unit as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$UnitFull unit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$unit = unit;
    _resultData['unit'] = l$unit.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$unit = unit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$unit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ResetUnitProgress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$unit = unit;
    final lOther$unit = other.unit;
    if (l$unit != lOther$unit) {
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

extension UtilityExtension$Mutation$ResetUnitProgress
    on Mutation$ResetUnitProgress {
  CopyWith$Mutation$ResetUnitProgress<Mutation$ResetUnitProgress>
      get copyWith => CopyWith$Mutation$ResetUnitProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ResetUnitProgress<TRes> {
  factory CopyWith$Mutation$ResetUnitProgress(
    Mutation$ResetUnitProgress instance,
    TRes Function(Mutation$ResetUnitProgress) then,
  ) = _CopyWithImpl$Mutation$ResetUnitProgress;

  factory CopyWith$Mutation$ResetUnitProgress.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ResetUnitProgress;

  TRes call({
    Fragment$UnitFull? unit,
    String? $__typename,
  });
  CopyWith$Fragment$UnitFull<TRes> get unit;
}

class _CopyWithImpl$Mutation$ResetUnitProgress<TRes>
    implements CopyWith$Mutation$ResetUnitProgress<TRes> {
  _CopyWithImpl$Mutation$ResetUnitProgress(
    this._instance,
    this._then,
  );

  final Mutation$ResetUnitProgress _instance;

  final TRes Function(Mutation$ResetUnitProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? unit = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ResetUnitProgress(
        unit: unit == _undefined || unit == null
            ? _instance.unit
            : (unit as Fragment$UnitFull),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$UnitFull<TRes> get unit {
    final local$unit = _instance.unit;
    return CopyWith$Fragment$UnitFull(local$unit, (e) => call(unit: e));
  }
}

class _CopyWithStubImpl$Mutation$ResetUnitProgress<TRes>
    implements CopyWith$Mutation$ResetUnitProgress<TRes> {
  _CopyWithStubImpl$Mutation$ResetUnitProgress(this._res);

  TRes _res;

  call({
    Fragment$UnitFull? unit,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UnitFull<TRes> get unit =>
      CopyWith$Fragment$UnitFull.stub(_res);
}

const documentNodeMutationResetUnitProgress = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ResetUnitProgress'),
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
          name: NameNode(value: 'ResetUnitProgressInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'resetUnitProgress'),
        alias: NameNode(value: 'unit'),
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
            name: NameNode(value: 'UnitFull'),
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
  fragmentDefinitionUnitFull,
  fragmentDefinitionUnit,
  fragmentDefinitionCourse,
  fragmentDefinitionLesson,
  fragmentDefinitionLessonAudio,
  fragmentDefinitionUnitTechnique,
  fragmentDefinitionTechnique,
]);
Mutation$ResetUnitProgress _parserFn$Mutation$ResetUnitProgress(
        Map<String, dynamic> data) =>
    Mutation$ResetUnitProgress.fromJson(data);
typedef OnMutationCompleted$Mutation$ResetUnitProgress = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$ResetUnitProgress?,
);

class Options$Mutation$ResetUnitProgress
    extends graphql.MutationOptions<Mutation$ResetUnitProgress> {
  Options$Mutation$ResetUnitProgress({
    String? operationName,
    required Variables$Mutation$ResetUnitProgress variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ResetUnitProgress? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ResetUnitProgress? onCompleted,
    graphql.OnMutationUpdate<Mutation$ResetUnitProgress>? update,
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
                        : _parserFn$Mutation$ResetUnitProgress(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationResetUnitProgress,
          parserFn: _parserFn$Mutation$ResetUnitProgress,
        );

  final OnMutationCompleted$Mutation$ResetUnitProgress? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ResetUnitProgress
    extends graphql.WatchQueryOptions<Mutation$ResetUnitProgress> {
  WatchOptions$Mutation$ResetUnitProgress({
    String? operationName,
    required Variables$Mutation$ResetUnitProgress variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ResetUnitProgress? typedOptimisticResult,
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
          document: documentNodeMutationResetUnitProgress,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ResetUnitProgress,
        );
}

extension ClientExtension$Mutation$ResetUnitProgress on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ResetUnitProgress>>
      mutate$ResetUnitProgress(
              Options$Mutation$ResetUnitProgress options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$ResetUnitProgress>
      watchMutation$ResetUnitProgress(
              WatchOptions$Mutation$ResetUnitProgress options) =>
          this.watchMutation(options);
}

class Mutation$ResetUnitProgress$HookResult {
  Mutation$ResetUnitProgress$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$ResetUnitProgress runMutation;

  final graphql.QueryResult<Mutation$ResetUnitProgress> result;
}

Mutation$ResetUnitProgress$HookResult useMutation$ResetUnitProgress(
    [WidgetOptions$Mutation$ResetUnitProgress? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$ResetUnitProgress());
  return Mutation$ResetUnitProgress$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ResetUnitProgress>
    useWatchMutation$ResetUnitProgress(
            WatchOptions$Mutation$ResetUnitProgress options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ResetUnitProgress
    extends graphql.MutationOptions<Mutation$ResetUnitProgress> {
  WidgetOptions$Mutation$ResetUnitProgress({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ResetUnitProgress? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ResetUnitProgress? onCompleted,
    graphql.OnMutationUpdate<Mutation$ResetUnitProgress>? update,
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
                        : _parserFn$Mutation$ResetUnitProgress(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationResetUnitProgress,
          parserFn: _parserFn$Mutation$ResetUnitProgress,
        );

  final OnMutationCompleted$Mutation$ResetUnitProgress? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$ResetUnitProgress
    = graphql.MultiSourceResult<Mutation$ResetUnitProgress> Function(
  Variables$Mutation$ResetUnitProgress, {
  Object? optimisticResult,
  Mutation$ResetUnitProgress? typedOptimisticResult,
});
typedef Builder$Mutation$ResetUnitProgress = widgets.Widget Function(
  RunMutation$Mutation$ResetUnitProgress,
  graphql.QueryResult<Mutation$ResetUnitProgress>?,
);

class Mutation$ResetUnitProgress$Widget
    extends graphql_flutter.Mutation<Mutation$ResetUnitProgress> {
  Mutation$ResetUnitProgress$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ResetUnitProgress? options,
    required Builder$Mutation$ResetUnitProgress builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$ResetUnitProgress(),
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

class Variables$Mutation$DownloadUnit {
  factory Variables$Mutation$DownloadUnit({
    required String id,
    required Input$DownloadUnitInput input,
  }) =>
      Variables$Mutation$DownloadUnit._({
        r'id': id,
        r'input': input,
      });

  Variables$Mutation$DownloadUnit._(this._$data);

  factory Variables$Mutation$DownloadUnit.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$input = data['input'];
    result$data['input'] =
        Input$DownloadUnitInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$DownloadUnit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$DownloadUnitInput get input =>
      (_$data['input'] as Input$DownloadUnitInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$DownloadUnit<Variables$Mutation$DownloadUnit>
      get copyWith => CopyWith$Variables$Mutation$DownloadUnit(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DownloadUnit) ||
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

abstract class CopyWith$Variables$Mutation$DownloadUnit<TRes> {
  factory CopyWith$Variables$Mutation$DownloadUnit(
    Variables$Mutation$DownloadUnit instance,
    TRes Function(Variables$Mutation$DownloadUnit) then,
  ) = _CopyWithImpl$Variables$Mutation$DownloadUnit;

  factory CopyWith$Variables$Mutation$DownloadUnit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DownloadUnit;

  TRes call({
    String? id,
    Input$DownloadUnitInput? input,
  });
}

class _CopyWithImpl$Variables$Mutation$DownloadUnit<TRes>
    implements CopyWith$Variables$Mutation$DownloadUnit<TRes> {
  _CopyWithImpl$Variables$Mutation$DownloadUnit(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DownloadUnit _instance;

  final TRes Function(Variables$Mutation$DownloadUnit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Mutation$DownloadUnit._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (input != _undefined && input != null)
          'input': (input as Input$DownloadUnitInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DownloadUnit<TRes>
    implements CopyWith$Variables$Mutation$DownloadUnit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DownloadUnit(this._res);

  TRes _res;

  call({
    String? id,
    Input$DownloadUnitInput? input,
  }) =>
      _res;
}

class Mutation$DownloadUnit {
  Mutation$DownloadUnit({
    required this.downloadUnit,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DownloadUnit.fromJson(Map<String, dynamic> json) {
    final l$downloadUnit = json['downloadUnit'];
    final l$$__typename = json['__typename'];
    return Mutation$DownloadUnit(
      downloadUnit: Mutation$DownloadUnit$downloadUnit.fromJson(
          (l$downloadUnit as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DownloadUnit$downloadUnit downloadUnit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$downloadUnit = downloadUnit;
    _resultData['downloadUnit'] = l$downloadUnit.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$downloadUnit = downloadUnit;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$downloadUnit,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DownloadUnit) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$downloadUnit = downloadUnit;
    final lOther$downloadUnit = other.downloadUnit;
    if (l$downloadUnit != lOther$downloadUnit) {
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

extension UtilityExtension$Mutation$DownloadUnit on Mutation$DownloadUnit {
  CopyWith$Mutation$DownloadUnit<Mutation$DownloadUnit> get copyWith =>
      CopyWith$Mutation$DownloadUnit(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DownloadUnit<TRes> {
  factory CopyWith$Mutation$DownloadUnit(
    Mutation$DownloadUnit instance,
    TRes Function(Mutation$DownloadUnit) then,
  ) = _CopyWithImpl$Mutation$DownloadUnit;

  factory CopyWith$Mutation$DownloadUnit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DownloadUnit;

  TRes call({
    Mutation$DownloadUnit$downloadUnit? downloadUnit,
    String? $__typename,
  });
  CopyWith$Mutation$DownloadUnit$downloadUnit<TRes> get downloadUnit;
}

class _CopyWithImpl$Mutation$DownloadUnit<TRes>
    implements CopyWith$Mutation$DownloadUnit<TRes> {
  _CopyWithImpl$Mutation$DownloadUnit(
    this._instance,
    this._then,
  );

  final Mutation$DownloadUnit _instance;

  final TRes Function(Mutation$DownloadUnit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? downloadUnit = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DownloadUnit(
        downloadUnit: downloadUnit == _undefined || downloadUnit == null
            ? _instance.downloadUnit
            : (downloadUnit as Mutation$DownloadUnit$downloadUnit),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DownloadUnit$downloadUnit<TRes> get downloadUnit {
    final local$downloadUnit = _instance.downloadUnit;
    return CopyWith$Mutation$DownloadUnit$downloadUnit(
        local$downloadUnit, (e) => call(downloadUnit: e));
  }
}

class _CopyWithStubImpl$Mutation$DownloadUnit<TRes>
    implements CopyWith$Mutation$DownloadUnit<TRes> {
  _CopyWithStubImpl$Mutation$DownloadUnit(this._res);

  TRes _res;

  call({
    Mutation$DownloadUnit$downloadUnit? downloadUnit,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DownloadUnit$downloadUnit<TRes> get downloadUnit =>
      CopyWith$Mutation$DownloadUnit$downloadUnit.stub(_res);
}

const documentNodeMutationDownloadUnit = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DownloadUnit'),
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
          name: NameNode(value: 'DownloadUnitInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'downloadUnit'),
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
Mutation$DownloadUnit _parserFn$Mutation$DownloadUnit(
        Map<String, dynamic> data) =>
    Mutation$DownloadUnit.fromJson(data);
typedef OnMutationCompleted$Mutation$DownloadUnit = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DownloadUnit?,
);

class Options$Mutation$DownloadUnit
    extends graphql.MutationOptions<Mutation$DownloadUnit> {
  Options$Mutation$DownloadUnit({
    String? operationName,
    required Variables$Mutation$DownloadUnit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DownloadUnit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DownloadUnit? onCompleted,
    graphql.OnMutationUpdate<Mutation$DownloadUnit>? update,
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
                    data == null ? null : _parserFn$Mutation$DownloadUnit(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDownloadUnit,
          parserFn: _parserFn$Mutation$DownloadUnit,
        );

  final OnMutationCompleted$Mutation$DownloadUnit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DownloadUnit
    extends graphql.WatchQueryOptions<Mutation$DownloadUnit> {
  WatchOptions$Mutation$DownloadUnit({
    String? operationName,
    required Variables$Mutation$DownloadUnit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DownloadUnit? typedOptimisticResult,
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
          document: documentNodeMutationDownloadUnit,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DownloadUnit,
        );
}

extension ClientExtension$Mutation$DownloadUnit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DownloadUnit>> mutate$DownloadUnit(
          Options$Mutation$DownloadUnit options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$DownloadUnit> watchMutation$DownloadUnit(
          WatchOptions$Mutation$DownloadUnit options) =>
      this.watchMutation(options);
}

class Mutation$DownloadUnit$HookResult {
  Mutation$DownloadUnit$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DownloadUnit runMutation;

  final graphql.QueryResult<Mutation$DownloadUnit> result;
}

Mutation$DownloadUnit$HookResult useMutation$DownloadUnit(
    [WidgetOptions$Mutation$DownloadUnit? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DownloadUnit());
  return Mutation$DownloadUnit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DownloadUnit> useWatchMutation$DownloadUnit(
        WatchOptions$Mutation$DownloadUnit options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DownloadUnit
    extends graphql.MutationOptions<Mutation$DownloadUnit> {
  WidgetOptions$Mutation$DownloadUnit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DownloadUnit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DownloadUnit? onCompleted,
    graphql.OnMutationUpdate<Mutation$DownloadUnit>? update,
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
                    data == null ? null : _parserFn$Mutation$DownloadUnit(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDownloadUnit,
          parserFn: _parserFn$Mutation$DownloadUnit,
        );

  final OnMutationCompleted$Mutation$DownloadUnit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DownloadUnit
    = graphql.MultiSourceResult<Mutation$DownloadUnit> Function(
  Variables$Mutation$DownloadUnit, {
  Object? optimisticResult,
  Mutation$DownloadUnit? typedOptimisticResult,
});
typedef Builder$Mutation$DownloadUnit = widgets.Widget Function(
  RunMutation$Mutation$DownloadUnit,
  graphql.QueryResult<Mutation$DownloadUnit>?,
);

class Mutation$DownloadUnit$Widget
    extends graphql_flutter.Mutation<Mutation$DownloadUnit> {
  Mutation$DownloadUnit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DownloadUnit? options,
    required Builder$Mutation$DownloadUnit builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DownloadUnit(),
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

class Mutation$DownloadUnit$downloadUnit {
  Mutation$DownloadUnit$downloadUnit({
    required this.success,
    this.$__typename = 'DownloadUnitResult',
  });

  factory Mutation$DownloadUnit$downloadUnit.fromJson(
      Map<String, dynamic> json) {
    final l$success = json['success'];
    final l$$__typename = json['__typename'];
    return Mutation$DownloadUnit$downloadUnit(
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
    if (!(other is Mutation$DownloadUnit$downloadUnit) ||
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

extension UtilityExtension$Mutation$DownloadUnit$downloadUnit
    on Mutation$DownloadUnit$downloadUnit {
  CopyWith$Mutation$DownloadUnit$downloadUnit<
          Mutation$DownloadUnit$downloadUnit>
      get copyWith => CopyWith$Mutation$DownloadUnit$downloadUnit(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DownloadUnit$downloadUnit<TRes> {
  factory CopyWith$Mutation$DownloadUnit$downloadUnit(
    Mutation$DownloadUnit$downloadUnit instance,
    TRes Function(Mutation$DownloadUnit$downloadUnit) then,
  ) = _CopyWithImpl$Mutation$DownloadUnit$downloadUnit;

  factory CopyWith$Mutation$DownloadUnit$downloadUnit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DownloadUnit$downloadUnit;

  TRes call({
    bool? success,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DownloadUnit$downloadUnit<TRes>
    implements CopyWith$Mutation$DownloadUnit$downloadUnit<TRes> {
  _CopyWithImpl$Mutation$DownloadUnit$downloadUnit(
    this._instance,
    this._then,
  );

  final Mutation$DownloadUnit$downloadUnit _instance;

  final TRes Function(Mutation$DownloadUnit$downloadUnit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? success = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DownloadUnit$downloadUnit(
        success: success == _undefined || success == null
            ? _instance.success
            : (success as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DownloadUnit$downloadUnit<TRes>
    implements CopyWith$Mutation$DownloadUnit$downloadUnit<TRes> {
  _CopyWithStubImpl$Mutation$DownloadUnit$downloadUnit(this._res);

  TRes _res;

  call({
    bool? success,
    String? $__typename,
  }) =>
      _res;
}
