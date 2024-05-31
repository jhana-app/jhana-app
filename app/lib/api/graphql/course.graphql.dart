// GENERATED FILE, DO NOT MODIFY
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'unit.graphql.dart';

class Fragment$Course {
  Fragment$Course({
    required this.id,
    required this.coverimage,
    required this.title,
    required this.description,
    required this.color,
    required this.active,
    required this.order,
    required this.isStarted,
    this.$__typename = 'Course',
  });

  factory Fragment$Course.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$coverimage = json['coverimage'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$color = json['color'];
    final l$active = json['active'];
    final l$order = json['order'];
    final l$isStarted = json['isStarted'];
    final l$$__typename = json['__typename'];
    return Fragment$Course(
      id: (l$id as String),
      coverimage: (l$coverimage as String),
      title: (l$title as String),
      description: (l$description as String),
      color: (l$color as String),
      active: (l$active as bool),
      order: (l$order as int),
      isStarted: (l$isStarted as bool),
      $__typename: (l$$__typename as String),
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
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Course) || runtimeType != other.runtimeType) {
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
    return true;
  }
}

extension UtilityExtension$Fragment$Course on Fragment$Course {
  CopyWith$Fragment$Course<Fragment$Course> get copyWith =>
      CopyWith$Fragment$Course(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Course<TRes> {
  factory CopyWith$Fragment$Course(
    Fragment$Course instance,
    TRes Function(Fragment$Course) then,
  ) = _CopyWithImpl$Fragment$Course;

  factory CopyWith$Fragment$Course.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Course;

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
  });
}

class _CopyWithImpl$Fragment$Course<TRes>
    implements CopyWith$Fragment$Course<TRes> {
  _CopyWithImpl$Fragment$Course(
    this._instance,
    this._then,
  );

  final Fragment$Course _instance;

  final TRes Function(Fragment$Course) _then;

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
  }) =>
      _then(Fragment$Course(
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
      ));
}

class _CopyWithStubImpl$Fragment$Course<TRes>
    implements CopyWith$Fragment$Course<TRes> {
  _CopyWithStubImpl$Fragment$Course(this._res);

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
  }) =>
      _res;
}

const fragmentDefinitionCourse = FragmentDefinitionNode(
  name: NameNode(value: 'Course'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Course'),
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
      name: NameNode(value: 'color'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'active'),
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
      name: NameNode(value: 'isStarted'),
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
const documentNodeFragmentCourse = DocumentNode(definitions: [
  fragmentDefinitionCourse,
]);

extension ClientExtension$Fragment$Course on graphql.GraphQLClient {
  void writeFragment$Course({
    required Fragment$Course data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Course',
            document: documentNodeFragmentCourse,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Course? readFragment$Course({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Course',
          document: documentNodeFragmentCourse,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Course.fromJson(result);
  }
}

class Fragment$CourseFull implements Fragment$Course {
  Fragment$CourseFull({
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

  factory Fragment$CourseFull.fromJson(Map<String, dynamic> json) {
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
    return Fragment$CourseFull(
      id: (l$id as String),
      coverimage: (l$coverimage as String),
      title: (l$title as String),
      description: (l$description as String),
      color: (l$color as String),
      active: (l$active as bool),
      order: (l$order as int),
      isStarted: (l$isStarted as bool),
      $__typename: (l$$__typename as String),
      units:
          Fragment$CourseFull$units.fromJson((l$units as Map<String, dynamic>)),
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

  final Fragment$CourseFull$units units;

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
    if (!(other is Fragment$CourseFull) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$CourseFull on Fragment$CourseFull {
  CopyWith$Fragment$CourseFull<Fragment$CourseFull> get copyWith =>
      CopyWith$Fragment$CourseFull(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$CourseFull<TRes> {
  factory CopyWith$Fragment$CourseFull(
    Fragment$CourseFull instance,
    TRes Function(Fragment$CourseFull) then,
  ) = _CopyWithImpl$Fragment$CourseFull;

  factory CopyWith$Fragment$CourseFull.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CourseFull;

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
    Fragment$CourseFull$units? units,
  });
  CopyWith$Fragment$CourseFull$units<TRes> get units;
}

class _CopyWithImpl$Fragment$CourseFull<TRes>
    implements CopyWith$Fragment$CourseFull<TRes> {
  _CopyWithImpl$Fragment$CourseFull(
    this._instance,
    this._then,
  );

  final Fragment$CourseFull _instance;

  final TRes Function(Fragment$CourseFull) _then;

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
      _then(Fragment$CourseFull(
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
            : (units as Fragment$CourseFull$units),
      ));

  CopyWith$Fragment$CourseFull$units<TRes> get units {
    final local$units = _instance.units;
    return CopyWith$Fragment$CourseFull$units(
        local$units, (e) => call(units: e));
  }
}

class _CopyWithStubImpl$Fragment$CourseFull<TRes>
    implements CopyWith$Fragment$CourseFull<TRes> {
  _CopyWithStubImpl$Fragment$CourseFull(this._res);

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
    Fragment$CourseFull$units? units,
  }) =>
      _res;

  CopyWith$Fragment$CourseFull$units<TRes> get units =>
      CopyWith$Fragment$CourseFull$units.stub(_res);
}

const fragmentDefinitionCourseFull = FragmentDefinitionNode(
  name: NameNode(value: 'CourseFull'),
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
const documentNodeFragmentCourseFull = DocumentNode(definitions: [
  fragmentDefinitionCourseFull,
  fragmentDefinitionCourse,
  fragmentDefinitionUnit,
]);

extension ClientExtension$Fragment$CourseFull on graphql.GraphQLClient {
  void writeFragment$CourseFull({
    required Fragment$CourseFull data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'CourseFull',
            document: documentNodeFragmentCourseFull,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$CourseFull? readFragment$CourseFull({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'CourseFull',
          document: documentNodeFragmentCourseFull,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$CourseFull.fromJson(result);
  }
}

class Fragment$CourseFull$units {
  Fragment$CourseFull$units({
    this.edges,
    this.$__typename = 'UnitConnection',
  });

  factory Fragment$CourseFull$units.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Fragment$CourseFull$units(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$CourseFull$units$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$CourseFull$units$edges?>? edges;

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
    if (!(other is Fragment$CourseFull$units) ||
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

extension UtilityExtension$Fragment$CourseFull$units
    on Fragment$CourseFull$units {
  CopyWith$Fragment$CourseFull$units<Fragment$CourseFull$units> get copyWith =>
      CopyWith$Fragment$CourseFull$units(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$CourseFull$units<TRes> {
  factory CopyWith$Fragment$CourseFull$units(
    Fragment$CourseFull$units instance,
    TRes Function(Fragment$CourseFull$units) then,
  ) = _CopyWithImpl$Fragment$CourseFull$units;

  factory CopyWith$Fragment$CourseFull$units.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CourseFull$units;

  TRes call({
    List<Fragment$CourseFull$units$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$CourseFull$units$edges?>? Function(
              Iterable<
                  CopyWith$Fragment$CourseFull$units$edges<
                      Fragment$CourseFull$units$edges>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$CourseFull$units<TRes>
    implements CopyWith$Fragment$CourseFull$units<TRes> {
  _CopyWithImpl$Fragment$CourseFull$units(
    this._instance,
    this._then,
  );

  final Fragment$CourseFull$units _instance;

  final TRes Function(Fragment$CourseFull$units) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CourseFull$units(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Fragment$CourseFull$units$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Fragment$CourseFull$units$edges?>? Function(
                  Iterable<
                      CopyWith$Fragment$CourseFull$units$edges<
                          Fragment$CourseFull$units$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Fragment$CourseFull$units$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$CourseFull$units<TRes>
    implements CopyWith$Fragment$CourseFull$units<TRes> {
  _CopyWithStubImpl$Fragment$CourseFull$units(this._res);

  TRes _res;

  call({
    List<Fragment$CourseFull$units$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Fragment$CourseFull$units$edges {
  Fragment$CourseFull$units$edges({
    this.node,
    this.$__typename = 'UnitEdge',
  });

  factory Fragment$CourseFull$units$edges.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Fragment$CourseFull$units$edges(
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
    if (!(other is Fragment$CourseFull$units$edges) ||
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

extension UtilityExtension$Fragment$CourseFull$units$edges
    on Fragment$CourseFull$units$edges {
  CopyWith$Fragment$CourseFull$units$edges<Fragment$CourseFull$units$edges>
      get copyWith => CopyWith$Fragment$CourseFull$units$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CourseFull$units$edges<TRes> {
  factory CopyWith$Fragment$CourseFull$units$edges(
    Fragment$CourseFull$units$edges instance,
    TRes Function(Fragment$CourseFull$units$edges) then,
  ) = _CopyWithImpl$Fragment$CourseFull$units$edges;

  factory CopyWith$Fragment$CourseFull$units$edges.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CourseFull$units$edges;

  TRes call({
    Fragment$Unit? node,
    String? $__typename,
  });
  CopyWith$Fragment$Unit<TRes> get node;
}

class _CopyWithImpl$Fragment$CourseFull$units$edges<TRes>
    implements CopyWith$Fragment$CourseFull$units$edges<TRes> {
  _CopyWithImpl$Fragment$CourseFull$units$edges(
    this._instance,
    this._then,
  );

  final Fragment$CourseFull$units$edges _instance;

  final TRes Function(Fragment$CourseFull$units$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CourseFull$units$edges(
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

class _CopyWithStubImpl$Fragment$CourseFull$units$edges<TRes>
    implements CopyWith$Fragment$CourseFull$units$edges<TRes> {
  _CopyWithStubImpl$Fragment$CourseFull$units$edges(this._res);

  TRes _res;

  call({
    Fragment$Unit? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Unit<TRes> get node => CopyWith$Fragment$Unit.stub(_res);
}

class Query$FetchCourses {
  Query$FetchCourses({
    required this.courses,
    this.$__typename = 'Query',
  });

  factory Query$FetchCourses.fromJson(Map<String, dynamic> json) {
    final l$courses = json['courses'];
    final l$$__typename = json['__typename'];
    return Query$FetchCourses(
      courses: Query$FetchCourses$courses.fromJson(
          (l$courses as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchCourses$courses courses;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$courses = courses;
    _resultData['courses'] = l$courses.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$courses = courses;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$courses,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchCourses) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$courses = courses;
    final lOther$courses = other.courses;
    if (l$courses != lOther$courses) {
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

extension UtilityExtension$Query$FetchCourses on Query$FetchCourses {
  CopyWith$Query$FetchCourses<Query$FetchCourses> get copyWith =>
      CopyWith$Query$FetchCourses(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchCourses<TRes> {
  factory CopyWith$Query$FetchCourses(
    Query$FetchCourses instance,
    TRes Function(Query$FetchCourses) then,
  ) = _CopyWithImpl$Query$FetchCourses;

  factory CopyWith$Query$FetchCourses.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourses;

  TRes call({
    Query$FetchCourses$courses? courses,
    String? $__typename,
  });
  CopyWith$Query$FetchCourses$courses<TRes> get courses;
}

class _CopyWithImpl$Query$FetchCourses<TRes>
    implements CopyWith$Query$FetchCourses<TRes> {
  _CopyWithImpl$Query$FetchCourses(
    this._instance,
    this._then,
  );

  final Query$FetchCourses _instance;

  final TRes Function(Query$FetchCourses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? courses = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourses(
        courses: courses == _undefined || courses == null
            ? _instance.courses
            : (courses as Query$FetchCourses$courses),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FetchCourses$courses<TRes> get courses {
    final local$courses = _instance.courses;
    return CopyWith$Query$FetchCourses$courses(
        local$courses, (e) => call(courses: e));
  }
}

class _CopyWithStubImpl$Query$FetchCourses<TRes>
    implements CopyWith$Query$FetchCourses<TRes> {
  _CopyWithStubImpl$Query$FetchCourses(this._res);

  TRes _res;

  call({
    Query$FetchCourses$courses? courses,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FetchCourses$courses<TRes> get courses =>
      CopyWith$Query$FetchCourses$courses.stub(_res);
}

const documentNodeQueryFetchCourses = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchCourses'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'courses'),
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
                    name: NameNode(value: 'CourseFull'),
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
  fragmentDefinitionCourseFull,
  fragmentDefinitionCourse,
  fragmentDefinitionUnit,
]);
Query$FetchCourses _parserFn$Query$FetchCourses(Map<String, dynamic> data) =>
    Query$FetchCourses.fromJson(data);
typedef OnQueryComplete$Query$FetchCourses = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FetchCourses?,
);

class Options$Query$FetchCourses
    extends graphql.QueryOptions<Query$FetchCourses> {
  Options$Query$FetchCourses({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchCourses? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FetchCourses? onComplete,
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
                    data == null ? null : _parserFn$Query$FetchCourses(data),
                  ),
          onError: onError,
          document: documentNodeQueryFetchCourses,
          parserFn: _parserFn$Query$FetchCourses,
        );

  final OnQueryComplete$Query$FetchCourses? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FetchCourses
    extends graphql.WatchQueryOptions<Query$FetchCourses> {
  WatchOptions$Query$FetchCourses({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchCourses? typedOptimisticResult,
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
          document: documentNodeQueryFetchCourses,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchCourses,
        );
}

class FetchMoreOptions$Query$FetchCourses extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchCourses(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryFetchCourses,
        );
}

extension ClientExtension$Query$FetchCourses on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchCourses>> query$FetchCourses(
          [Options$Query$FetchCourses? options]) async =>
      await this.query(options ?? Options$Query$FetchCourses());
  graphql.ObservableQuery<Query$FetchCourses> watchQuery$FetchCourses(
          [WatchOptions$Query$FetchCourses? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FetchCourses());
  void writeQuery$FetchCourses({
    required Query$FetchCourses data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryFetchCourses)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchCourses? readQuery$FetchCourses({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFetchCourses)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchCourses.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchCourses> useQuery$FetchCourses(
        [Options$Query$FetchCourses? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$FetchCourses());
graphql.ObservableQuery<Query$FetchCourses> useWatchQuery$FetchCourses(
        [WatchOptions$Query$FetchCourses? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$FetchCourses());

class Query$FetchCourses$Widget
    extends graphql_flutter.Query<Query$FetchCourses> {
  Query$FetchCourses$Widget({
    widgets.Key? key,
    Options$Query$FetchCourses? options,
    required graphql_flutter.QueryBuilder<Query$FetchCourses> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$FetchCourses(),
          builder: builder,
        );
}

class Query$FetchCourses$courses {
  Query$FetchCourses$courses({
    this.edges,
    required this.totalCount,
    this.$__typename = 'CourseConnection',
  });

  factory Query$FetchCourses$courses.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$FetchCourses$courses(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$FetchCourses$courses$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      totalCount: (l$totalCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FetchCourses$courses$edges?>? edges;

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
    if (!(other is Query$FetchCourses$courses) ||
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

extension UtilityExtension$Query$FetchCourses$courses
    on Query$FetchCourses$courses {
  CopyWith$Query$FetchCourses$courses<Query$FetchCourses$courses>
      get copyWith => CopyWith$Query$FetchCourses$courses(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCourses$courses<TRes> {
  factory CopyWith$Query$FetchCourses$courses(
    Query$FetchCourses$courses instance,
    TRes Function(Query$FetchCourses$courses) then,
  ) = _CopyWithImpl$Query$FetchCourses$courses;

  factory CopyWith$Query$FetchCourses$courses.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourses$courses;

  TRes call({
    List<Query$FetchCourses$courses$edges?>? edges,
    int? totalCount,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$FetchCourses$courses$edges?>? Function(
              Iterable<
                  CopyWith$Query$FetchCourses$courses$edges<
                      Query$FetchCourses$courses$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$FetchCourses$courses<TRes>
    implements CopyWith$Query$FetchCourses$courses<TRes> {
  _CopyWithImpl$Query$FetchCourses$courses(
    this._instance,
    this._then,
  );

  final Query$FetchCourses$courses _instance;

  final TRes Function(Query$FetchCourses$courses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourses$courses(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$FetchCourses$courses$edges?>?),
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$FetchCourses$courses$edges?>? Function(
                  Iterable<
                      CopyWith$Query$FetchCourses$courses$edges<
                          Query$FetchCourses$courses$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$FetchCourses$courses$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FetchCourses$courses<TRes>
    implements CopyWith$Query$FetchCourses$courses<TRes> {
  _CopyWithStubImpl$Query$FetchCourses$courses(this._res);

  TRes _res;

  call({
    List<Query$FetchCourses$courses$edges?>? edges,
    int? totalCount,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$FetchCourses$courses$edges {
  Query$FetchCourses$courses$edges({
    this.node,
    this.$__typename = 'CourseEdge',
  });

  factory Query$FetchCourses$courses$edges.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$FetchCourses$courses$edges(
      node: l$node == null
          ? null
          : Fragment$CourseFull.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$CourseFull? node;

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
    if (!(other is Query$FetchCourses$courses$edges) ||
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

extension UtilityExtension$Query$FetchCourses$courses$edges
    on Query$FetchCourses$courses$edges {
  CopyWith$Query$FetchCourses$courses$edges<Query$FetchCourses$courses$edges>
      get copyWith => CopyWith$Query$FetchCourses$courses$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCourses$courses$edges<TRes> {
  factory CopyWith$Query$FetchCourses$courses$edges(
    Query$FetchCourses$courses$edges instance,
    TRes Function(Query$FetchCourses$courses$edges) then,
  ) = _CopyWithImpl$Query$FetchCourses$courses$edges;

  factory CopyWith$Query$FetchCourses$courses$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourses$courses$edges;

  TRes call({
    Fragment$CourseFull? node,
    String? $__typename,
  });
  CopyWith$Fragment$CourseFull<TRes> get node;
}

class _CopyWithImpl$Query$FetchCourses$courses$edges<TRes>
    implements CopyWith$Query$FetchCourses$courses$edges<TRes> {
  _CopyWithImpl$Query$FetchCourses$courses$edges(
    this._instance,
    this._then,
  );

  final Query$FetchCourses$courses$edges _instance;

  final TRes Function(Query$FetchCourses$courses$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourses$courses$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Fragment$CourseFull?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$CourseFull<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$CourseFull.stub(_then(_instance))
        : CopyWith$Fragment$CourseFull(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$FetchCourses$courses$edges<TRes>
    implements CopyWith$Query$FetchCourses$courses$edges<TRes> {
  _CopyWithStubImpl$Query$FetchCourses$courses$edges(this._res);

  TRes _res;

  call({
    Fragment$CourseFull? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$CourseFull<TRes> get node =>
      CopyWith$Fragment$CourseFull.stub(_res);
}

class Variables$Query$FetchCourse {
  factory Variables$Query$FetchCourse({required String courseId}) =>
      Variables$Query$FetchCourse._({
        r'courseId': courseId,
      });

  Variables$Query$FetchCourse._(this._$data);

  factory Variables$Query$FetchCourse.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$courseId = data['courseId'];
    result$data['courseId'] = (l$courseId as String);
    return Variables$Query$FetchCourse._(result$data);
  }

  Map<String, dynamic> _$data;

  String get courseId => (_$data['courseId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$courseId = courseId;
    result$data['courseId'] = l$courseId;
    return result$data;
  }

  CopyWith$Variables$Query$FetchCourse<Variables$Query$FetchCourse>
      get copyWith => CopyWith$Variables$Query$FetchCourse(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FetchCourse) ||
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

abstract class CopyWith$Variables$Query$FetchCourse<TRes> {
  factory CopyWith$Variables$Query$FetchCourse(
    Variables$Query$FetchCourse instance,
    TRes Function(Variables$Query$FetchCourse) then,
  ) = _CopyWithImpl$Variables$Query$FetchCourse;

  factory CopyWith$Variables$Query$FetchCourse.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FetchCourse;

  TRes call({String? courseId});
}

class _CopyWithImpl$Variables$Query$FetchCourse<TRes>
    implements CopyWith$Variables$Query$FetchCourse<TRes> {
  _CopyWithImpl$Variables$Query$FetchCourse(
    this._instance,
    this._then,
  );

  final Variables$Query$FetchCourse _instance;

  final TRes Function(Variables$Query$FetchCourse) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? courseId = _undefined}) =>
      _then(Variables$Query$FetchCourse._({
        ..._instance._$data,
        if (courseId != _undefined && courseId != null)
          'courseId': (courseId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$FetchCourse<TRes>
    implements CopyWith$Variables$Query$FetchCourse<TRes> {
  _CopyWithStubImpl$Variables$Query$FetchCourse(this._res);

  TRes _res;

  call({String? courseId}) => _res;
}

class Query$FetchCourse {
  Query$FetchCourse({
    this.node,
    this.$__typename = 'Query',
  });

  factory Query$FetchCourse.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$FetchCourse(
      node: l$node == null
          ? null
          : Query$FetchCourse$node.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchCourse$node? node;

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
    if (!(other is Query$FetchCourse) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FetchCourse on Query$FetchCourse {
  CopyWith$Query$FetchCourse<Query$FetchCourse> get copyWith =>
      CopyWith$Query$FetchCourse(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchCourse<TRes> {
  factory CopyWith$Query$FetchCourse(
    Query$FetchCourse instance,
    TRes Function(Query$FetchCourse) then,
  ) = _CopyWithImpl$Query$FetchCourse;

  factory CopyWith$Query$FetchCourse.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourse;

  TRes call({
    Query$FetchCourse$node? node,
    String? $__typename,
  });
  CopyWith$Query$FetchCourse$node<TRes> get node;
}

class _CopyWithImpl$Query$FetchCourse<TRes>
    implements CopyWith$Query$FetchCourse<TRes> {
  _CopyWithImpl$Query$FetchCourse(
    this._instance,
    this._then,
  );

  final Query$FetchCourse _instance;

  final TRes Function(Query$FetchCourse) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourse(
        node: node == _undefined
            ? _instance.node
            : (node as Query$FetchCourse$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FetchCourse$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$FetchCourse$node.stub(_then(_instance))
        : CopyWith$Query$FetchCourse$node(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$FetchCourse<TRes>
    implements CopyWith$Query$FetchCourse<TRes> {
  _CopyWithStubImpl$Query$FetchCourse(this._res);

  TRes _res;

  call({
    Query$FetchCourse$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FetchCourse$node<TRes> get node =>
      CopyWith$Query$FetchCourse$node.stub(_res);
}

const documentNodeQueryFetchCourse = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchCourse'),
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
                name: NameNode(value: 'CourseFull'),
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
  fragmentDefinitionCourseFull,
  fragmentDefinitionCourse,
  fragmentDefinitionUnit,
]);
Query$FetchCourse _parserFn$Query$FetchCourse(Map<String, dynamic> data) =>
    Query$FetchCourse.fromJson(data);
typedef OnQueryComplete$Query$FetchCourse = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FetchCourse?,
);

class Options$Query$FetchCourse
    extends graphql.QueryOptions<Query$FetchCourse> {
  Options$Query$FetchCourse({
    String? operationName,
    required Variables$Query$FetchCourse variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchCourse? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FetchCourse? onComplete,
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
                    data == null ? null : _parserFn$Query$FetchCourse(data),
                  ),
          onError: onError,
          document: documentNodeQueryFetchCourse,
          parserFn: _parserFn$Query$FetchCourse,
        );

  final OnQueryComplete$Query$FetchCourse? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FetchCourse
    extends graphql.WatchQueryOptions<Query$FetchCourse> {
  WatchOptions$Query$FetchCourse({
    String? operationName,
    required Variables$Query$FetchCourse variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchCourse? typedOptimisticResult,
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
          document: documentNodeQueryFetchCourse,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchCourse,
        );
}

class FetchMoreOptions$Query$FetchCourse extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchCourse({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$FetchCourse variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryFetchCourse,
        );
}

extension ClientExtension$Query$FetchCourse on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchCourse>> query$FetchCourse(
          Options$Query$FetchCourse options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$FetchCourse> watchQuery$FetchCourse(
          WatchOptions$Query$FetchCourse options) =>
      this.watchQuery(options);
  void writeQuery$FetchCourse({
    required Query$FetchCourse data,
    required Variables$Query$FetchCourse variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryFetchCourse),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchCourse? readQuery$FetchCourse({
    required Variables$Query$FetchCourse variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFetchCourse),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchCourse.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchCourse> useQuery$FetchCourse(
        Options$Query$FetchCourse options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$FetchCourse> useWatchQuery$FetchCourse(
        WatchOptions$Query$FetchCourse options) =>
    graphql_flutter.useWatchQuery(options);

class Query$FetchCourse$Widget
    extends graphql_flutter.Query<Query$FetchCourse> {
  Query$FetchCourse$Widget({
    widgets.Key? key,
    required Options$Query$FetchCourse options,
    required graphql_flutter.QueryBuilder<Query$FetchCourse> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$FetchCourse$node {
  Query$FetchCourse$node({
    required this.id,
    required this.$__typename,
  });

  factory Query$FetchCourse$node.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Course":
        return Query$FetchCourse$node$$Course.fromJson(json);

      case "Content":
        return Query$FetchCourse$node$$Content.fromJson(json);

      case "ContentEpisode":
        return Query$FetchCourse$node$$ContentEpisode.fromJson(json);

      case "ContentProgress":
        return Query$FetchCourse$node$$ContentProgress.fromJson(json);

      case "JournalRecord":
        return Query$FetchCourse$node$$JournalRecord.fromJson(json);

      case "Lesson":
        return Query$FetchCourse$node$$Lesson.fromJson(json);

      case "LessonAudio":
        return Query$FetchCourse$node$$LessonAudio.fromJson(json);

      case "Technique":
        return Query$FetchCourse$node$$Technique.fromJson(json);

      case "Unit":
        return Query$FetchCourse$node$$Unit.fromJson(json);

      case "User":
        return Query$FetchCourse$node$$User.fromJson(json);

      case "UserProgress":
        return Query$FetchCourse$node$$UserProgress.fromJson(json);

      default:
        final l$id = json['id'];
        final l$$__typename = json['__typename'];
        return Query$FetchCourse$node(
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
    if (!(other is Query$FetchCourse$node) ||
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

extension UtilityExtension$Query$FetchCourse$node on Query$FetchCourse$node {
  CopyWith$Query$FetchCourse$node<Query$FetchCourse$node> get copyWith =>
      CopyWith$Query$FetchCourse$node(
        this,
        (i) => i,
      );
  _T when<_T>({
    required _T Function(Query$FetchCourse$node$$Course) course,
    required _T Function(Query$FetchCourse$node$$Content) content,
    required _T Function(Query$FetchCourse$node$$ContentEpisode) contentEpisode,
    required _T Function(Query$FetchCourse$node$$ContentProgress)
        contentProgress,
    required _T Function(Query$FetchCourse$node$$JournalRecord) journalRecord,
    required _T Function(Query$FetchCourse$node$$Lesson) lesson,
    required _T Function(Query$FetchCourse$node$$LessonAudio) lessonAudio,
    required _T Function(Query$FetchCourse$node$$Technique) technique,
    required _T Function(Query$FetchCourse$node$$Unit) unit,
    required _T Function(Query$FetchCourse$node$$User) user,
    required _T Function(Query$FetchCourse$node$$UserProgress) userProgress,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Course":
        return course(this as Query$FetchCourse$node$$Course);

      case "Content":
        return content(this as Query$FetchCourse$node$$Content);

      case "ContentEpisode":
        return contentEpisode(this as Query$FetchCourse$node$$ContentEpisode);

      case "ContentProgress":
        return contentProgress(this as Query$FetchCourse$node$$ContentProgress);

      case "JournalRecord":
        return journalRecord(this as Query$FetchCourse$node$$JournalRecord);

      case "Lesson":
        return lesson(this as Query$FetchCourse$node$$Lesson);

      case "LessonAudio":
        return lessonAudio(this as Query$FetchCourse$node$$LessonAudio);

      case "Technique":
        return technique(this as Query$FetchCourse$node$$Technique);

      case "Unit":
        return unit(this as Query$FetchCourse$node$$Unit);

      case "User":
        return user(this as Query$FetchCourse$node$$User);

      case "UserProgress":
        return userProgress(this as Query$FetchCourse$node$$UserProgress);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$FetchCourse$node$$Course)? course,
    _T Function(Query$FetchCourse$node$$Content)? content,
    _T Function(Query$FetchCourse$node$$ContentEpisode)? contentEpisode,
    _T Function(Query$FetchCourse$node$$ContentProgress)? contentProgress,
    _T Function(Query$FetchCourse$node$$JournalRecord)? journalRecord,
    _T Function(Query$FetchCourse$node$$Lesson)? lesson,
    _T Function(Query$FetchCourse$node$$LessonAudio)? lessonAudio,
    _T Function(Query$FetchCourse$node$$Technique)? technique,
    _T Function(Query$FetchCourse$node$$Unit)? unit,
    _T Function(Query$FetchCourse$node$$User)? user,
    _T Function(Query$FetchCourse$node$$UserProgress)? userProgress,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Course":
        if (course != null) {
          return course(this as Query$FetchCourse$node$$Course);
        } else {
          return orElse();
        }

      case "Content":
        if (content != null) {
          return content(this as Query$FetchCourse$node$$Content);
        } else {
          return orElse();
        }

      case "ContentEpisode":
        if (contentEpisode != null) {
          return contentEpisode(this as Query$FetchCourse$node$$ContentEpisode);
        } else {
          return orElse();
        }

      case "ContentProgress":
        if (contentProgress != null) {
          return contentProgress(
              this as Query$FetchCourse$node$$ContentProgress);
        } else {
          return orElse();
        }

      case "JournalRecord":
        if (journalRecord != null) {
          return journalRecord(this as Query$FetchCourse$node$$JournalRecord);
        } else {
          return orElse();
        }

      case "Lesson":
        if (lesson != null) {
          return lesson(this as Query$FetchCourse$node$$Lesson);
        } else {
          return orElse();
        }

      case "LessonAudio":
        if (lessonAudio != null) {
          return lessonAudio(this as Query$FetchCourse$node$$LessonAudio);
        } else {
          return orElse();
        }

      case "Technique":
        if (technique != null) {
          return technique(this as Query$FetchCourse$node$$Technique);
        } else {
          return orElse();
        }

      case "Unit":
        if (unit != null) {
          return unit(this as Query$FetchCourse$node$$Unit);
        } else {
          return orElse();
        }

      case "User":
        if (user != null) {
          return user(this as Query$FetchCourse$node$$User);
        } else {
          return orElse();
        }

      case "UserProgress":
        if (userProgress != null) {
          return userProgress(this as Query$FetchCourse$node$$UserProgress);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$FetchCourse$node<TRes> {
  factory CopyWith$Query$FetchCourse$node(
    Query$FetchCourse$node instance,
    TRes Function(Query$FetchCourse$node) then,
  ) = _CopyWithImpl$Query$FetchCourse$node;

  factory CopyWith$Query$FetchCourse$node.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourse$node;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchCourse$node<TRes>
    implements CopyWith$Query$FetchCourse$node<TRes> {
  _CopyWithImpl$Query$FetchCourse$node(
    this._instance,
    this._then,
  );

  final Query$FetchCourse$node _instance;

  final TRes Function(Query$FetchCourse$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourse$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchCourse$node<TRes>
    implements CopyWith$Query$FetchCourse$node<TRes> {
  _CopyWithStubImpl$Query$FetchCourse$node(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchCourse$node$$Course
    implements Fragment$CourseFull, Fragment$Course, Query$FetchCourse$node {
  Query$FetchCourse$node$$Course({
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

  factory Query$FetchCourse$node$$Course.fromJson(Map<String, dynamic> json) {
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
    return Query$FetchCourse$node$$Course(
      id: (l$id as String),
      coverimage: (l$coverimage as String),
      title: (l$title as String),
      description: (l$description as String),
      color: (l$color as String),
      active: (l$active as bool),
      order: (l$order as int),
      isStarted: (l$isStarted as bool),
      $__typename: (l$$__typename as String),
      units: Query$FetchCourse$node$$Course$units.fromJson(
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

  final Query$FetchCourse$node$$Course$units units;

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
    if (!(other is Query$FetchCourse$node$$Course) ||
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

extension UtilityExtension$Query$FetchCourse$node$$Course
    on Query$FetchCourse$node$$Course {
  CopyWith$Query$FetchCourse$node$$Course<Query$FetchCourse$node$$Course>
      get copyWith => CopyWith$Query$FetchCourse$node$$Course(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCourse$node$$Course<TRes> {
  factory CopyWith$Query$FetchCourse$node$$Course(
    Query$FetchCourse$node$$Course instance,
    TRes Function(Query$FetchCourse$node$$Course) then,
  ) = _CopyWithImpl$Query$FetchCourse$node$$Course;

  factory CopyWith$Query$FetchCourse$node$$Course.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourse$node$$Course;

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
    Query$FetchCourse$node$$Course$units? units,
  });
  CopyWith$Query$FetchCourse$node$$Course$units<TRes> get units;
}

class _CopyWithImpl$Query$FetchCourse$node$$Course<TRes>
    implements CopyWith$Query$FetchCourse$node$$Course<TRes> {
  _CopyWithImpl$Query$FetchCourse$node$$Course(
    this._instance,
    this._then,
  );

  final Query$FetchCourse$node$$Course _instance;

  final TRes Function(Query$FetchCourse$node$$Course) _then;

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
      _then(Query$FetchCourse$node$$Course(
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
            : (units as Query$FetchCourse$node$$Course$units),
      ));

  CopyWith$Query$FetchCourse$node$$Course$units<TRes> get units {
    final local$units = _instance.units;
    return CopyWith$Query$FetchCourse$node$$Course$units(
        local$units, (e) => call(units: e));
  }
}

class _CopyWithStubImpl$Query$FetchCourse$node$$Course<TRes>
    implements CopyWith$Query$FetchCourse$node$$Course<TRes> {
  _CopyWithStubImpl$Query$FetchCourse$node$$Course(this._res);

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
    Query$FetchCourse$node$$Course$units? units,
  }) =>
      _res;

  CopyWith$Query$FetchCourse$node$$Course$units<TRes> get units =>
      CopyWith$Query$FetchCourse$node$$Course$units.stub(_res);
}

class Query$FetchCourse$node$$Course$units
    implements Fragment$CourseFull$units {
  Query$FetchCourse$node$$Course$units({
    this.edges,
    this.$__typename = 'UnitConnection',
  });

  factory Query$FetchCourse$node$$Course$units.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$FetchCourse$node$$Course$units(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$FetchCourse$node$$Course$units$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FetchCourse$node$$Course$units$edges?>? edges;

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
    if (!(other is Query$FetchCourse$node$$Course$units) ||
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

extension UtilityExtension$Query$FetchCourse$node$$Course$units
    on Query$FetchCourse$node$$Course$units {
  CopyWith$Query$FetchCourse$node$$Course$units<
          Query$FetchCourse$node$$Course$units>
      get copyWith => CopyWith$Query$FetchCourse$node$$Course$units(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCourse$node$$Course$units<TRes> {
  factory CopyWith$Query$FetchCourse$node$$Course$units(
    Query$FetchCourse$node$$Course$units instance,
    TRes Function(Query$FetchCourse$node$$Course$units) then,
  ) = _CopyWithImpl$Query$FetchCourse$node$$Course$units;

  factory CopyWith$Query$FetchCourse$node$$Course$units.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourse$node$$Course$units;

  TRes call({
    List<Query$FetchCourse$node$$Course$units$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$FetchCourse$node$$Course$units$edges?>? Function(
              Iterable<
                  CopyWith$Query$FetchCourse$node$$Course$units$edges<
                      Query$FetchCourse$node$$Course$units$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$FetchCourse$node$$Course$units<TRes>
    implements CopyWith$Query$FetchCourse$node$$Course$units<TRes> {
  _CopyWithImpl$Query$FetchCourse$node$$Course$units(
    this._instance,
    this._then,
  );

  final Query$FetchCourse$node$$Course$units _instance;

  final TRes Function(Query$FetchCourse$node$$Course$units) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourse$node$$Course$units(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$FetchCourse$node$$Course$units$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$FetchCourse$node$$Course$units$edges?>? Function(
                  Iterable<
                      CopyWith$Query$FetchCourse$node$$Course$units$edges<
                          Query$FetchCourse$node$$Course$units$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$FetchCourse$node$$Course$units$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FetchCourse$node$$Course$units<TRes>
    implements CopyWith$Query$FetchCourse$node$$Course$units<TRes> {
  _CopyWithStubImpl$Query$FetchCourse$node$$Course$units(this._res);

  TRes _res;

  call({
    List<Query$FetchCourse$node$$Course$units$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$FetchCourse$node$$Course$units$edges
    implements Fragment$CourseFull$units$edges {
  Query$FetchCourse$node$$Course$units$edges({
    this.node,
    this.$__typename = 'UnitEdge',
  });

  factory Query$FetchCourse$node$$Course$units$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$FetchCourse$node$$Course$units$edges(
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
    if (!(other is Query$FetchCourse$node$$Course$units$edges) ||
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

extension UtilityExtension$Query$FetchCourse$node$$Course$units$edges
    on Query$FetchCourse$node$$Course$units$edges {
  CopyWith$Query$FetchCourse$node$$Course$units$edges<
          Query$FetchCourse$node$$Course$units$edges>
      get copyWith => CopyWith$Query$FetchCourse$node$$Course$units$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCourse$node$$Course$units$edges<TRes> {
  factory CopyWith$Query$FetchCourse$node$$Course$units$edges(
    Query$FetchCourse$node$$Course$units$edges instance,
    TRes Function(Query$FetchCourse$node$$Course$units$edges) then,
  ) = _CopyWithImpl$Query$FetchCourse$node$$Course$units$edges;

  factory CopyWith$Query$FetchCourse$node$$Course$units$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourse$node$$Course$units$edges;

  TRes call({
    Fragment$Unit? node,
    String? $__typename,
  });
  CopyWith$Fragment$Unit<TRes> get node;
}

class _CopyWithImpl$Query$FetchCourse$node$$Course$units$edges<TRes>
    implements CopyWith$Query$FetchCourse$node$$Course$units$edges<TRes> {
  _CopyWithImpl$Query$FetchCourse$node$$Course$units$edges(
    this._instance,
    this._then,
  );

  final Query$FetchCourse$node$$Course$units$edges _instance;

  final TRes Function(Query$FetchCourse$node$$Course$units$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourse$node$$Course$units$edges(
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

class _CopyWithStubImpl$Query$FetchCourse$node$$Course$units$edges<TRes>
    implements CopyWith$Query$FetchCourse$node$$Course$units$edges<TRes> {
  _CopyWithStubImpl$Query$FetchCourse$node$$Course$units$edges(this._res);

  TRes _res;

  call({
    Fragment$Unit? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Unit<TRes> get node => CopyWith$Fragment$Unit.stub(_res);
}

class Query$FetchCourse$node$$Content implements Query$FetchCourse$node {
  Query$FetchCourse$node$$Content({
    required this.id,
    this.$__typename = 'Content',
  });

  factory Query$FetchCourse$node$$Content.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchCourse$node$$Content(
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
    if (!(other is Query$FetchCourse$node$$Content) ||
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

extension UtilityExtension$Query$FetchCourse$node$$Content
    on Query$FetchCourse$node$$Content {
  CopyWith$Query$FetchCourse$node$$Content<Query$FetchCourse$node$$Content>
      get copyWith => CopyWith$Query$FetchCourse$node$$Content(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCourse$node$$Content<TRes> {
  factory CopyWith$Query$FetchCourse$node$$Content(
    Query$FetchCourse$node$$Content instance,
    TRes Function(Query$FetchCourse$node$$Content) then,
  ) = _CopyWithImpl$Query$FetchCourse$node$$Content;

  factory CopyWith$Query$FetchCourse$node$$Content.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourse$node$$Content;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchCourse$node$$Content<TRes>
    implements CopyWith$Query$FetchCourse$node$$Content<TRes> {
  _CopyWithImpl$Query$FetchCourse$node$$Content(
    this._instance,
    this._then,
  );

  final Query$FetchCourse$node$$Content _instance;

  final TRes Function(Query$FetchCourse$node$$Content) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourse$node$$Content(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchCourse$node$$Content<TRes>
    implements CopyWith$Query$FetchCourse$node$$Content<TRes> {
  _CopyWithStubImpl$Query$FetchCourse$node$$Content(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchCourse$node$$ContentEpisode implements Query$FetchCourse$node {
  Query$FetchCourse$node$$ContentEpisode({
    required this.id,
    this.$__typename = 'ContentEpisode',
  });

  factory Query$FetchCourse$node$$ContentEpisode.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchCourse$node$$ContentEpisode(
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
    if (!(other is Query$FetchCourse$node$$ContentEpisode) ||
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

extension UtilityExtension$Query$FetchCourse$node$$ContentEpisode
    on Query$FetchCourse$node$$ContentEpisode {
  CopyWith$Query$FetchCourse$node$$ContentEpisode<
          Query$FetchCourse$node$$ContentEpisode>
      get copyWith => CopyWith$Query$FetchCourse$node$$ContentEpisode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCourse$node$$ContentEpisode<TRes> {
  factory CopyWith$Query$FetchCourse$node$$ContentEpisode(
    Query$FetchCourse$node$$ContentEpisode instance,
    TRes Function(Query$FetchCourse$node$$ContentEpisode) then,
  ) = _CopyWithImpl$Query$FetchCourse$node$$ContentEpisode;

  factory CopyWith$Query$FetchCourse$node$$ContentEpisode.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourse$node$$ContentEpisode;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchCourse$node$$ContentEpisode<TRes>
    implements CopyWith$Query$FetchCourse$node$$ContentEpisode<TRes> {
  _CopyWithImpl$Query$FetchCourse$node$$ContentEpisode(
    this._instance,
    this._then,
  );

  final Query$FetchCourse$node$$ContentEpisode _instance;

  final TRes Function(Query$FetchCourse$node$$ContentEpisode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourse$node$$ContentEpisode(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchCourse$node$$ContentEpisode<TRes>
    implements CopyWith$Query$FetchCourse$node$$ContentEpisode<TRes> {
  _CopyWithStubImpl$Query$FetchCourse$node$$ContentEpisode(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchCourse$node$$ContentProgress
    implements Query$FetchCourse$node {
  Query$FetchCourse$node$$ContentProgress({
    required this.id,
    this.$__typename = 'ContentProgress',
  });

  factory Query$FetchCourse$node$$ContentProgress.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchCourse$node$$ContentProgress(
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
    if (!(other is Query$FetchCourse$node$$ContentProgress) ||
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

extension UtilityExtension$Query$FetchCourse$node$$ContentProgress
    on Query$FetchCourse$node$$ContentProgress {
  CopyWith$Query$FetchCourse$node$$ContentProgress<
          Query$FetchCourse$node$$ContentProgress>
      get copyWith => CopyWith$Query$FetchCourse$node$$ContentProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCourse$node$$ContentProgress<TRes> {
  factory CopyWith$Query$FetchCourse$node$$ContentProgress(
    Query$FetchCourse$node$$ContentProgress instance,
    TRes Function(Query$FetchCourse$node$$ContentProgress) then,
  ) = _CopyWithImpl$Query$FetchCourse$node$$ContentProgress;

  factory CopyWith$Query$FetchCourse$node$$ContentProgress.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourse$node$$ContentProgress;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchCourse$node$$ContentProgress<TRes>
    implements CopyWith$Query$FetchCourse$node$$ContentProgress<TRes> {
  _CopyWithImpl$Query$FetchCourse$node$$ContentProgress(
    this._instance,
    this._then,
  );

  final Query$FetchCourse$node$$ContentProgress _instance;

  final TRes Function(Query$FetchCourse$node$$ContentProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourse$node$$ContentProgress(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchCourse$node$$ContentProgress<TRes>
    implements CopyWith$Query$FetchCourse$node$$ContentProgress<TRes> {
  _CopyWithStubImpl$Query$FetchCourse$node$$ContentProgress(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchCourse$node$$JournalRecord implements Query$FetchCourse$node {
  Query$FetchCourse$node$$JournalRecord({
    required this.id,
    this.$__typename = 'JournalRecord',
  });

  factory Query$FetchCourse$node$$JournalRecord.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchCourse$node$$JournalRecord(
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
    if (!(other is Query$FetchCourse$node$$JournalRecord) ||
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

extension UtilityExtension$Query$FetchCourse$node$$JournalRecord
    on Query$FetchCourse$node$$JournalRecord {
  CopyWith$Query$FetchCourse$node$$JournalRecord<
          Query$FetchCourse$node$$JournalRecord>
      get copyWith => CopyWith$Query$FetchCourse$node$$JournalRecord(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCourse$node$$JournalRecord<TRes> {
  factory CopyWith$Query$FetchCourse$node$$JournalRecord(
    Query$FetchCourse$node$$JournalRecord instance,
    TRes Function(Query$FetchCourse$node$$JournalRecord) then,
  ) = _CopyWithImpl$Query$FetchCourse$node$$JournalRecord;

  factory CopyWith$Query$FetchCourse$node$$JournalRecord.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourse$node$$JournalRecord;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchCourse$node$$JournalRecord<TRes>
    implements CopyWith$Query$FetchCourse$node$$JournalRecord<TRes> {
  _CopyWithImpl$Query$FetchCourse$node$$JournalRecord(
    this._instance,
    this._then,
  );

  final Query$FetchCourse$node$$JournalRecord _instance;

  final TRes Function(Query$FetchCourse$node$$JournalRecord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourse$node$$JournalRecord(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchCourse$node$$JournalRecord<TRes>
    implements CopyWith$Query$FetchCourse$node$$JournalRecord<TRes> {
  _CopyWithStubImpl$Query$FetchCourse$node$$JournalRecord(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchCourse$node$$Lesson implements Query$FetchCourse$node {
  Query$FetchCourse$node$$Lesson({
    required this.id,
    this.$__typename = 'Lesson',
  });

  factory Query$FetchCourse$node$$Lesson.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchCourse$node$$Lesson(
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
    if (!(other is Query$FetchCourse$node$$Lesson) ||
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

extension UtilityExtension$Query$FetchCourse$node$$Lesson
    on Query$FetchCourse$node$$Lesson {
  CopyWith$Query$FetchCourse$node$$Lesson<Query$FetchCourse$node$$Lesson>
      get copyWith => CopyWith$Query$FetchCourse$node$$Lesson(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCourse$node$$Lesson<TRes> {
  factory CopyWith$Query$FetchCourse$node$$Lesson(
    Query$FetchCourse$node$$Lesson instance,
    TRes Function(Query$FetchCourse$node$$Lesson) then,
  ) = _CopyWithImpl$Query$FetchCourse$node$$Lesson;

  factory CopyWith$Query$FetchCourse$node$$Lesson.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourse$node$$Lesson;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchCourse$node$$Lesson<TRes>
    implements CopyWith$Query$FetchCourse$node$$Lesson<TRes> {
  _CopyWithImpl$Query$FetchCourse$node$$Lesson(
    this._instance,
    this._then,
  );

  final Query$FetchCourse$node$$Lesson _instance;

  final TRes Function(Query$FetchCourse$node$$Lesson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourse$node$$Lesson(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchCourse$node$$Lesson<TRes>
    implements CopyWith$Query$FetchCourse$node$$Lesson<TRes> {
  _CopyWithStubImpl$Query$FetchCourse$node$$Lesson(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchCourse$node$$LessonAudio implements Query$FetchCourse$node {
  Query$FetchCourse$node$$LessonAudio({
    required this.id,
    this.$__typename = 'LessonAudio',
  });

  factory Query$FetchCourse$node$$LessonAudio.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchCourse$node$$LessonAudio(
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
    if (!(other is Query$FetchCourse$node$$LessonAudio) ||
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

extension UtilityExtension$Query$FetchCourse$node$$LessonAudio
    on Query$FetchCourse$node$$LessonAudio {
  CopyWith$Query$FetchCourse$node$$LessonAudio<
          Query$FetchCourse$node$$LessonAudio>
      get copyWith => CopyWith$Query$FetchCourse$node$$LessonAudio(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCourse$node$$LessonAudio<TRes> {
  factory CopyWith$Query$FetchCourse$node$$LessonAudio(
    Query$FetchCourse$node$$LessonAudio instance,
    TRes Function(Query$FetchCourse$node$$LessonAudio) then,
  ) = _CopyWithImpl$Query$FetchCourse$node$$LessonAudio;

  factory CopyWith$Query$FetchCourse$node$$LessonAudio.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourse$node$$LessonAudio;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchCourse$node$$LessonAudio<TRes>
    implements CopyWith$Query$FetchCourse$node$$LessonAudio<TRes> {
  _CopyWithImpl$Query$FetchCourse$node$$LessonAudio(
    this._instance,
    this._then,
  );

  final Query$FetchCourse$node$$LessonAudio _instance;

  final TRes Function(Query$FetchCourse$node$$LessonAudio) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourse$node$$LessonAudio(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchCourse$node$$LessonAudio<TRes>
    implements CopyWith$Query$FetchCourse$node$$LessonAudio<TRes> {
  _CopyWithStubImpl$Query$FetchCourse$node$$LessonAudio(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchCourse$node$$Technique implements Query$FetchCourse$node {
  Query$FetchCourse$node$$Technique({
    required this.id,
    this.$__typename = 'Technique',
  });

  factory Query$FetchCourse$node$$Technique.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchCourse$node$$Technique(
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
    if (!(other is Query$FetchCourse$node$$Technique) ||
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

extension UtilityExtension$Query$FetchCourse$node$$Technique
    on Query$FetchCourse$node$$Technique {
  CopyWith$Query$FetchCourse$node$$Technique<Query$FetchCourse$node$$Technique>
      get copyWith => CopyWith$Query$FetchCourse$node$$Technique(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCourse$node$$Technique<TRes> {
  factory CopyWith$Query$FetchCourse$node$$Technique(
    Query$FetchCourse$node$$Technique instance,
    TRes Function(Query$FetchCourse$node$$Technique) then,
  ) = _CopyWithImpl$Query$FetchCourse$node$$Technique;

  factory CopyWith$Query$FetchCourse$node$$Technique.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourse$node$$Technique;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchCourse$node$$Technique<TRes>
    implements CopyWith$Query$FetchCourse$node$$Technique<TRes> {
  _CopyWithImpl$Query$FetchCourse$node$$Technique(
    this._instance,
    this._then,
  );

  final Query$FetchCourse$node$$Technique _instance;

  final TRes Function(Query$FetchCourse$node$$Technique) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourse$node$$Technique(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchCourse$node$$Technique<TRes>
    implements CopyWith$Query$FetchCourse$node$$Technique<TRes> {
  _CopyWithStubImpl$Query$FetchCourse$node$$Technique(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchCourse$node$$Unit implements Query$FetchCourse$node {
  Query$FetchCourse$node$$Unit({
    required this.id,
    this.$__typename = 'Unit',
  });

  factory Query$FetchCourse$node$$Unit.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchCourse$node$$Unit(
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
    if (!(other is Query$FetchCourse$node$$Unit) ||
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

extension UtilityExtension$Query$FetchCourse$node$$Unit
    on Query$FetchCourse$node$$Unit {
  CopyWith$Query$FetchCourse$node$$Unit<Query$FetchCourse$node$$Unit>
      get copyWith => CopyWith$Query$FetchCourse$node$$Unit(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCourse$node$$Unit<TRes> {
  factory CopyWith$Query$FetchCourse$node$$Unit(
    Query$FetchCourse$node$$Unit instance,
    TRes Function(Query$FetchCourse$node$$Unit) then,
  ) = _CopyWithImpl$Query$FetchCourse$node$$Unit;

  factory CopyWith$Query$FetchCourse$node$$Unit.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourse$node$$Unit;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchCourse$node$$Unit<TRes>
    implements CopyWith$Query$FetchCourse$node$$Unit<TRes> {
  _CopyWithImpl$Query$FetchCourse$node$$Unit(
    this._instance,
    this._then,
  );

  final Query$FetchCourse$node$$Unit _instance;

  final TRes Function(Query$FetchCourse$node$$Unit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourse$node$$Unit(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchCourse$node$$Unit<TRes>
    implements CopyWith$Query$FetchCourse$node$$Unit<TRes> {
  _CopyWithStubImpl$Query$FetchCourse$node$$Unit(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchCourse$node$$User implements Query$FetchCourse$node {
  Query$FetchCourse$node$$User({
    required this.id,
    this.$__typename = 'User',
  });

  factory Query$FetchCourse$node$$User.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchCourse$node$$User(
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
    if (!(other is Query$FetchCourse$node$$User) ||
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

extension UtilityExtension$Query$FetchCourse$node$$User
    on Query$FetchCourse$node$$User {
  CopyWith$Query$FetchCourse$node$$User<Query$FetchCourse$node$$User>
      get copyWith => CopyWith$Query$FetchCourse$node$$User(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCourse$node$$User<TRes> {
  factory CopyWith$Query$FetchCourse$node$$User(
    Query$FetchCourse$node$$User instance,
    TRes Function(Query$FetchCourse$node$$User) then,
  ) = _CopyWithImpl$Query$FetchCourse$node$$User;

  factory CopyWith$Query$FetchCourse$node$$User.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourse$node$$User;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchCourse$node$$User<TRes>
    implements CopyWith$Query$FetchCourse$node$$User<TRes> {
  _CopyWithImpl$Query$FetchCourse$node$$User(
    this._instance,
    this._then,
  );

  final Query$FetchCourse$node$$User _instance;

  final TRes Function(Query$FetchCourse$node$$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourse$node$$User(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchCourse$node$$User<TRes>
    implements CopyWith$Query$FetchCourse$node$$User<TRes> {
  _CopyWithStubImpl$Query$FetchCourse$node$$User(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchCourse$node$$UserProgress implements Query$FetchCourse$node {
  Query$FetchCourse$node$$UserProgress({
    required this.id,
    this.$__typename = 'UserProgress',
  });

  factory Query$FetchCourse$node$$UserProgress.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchCourse$node$$UserProgress(
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
    if (!(other is Query$FetchCourse$node$$UserProgress) ||
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

extension UtilityExtension$Query$FetchCourse$node$$UserProgress
    on Query$FetchCourse$node$$UserProgress {
  CopyWith$Query$FetchCourse$node$$UserProgress<
          Query$FetchCourse$node$$UserProgress>
      get copyWith => CopyWith$Query$FetchCourse$node$$UserProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCourse$node$$UserProgress<TRes> {
  factory CopyWith$Query$FetchCourse$node$$UserProgress(
    Query$FetchCourse$node$$UserProgress instance,
    TRes Function(Query$FetchCourse$node$$UserProgress) then,
  ) = _CopyWithImpl$Query$FetchCourse$node$$UserProgress;

  factory CopyWith$Query$FetchCourse$node$$UserProgress.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCourse$node$$UserProgress;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchCourse$node$$UserProgress<TRes>
    implements CopyWith$Query$FetchCourse$node$$UserProgress<TRes> {
  _CopyWithImpl$Query$FetchCourse$node$$UserProgress(
    this._instance,
    this._then,
  );

  final Query$FetchCourse$node$$UserProgress _instance;

  final TRes Function(Query$FetchCourse$node$$UserProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCourse$node$$UserProgress(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchCourse$node$$UserProgress<TRes>
    implements CopyWith$Query$FetchCourse$node$$UserProgress<TRes> {
  _CopyWithStubImpl$Query$FetchCourse$node$$UserProgress(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}
