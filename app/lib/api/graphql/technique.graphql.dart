// GENERATED FILE, DO NOT MODIFY
import 'course.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'unit.graphql.dart';

class Fragment$Technique {
  Fragment$Technique({
    required this.id,
    required this.coverimage,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.order,
    this.$__typename = 'Technique',
  });

  factory Fragment$Technique.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$coverimage = json['coverimage'];
    final l$title = json['title'];
    final l$subtitle = json['subtitle'];
    final l$description = json['description'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Fragment$Technique(
      id: (l$id as String),
      coverimage: (l$coverimage as String),
      title: (l$title as String),
      subtitle: (l$subtitle as String),
      description: (l$description as String),
      order: (l$order as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String coverimage;

  final String title;

  final String subtitle;

  final String description;

  final int order;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$coverimage = coverimage;
    _resultData['coverimage'] = l$coverimage;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$subtitle = subtitle;
    _resultData['subtitle'] = l$subtitle;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$coverimage = coverimage;
    final l$title = title;
    final l$subtitle = subtitle;
    final l$description = description;
    final l$order = order;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$coverimage,
      l$title,
      l$subtitle,
      l$description,
      l$order,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Technique) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$Technique on Fragment$Technique {
  CopyWith$Fragment$Technique<Fragment$Technique> get copyWith =>
      CopyWith$Fragment$Technique(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Technique<TRes> {
  factory CopyWith$Fragment$Technique(
    Fragment$Technique instance,
    TRes Function(Fragment$Technique) then,
  ) = _CopyWithImpl$Fragment$Technique;

  factory CopyWith$Fragment$Technique.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Technique;

  TRes call({
    String? id,
    String? coverimage,
    String? title,
    String? subtitle,
    String? description,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Technique<TRes>
    implements CopyWith$Fragment$Technique<TRes> {
  _CopyWithImpl$Fragment$Technique(
    this._instance,
    this._then,
  );

  final Fragment$Technique _instance;

  final TRes Function(Fragment$Technique) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? coverimage = _undefined,
    Object? title = _undefined,
    Object? subtitle = _undefined,
    Object? description = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Technique(
        id: id == _undefined || id == null ? _instance.id : (id as String),
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
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Technique<TRes>
    implements CopyWith$Fragment$Technique<TRes> {
  _CopyWithStubImpl$Fragment$Technique(this._res);

  TRes _res;

  call({
    String? id,
    String? coverimage,
    String? title,
    String? subtitle,
    String? description,
    int? order,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionTechnique = FragmentDefinitionNode(
  name: NameNode(value: 'Technique'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Technique'),
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
const documentNodeFragmentTechnique = DocumentNode(definitions: [
  fragmentDefinitionTechnique,
]);

extension ClientExtension$Fragment$Technique on graphql.GraphQLClient {
  void writeFragment$Technique({
    required Fragment$Technique data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Technique',
            document: documentNodeFragmentTechnique,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Technique? readFragment$Technique({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Technique',
          document: documentNodeFragmentTechnique,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Technique.fromJson(result);
  }
}

class Variables$Query$FetchTechnique {
  factory Variables$Query$FetchTechnique({
    required String unitId,
    required String techniqueId,
  }) =>
      Variables$Query$FetchTechnique._({
        r'unitId': unitId,
        r'techniqueId': techniqueId,
      });

  Variables$Query$FetchTechnique._(this._$data);

  factory Variables$Query$FetchTechnique.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$unitId = data['unitId'];
    result$data['unitId'] = (l$unitId as String);
    final l$techniqueId = data['techniqueId'];
    result$data['techniqueId'] = (l$techniqueId as String);
    return Variables$Query$FetchTechnique._(result$data);
  }

  Map<String, dynamic> _$data;

  String get unitId => (_$data['unitId'] as String);

  String get techniqueId => (_$data['techniqueId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$unitId = unitId;
    result$data['unitId'] = l$unitId;
    final l$techniqueId = techniqueId;
    result$data['techniqueId'] = l$techniqueId;
    return result$data;
  }

  CopyWith$Variables$Query$FetchTechnique<Variables$Query$FetchTechnique>
      get copyWith => CopyWith$Variables$Query$FetchTechnique(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FetchTechnique) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$unitId = unitId;
    final lOther$unitId = other.unitId;
    if (l$unitId != lOther$unitId) {
      return false;
    }
    final l$techniqueId = techniqueId;
    final lOther$techniqueId = other.techniqueId;
    if (l$techniqueId != lOther$techniqueId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$unitId = unitId;
    final l$techniqueId = techniqueId;
    return Object.hashAll([
      l$unitId,
      l$techniqueId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$FetchTechnique<TRes> {
  factory CopyWith$Variables$Query$FetchTechnique(
    Variables$Query$FetchTechnique instance,
    TRes Function(Variables$Query$FetchTechnique) then,
  ) = _CopyWithImpl$Variables$Query$FetchTechnique;

  factory CopyWith$Variables$Query$FetchTechnique.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FetchTechnique;

  TRes call({
    String? unitId,
    String? techniqueId,
  });
}

class _CopyWithImpl$Variables$Query$FetchTechnique<TRes>
    implements CopyWith$Variables$Query$FetchTechnique<TRes> {
  _CopyWithImpl$Variables$Query$FetchTechnique(
    this._instance,
    this._then,
  );

  final Variables$Query$FetchTechnique _instance;

  final TRes Function(Variables$Query$FetchTechnique) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? unitId = _undefined,
    Object? techniqueId = _undefined,
  }) =>
      _then(Variables$Query$FetchTechnique._({
        ..._instance._$data,
        if (unitId != _undefined && unitId != null)
          'unitId': (unitId as String),
        if (techniqueId != _undefined && techniqueId != null)
          'techniqueId': (techniqueId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$FetchTechnique<TRes>
    implements CopyWith$Variables$Query$FetchTechnique<TRes> {
  _CopyWithStubImpl$Variables$Query$FetchTechnique(this._res);

  TRes _res;

  call({
    String? unitId,
    String? techniqueId,
  }) =>
      _res;
}

class Query$FetchTechnique {
  Query$FetchTechnique({
    this.unit,
    this.technique,
    this.$__typename = 'Query',
  });

  factory Query$FetchTechnique.fromJson(Map<String, dynamic> json) {
    final l$unit = json['unit'];
    final l$technique = json['technique'];
    final l$$__typename = json['__typename'];
    return Query$FetchTechnique(
      unit: l$unit == null
          ? null
          : Query$FetchTechnique$unit.fromJson(
              (l$unit as Map<String, dynamic>)),
      technique: l$technique == null
          ? null
          : Query$FetchTechnique$technique.fromJson(
              (l$technique as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchTechnique$unit? unit;

  final Query$FetchTechnique$technique? technique;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$unit = unit;
    _resultData['unit'] = l$unit?.toJson();
    final l$technique = technique;
    _resultData['technique'] = l$technique?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$unit = unit;
    final l$technique = technique;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$unit,
      l$technique,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchTechnique) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$unit = unit;
    final lOther$unit = other.unit;
    if (l$unit != lOther$unit) {
      return false;
    }
    final l$technique = technique;
    final lOther$technique = other.technique;
    if (l$technique != lOther$technique) {
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

extension UtilityExtension$Query$FetchTechnique on Query$FetchTechnique {
  CopyWith$Query$FetchTechnique<Query$FetchTechnique> get copyWith =>
      CopyWith$Query$FetchTechnique(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchTechnique<TRes> {
  factory CopyWith$Query$FetchTechnique(
    Query$FetchTechnique instance,
    TRes Function(Query$FetchTechnique) then,
  ) = _CopyWithImpl$Query$FetchTechnique;

  factory CopyWith$Query$FetchTechnique.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchTechnique;

  TRes call({
    Query$FetchTechnique$unit? unit,
    Query$FetchTechnique$technique? technique,
    String? $__typename,
  });
  CopyWith$Query$FetchTechnique$unit<TRes> get unit;
  CopyWith$Query$FetchTechnique$technique<TRes> get technique;
}

class _CopyWithImpl$Query$FetchTechnique<TRes>
    implements CopyWith$Query$FetchTechnique<TRes> {
  _CopyWithImpl$Query$FetchTechnique(
    this._instance,
    this._then,
  );

  final Query$FetchTechnique _instance;

  final TRes Function(Query$FetchTechnique) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? unit = _undefined,
    Object? technique = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchTechnique(
        unit: unit == _undefined
            ? _instance.unit
            : (unit as Query$FetchTechnique$unit?),
        technique: technique == _undefined
            ? _instance.technique
            : (technique as Query$FetchTechnique$technique?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FetchTechnique$unit<TRes> get unit {
    final local$unit = _instance.unit;
    return local$unit == null
        ? CopyWith$Query$FetchTechnique$unit.stub(_then(_instance))
        : CopyWith$Query$FetchTechnique$unit(local$unit, (e) => call(unit: e));
  }

  CopyWith$Query$FetchTechnique$technique<TRes> get technique {
    final local$technique = _instance.technique;
    return local$technique == null
        ? CopyWith$Query$FetchTechnique$technique.stub(_then(_instance))
        : CopyWith$Query$FetchTechnique$technique(
            local$technique, (e) => call(technique: e));
  }
}

class _CopyWithStubImpl$Query$FetchTechnique<TRes>
    implements CopyWith$Query$FetchTechnique<TRes> {
  _CopyWithStubImpl$Query$FetchTechnique(this._res);

  TRes _res;

  call({
    Query$FetchTechnique$unit? unit,
    Query$FetchTechnique$technique? technique,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FetchTechnique$unit<TRes> get unit =>
      CopyWith$Query$FetchTechnique$unit.stub(_res);

  CopyWith$Query$FetchTechnique$technique<TRes> get technique =>
      CopyWith$Query$FetchTechnique$technique.stub(_res);
}

const documentNodeQueryFetchTechnique = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchTechnique'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'unitId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'techniqueId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'node'),
        alias: NameNode(value: 'unit'),
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
        name: NameNode(value: 'node'),
        alias: NameNode(value: 'technique'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'techniqueId')),
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
              name: NameNode(value: 'Technique'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Technique'),
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
  fragmentDefinitionUnit,
  fragmentDefinitionCourse,
  fragmentDefinitionTechnique,
]);
Query$FetchTechnique _parserFn$Query$FetchTechnique(
        Map<String, dynamic> data) =>
    Query$FetchTechnique.fromJson(data);
typedef OnQueryComplete$Query$FetchTechnique = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FetchTechnique?,
);

class Options$Query$FetchTechnique
    extends graphql.QueryOptions<Query$FetchTechnique> {
  Options$Query$FetchTechnique({
    String? operationName,
    required Variables$Query$FetchTechnique variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchTechnique? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FetchTechnique? onComplete,
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
                    data == null ? null : _parserFn$Query$FetchTechnique(data),
                  ),
          onError: onError,
          document: documentNodeQueryFetchTechnique,
          parserFn: _parserFn$Query$FetchTechnique,
        );

  final OnQueryComplete$Query$FetchTechnique? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FetchTechnique
    extends graphql.WatchQueryOptions<Query$FetchTechnique> {
  WatchOptions$Query$FetchTechnique({
    String? operationName,
    required Variables$Query$FetchTechnique variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchTechnique? typedOptimisticResult,
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
          document: documentNodeQueryFetchTechnique,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchTechnique,
        );
}

class FetchMoreOptions$Query$FetchTechnique extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchTechnique({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$FetchTechnique variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryFetchTechnique,
        );
}

extension ClientExtension$Query$FetchTechnique on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchTechnique>> query$FetchTechnique(
          Options$Query$FetchTechnique options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$FetchTechnique> watchQuery$FetchTechnique(
          WatchOptions$Query$FetchTechnique options) =>
      this.watchQuery(options);
  void writeQuery$FetchTechnique({
    required Query$FetchTechnique data,
    required Variables$Query$FetchTechnique variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFetchTechnique),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchTechnique? readQuery$FetchTechnique({
    required Variables$Query$FetchTechnique variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFetchTechnique),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchTechnique.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchTechnique> useQuery$FetchTechnique(
        Options$Query$FetchTechnique options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$FetchTechnique> useWatchQuery$FetchTechnique(
        WatchOptions$Query$FetchTechnique options) =>
    graphql_flutter.useWatchQuery(options);

class Query$FetchTechnique$Widget
    extends graphql_flutter.Query<Query$FetchTechnique> {
  Query$FetchTechnique$Widget({
    widgets.Key? key,
    required Options$Query$FetchTechnique options,
    required graphql_flutter.QueryBuilder<Query$FetchTechnique> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$FetchTechnique$unit {
  Query$FetchTechnique$unit({
    required this.id,
    required this.$__typename,
  });

  factory Query$FetchTechnique$unit.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Unit":
        return Query$FetchTechnique$unit$$Unit.fromJson(json);

      case "Content":
        return Query$FetchTechnique$unit$$Content.fromJson(json);

      case "ContentEpisode":
        return Query$FetchTechnique$unit$$ContentEpisode.fromJson(json);

      case "ContentProgress":
        return Query$FetchTechnique$unit$$ContentProgress.fromJson(json);

      case "Course":
        return Query$FetchTechnique$unit$$Course.fromJson(json);

      case "JournalRecord":
        return Query$FetchTechnique$unit$$JournalRecord.fromJson(json);

      case "Lesson":
        return Query$FetchTechnique$unit$$Lesson.fromJson(json);

      case "LessonAudio":
        return Query$FetchTechnique$unit$$LessonAudio.fromJson(json);

      case "Technique":
        return Query$FetchTechnique$unit$$Technique.fromJson(json);

      case "User":
        return Query$FetchTechnique$unit$$User.fromJson(json);

      case "UserProgress":
        return Query$FetchTechnique$unit$$UserProgress.fromJson(json);

      default:
        final l$id = json['id'];
        final l$$__typename = json['__typename'];
        return Query$FetchTechnique$unit(
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
    if (!(other is Query$FetchTechnique$unit) ||
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

extension UtilityExtension$Query$FetchTechnique$unit
    on Query$FetchTechnique$unit {
  CopyWith$Query$FetchTechnique$unit<Query$FetchTechnique$unit> get copyWith =>
      CopyWith$Query$FetchTechnique$unit(
        this,
        (i) => i,
      );
  _T when<_T>({
    required _T Function(Query$FetchTechnique$unit$$Unit) unit,
    required _T Function(Query$FetchTechnique$unit$$Content) content,
    required _T Function(Query$FetchTechnique$unit$$ContentEpisode)
        contentEpisode,
    required _T Function(Query$FetchTechnique$unit$$ContentProgress)
        contentProgress,
    required _T Function(Query$FetchTechnique$unit$$Course) course,
    required _T Function(Query$FetchTechnique$unit$$JournalRecord)
        journalRecord,
    required _T Function(Query$FetchTechnique$unit$$Lesson) lesson,
    required _T Function(Query$FetchTechnique$unit$$LessonAudio) lessonAudio,
    required _T Function(Query$FetchTechnique$unit$$Technique) technique,
    required _T Function(Query$FetchTechnique$unit$$User) user,
    required _T Function(Query$FetchTechnique$unit$$UserProgress) userProgress,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Unit":
        return unit(this as Query$FetchTechnique$unit$$Unit);

      case "Content":
        return content(this as Query$FetchTechnique$unit$$Content);

      case "ContentEpisode":
        return contentEpisode(
            this as Query$FetchTechnique$unit$$ContentEpisode);

      case "ContentProgress":
        return contentProgress(
            this as Query$FetchTechnique$unit$$ContentProgress);

      case "Course":
        return course(this as Query$FetchTechnique$unit$$Course);

      case "JournalRecord":
        return journalRecord(this as Query$FetchTechnique$unit$$JournalRecord);

      case "Lesson":
        return lesson(this as Query$FetchTechnique$unit$$Lesson);

      case "LessonAudio":
        return lessonAudio(this as Query$FetchTechnique$unit$$LessonAudio);

      case "Technique":
        return technique(this as Query$FetchTechnique$unit$$Technique);

      case "User":
        return user(this as Query$FetchTechnique$unit$$User);

      case "UserProgress":
        return userProgress(this as Query$FetchTechnique$unit$$UserProgress);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$FetchTechnique$unit$$Unit)? unit,
    _T Function(Query$FetchTechnique$unit$$Content)? content,
    _T Function(Query$FetchTechnique$unit$$ContentEpisode)? contentEpisode,
    _T Function(Query$FetchTechnique$unit$$ContentProgress)? contentProgress,
    _T Function(Query$FetchTechnique$unit$$Course)? course,
    _T Function(Query$FetchTechnique$unit$$JournalRecord)? journalRecord,
    _T Function(Query$FetchTechnique$unit$$Lesson)? lesson,
    _T Function(Query$FetchTechnique$unit$$LessonAudio)? lessonAudio,
    _T Function(Query$FetchTechnique$unit$$Technique)? technique,
    _T Function(Query$FetchTechnique$unit$$User)? user,
    _T Function(Query$FetchTechnique$unit$$UserProgress)? userProgress,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Unit":
        if (unit != null) {
          return unit(this as Query$FetchTechnique$unit$$Unit);
        } else {
          return orElse();
        }

      case "Content":
        if (content != null) {
          return content(this as Query$FetchTechnique$unit$$Content);
        } else {
          return orElse();
        }

      case "ContentEpisode":
        if (contentEpisode != null) {
          return contentEpisode(
              this as Query$FetchTechnique$unit$$ContentEpisode);
        } else {
          return orElse();
        }

      case "ContentProgress":
        if (contentProgress != null) {
          return contentProgress(
              this as Query$FetchTechnique$unit$$ContentProgress);
        } else {
          return orElse();
        }

      case "Course":
        if (course != null) {
          return course(this as Query$FetchTechnique$unit$$Course);
        } else {
          return orElse();
        }

      case "JournalRecord":
        if (journalRecord != null) {
          return journalRecord(
              this as Query$FetchTechnique$unit$$JournalRecord);
        } else {
          return orElse();
        }

      case "Lesson":
        if (lesson != null) {
          return lesson(this as Query$FetchTechnique$unit$$Lesson);
        } else {
          return orElse();
        }

      case "LessonAudio":
        if (lessonAudio != null) {
          return lessonAudio(this as Query$FetchTechnique$unit$$LessonAudio);
        } else {
          return orElse();
        }

      case "Technique":
        if (technique != null) {
          return technique(this as Query$FetchTechnique$unit$$Technique);
        } else {
          return orElse();
        }

      case "User":
        if (user != null) {
          return user(this as Query$FetchTechnique$unit$$User);
        } else {
          return orElse();
        }

      case "UserProgress":
        if (userProgress != null) {
          return userProgress(this as Query$FetchTechnique$unit$$UserProgress);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$FetchTechnique$unit<TRes> {
  factory CopyWith$Query$FetchTechnique$unit(
    Query$FetchTechnique$unit instance,
    TRes Function(Query$FetchTechnique$unit) then,
  ) = _CopyWithImpl$Query$FetchTechnique$unit;

  factory CopyWith$Query$FetchTechnique$unit.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchTechnique$unit;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchTechnique$unit<TRes>
    implements CopyWith$Query$FetchTechnique$unit<TRes> {
  _CopyWithImpl$Query$FetchTechnique$unit(
    this._instance,
    this._then,
  );

  final Query$FetchTechnique$unit _instance;

  final TRes Function(Query$FetchTechnique$unit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchTechnique$unit(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchTechnique$unit<TRes>
    implements CopyWith$Query$FetchTechnique$unit<TRes> {
  _CopyWithStubImpl$Query$FetchTechnique$unit(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchTechnique$unit$$Unit
    implements Fragment$Unit, Query$FetchTechnique$unit {
  Query$FetchTechnique$unit$$Unit({
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

  factory Query$FetchTechnique$unit$$Unit.fromJson(Map<String, dynamic> json) {
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
    return Query$FetchTechnique$unit$$Unit(
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
    if (!(other is Query$FetchTechnique$unit$$Unit) ||
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
    return true;
  }
}

extension UtilityExtension$Query$FetchTechnique$unit$$Unit
    on Query$FetchTechnique$unit$$Unit {
  CopyWith$Query$FetchTechnique$unit$$Unit<Query$FetchTechnique$unit$$Unit>
      get copyWith => CopyWith$Query$FetchTechnique$unit$$Unit(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchTechnique$unit$$Unit<TRes> {
  factory CopyWith$Query$FetchTechnique$unit$$Unit(
    Query$FetchTechnique$unit$$Unit instance,
    TRes Function(Query$FetchTechnique$unit$$Unit) then,
  ) = _CopyWithImpl$Query$FetchTechnique$unit$$Unit;

  factory CopyWith$Query$FetchTechnique$unit$$Unit.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchTechnique$unit$$Unit;

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

class _CopyWithImpl$Query$FetchTechnique$unit$$Unit<TRes>
    implements CopyWith$Query$FetchTechnique$unit$$Unit<TRes> {
  _CopyWithImpl$Query$FetchTechnique$unit$$Unit(
    this._instance,
    this._then,
  );

  final Query$FetchTechnique$unit$$Unit _instance;

  final TRes Function(Query$FetchTechnique$unit$$Unit) _then;

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
      _then(Query$FetchTechnique$unit$$Unit(
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

class _CopyWithStubImpl$Query$FetchTechnique$unit$$Unit<TRes>
    implements CopyWith$Query$FetchTechnique$unit$$Unit<TRes> {
  _CopyWithStubImpl$Query$FetchTechnique$unit$$Unit(this._res);

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

class Query$FetchTechnique$unit$$Content implements Query$FetchTechnique$unit {
  Query$FetchTechnique$unit$$Content({
    required this.id,
    this.$__typename = 'Content',
  });

  factory Query$FetchTechnique$unit$$Content.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchTechnique$unit$$Content(
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
    if (!(other is Query$FetchTechnique$unit$$Content) ||
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

extension UtilityExtension$Query$FetchTechnique$unit$$Content
    on Query$FetchTechnique$unit$$Content {
  CopyWith$Query$FetchTechnique$unit$$Content<
          Query$FetchTechnique$unit$$Content>
      get copyWith => CopyWith$Query$FetchTechnique$unit$$Content(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchTechnique$unit$$Content<TRes> {
  factory CopyWith$Query$FetchTechnique$unit$$Content(
    Query$FetchTechnique$unit$$Content instance,
    TRes Function(Query$FetchTechnique$unit$$Content) then,
  ) = _CopyWithImpl$Query$FetchTechnique$unit$$Content;

  factory CopyWith$Query$FetchTechnique$unit$$Content.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchTechnique$unit$$Content;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchTechnique$unit$$Content<TRes>
    implements CopyWith$Query$FetchTechnique$unit$$Content<TRes> {
  _CopyWithImpl$Query$FetchTechnique$unit$$Content(
    this._instance,
    this._then,
  );

  final Query$FetchTechnique$unit$$Content _instance;

  final TRes Function(Query$FetchTechnique$unit$$Content) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchTechnique$unit$$Content(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchTechnique$unit$$Content<TRes>
    implements CopyWith$Query$FetchTechnique$unit$$Content<TRes> {
  _CopyWithStubImpl$Query$FetchTechnique$unit$$Content(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchTechnique$unit$$ContentEpisode
    implements Query$FetchTechnique$unit {
  Query$FetchTechnique$unit$$ContentEpisode({
    required this.id,
    this.$__typename = 'ContentEpisode',
  });

  factory Query$FetchTechnique$unit$$ContentEpisode.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchTechnique$unit$$ContentEpisode(
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
    if (!(other is Query$FetchTechnique$unit$$ContentEpisode) ||
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

extension UtilityExtension$Query$FetchTechnique$unit$$ContentEpisode
    on Query$FetchTechnique$unit$$ContentEpisode {
  CopyWith$Query$FetchTechnique$unit$$ContentEpisode<
          Query$FetchTechnique$unit$$ContentEpisode>
      get copyWith => CopyWith$Query$FetchTechnique$unit$$ContentEpisode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchTechnique$unit$$ContentEpisode<TRes> {
  factory CopyWith$Query$FetchTechnique$unit$$ContentEpisode(
    Query$FetchTechnique$unit$$ContentEpisode instance,
    TRes Function(Query$FetchTechnique$unit$$ContentEpisode) then,
  ) = _CopyWithImpl$Query$FetchTechnique$unit$$ContentEpisode;

  factory CopyWith$Query$FetchTechnique$unit$$ContentEpisode.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchTechnique$unit$$ContentEpisode;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchTechnique$unit$$ContentEpisode<TRes>
    implements CopyWith$Query$FetchTechnique$unit$$ContentEpisode<TRes> {
  _CopyWithImpl$Query$FetchTechnique$unit$$ContentEpisode(
    this._instance,
    this._then,
  );

  final Query$FetchTechnique$unit$$ContentEpisode _instance;

  final TRes Function(Query$FetchTechnique$unit$$ContentEpisode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchTechnique$unit$$ContentEpisode(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchTechnique$unit$$ContentEpisode<TRes>
    implements CopyWith$Query$FetchTechnique$unit$$ContentEpisode<TRes> {
  _CopyWithStubImpl$Query$FetchTechnique$unit$$ContentEpisode(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchTechnique$unit$$ContentProgress
    implements Query$FetchTechnique$unit {
  Query$FetchTechnique$unit$$ContentProgress({
    required this.id,
    this.$__typename = 'ContentProgress',
  });

  factory Query$FetchTechnique$unit$$ContentProgress.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchTechnique$unit$$ContentProgress(
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
    if (!(other is Query$FetchTechnique$unit$$ContentProgress) ||
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

extension UtilityExtension$Query$FetchTechnique$unit$$ContentProgress
    on Query$FetchTechnique$unit$$ContentProgress {
  CopyWith$Query$FetchTechnique$unit$$ContentProgress<
          Query$FetchTechnique$unit$$ContentProgress>
      get copyWith => CopyWith$Query$FetchTechnique$unit$$ContentProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchTechnique$unit$$ContentProgress<TRes> {
  factory CopyWith$Query$FetchTechnique$unit$$ContentProgress(
    Query$FetchTechnique$unit$$ContentProgress instance,
    TRes Function(Query$FetchTechnique$unit$$ContentProgress) then,
  ) = _CopyWithImpl$Query$FetchTechnique$unit$$ContentProgress;

  factory CopyWith$Query$FetchTechnique$unit$$ContentProgress.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchTechnique$unit$$ContentProgress;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchTechnique$unit$$ContentProgress<TRes>
    implements CopyWith$Query$FetchTechnique$unit$$ContentProgress<TRes> {
  _CopyWithImpl$Query$FetchTechnique$unit$$ContentProgress(
    this._instance,
    this._then,
  );

  final Query$FetchTechnique$unit$$ContentProgress _instance;

  final TRes Function(Query$FetchTechnique$unit$$ContentProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchTechnique$unit$$ContentProgress(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchTechnique$unit$$ContentProgress<TRes>
    implements CopyWith$Query$FetchTechnique$unit$$ContentProgress<TRes> {
  _CopyWithStubImpl$Query$FetchTechnique$unit$$ContentProgress(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchTechnique$unit$$Course implements Query$FetchTechnique$unit {
  Query$FetchTechnique$unit$$Course({
    required this.id,
    this.$__typename = 'Course',
  });

  factory Query$FetchTechnique$unit$$Course.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchTechnique$unit$$Course(
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
    if (!(other is Query$FetchTechnique$unit$$Course) ||
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

extension UtilityExtension$Query$FetchTechnique$unit$$Course
    on Query$FetchTechnique$unit$$Course {
  CopyWith$Query$FetchTechnique$unit$$Course<Query$FetchTechnique$unit$$Course>
      get copyWith => CopyWith$Query$FetchTechnique$unit$$Course(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchTechnique$unit$$Course<TRes> {
  factory CopyWith$Query$FetchTechnique$unit$$Course(
    Query$FetchTechnique$unit$$Course instance,
    TRes Function(Query$FetchTechnique$unit$$Course) then,
  ) = _CopyWithImpl$Query$FetchTechnique$unit$$Course;

  factory CopyWith$Query$FetchTechnique$unit$$Course.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchTechnique$unit$$Course;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchTechnique$unit$$Course<TRes>
    implements CopyWith$Query$FetchTechnique$unit$$Course<TRes> {
  _CopyWithImpl$Query$FetchTechnique$unit$$Course(
    this._instance,
    this._then,
  );

  final Query$FetchTechnique$unit$$Course _instance;

  final TRes Function(Query$FetchTechnique$unit$$Course) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchTechnique$unit$$Course(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchTechnique$unit$$Course<TRes>
    implements CopyWith$Query$FetchTechnique$unit$$Course<TRes> {
  _CopyWithStubImpl$Query$FetchTechnique$unit$$Course(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchTechnique$unit$$JournalRecord
    implements Query$FetchTechnique$unit {
  Query$FetchTechnique$unit$$JournalRecord({
    required this.id,
    this.$__typename = 'JournalRecord',
  });

  factory Query$FetchTechnique$unit$$JournalRecord.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchTechnique$unit$$JournalRecord(
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
    if (!(other is Query$FetchTechnique$unit$$JournalRecord) ||
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

extension UtilityExtension$Query$FetchTechnique$unit$$JournalRecord
    on Query$FetchTechnique$unit$$JournalRecord {
  CopyWith$Query$FetchTechnique$unit$$JournalRecord<
          Query$FetchTechnique$unit$$JournalRecord>
      get copyWith => CopyWith$Query$FetchTechnique$unit$$JournalRecord(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchTechnique$unit$$JournalRecord<TRes> {
  factory CopyWith$Query$FetchTechnique$unit$$JournalRecord(
    Query$FetchTechnique$unit$$JournalRecord instance,
    TRes Function(Query$FetchTechnique$unit$$JournalRecord) then,
  ) = _CopyWithImpl$Query$FetchTechnique$unit$$JournalRecord;

  factory CopyWith$Query$FetchTechnique$unit$$JournalRecord.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchTechnique$unit$$JournalRecord;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchTechnique$unit$$JournalRecord<TRes>
    implements CopyWith$Query$FetchTechnique$unit$$JournalRecord<TRes> {
  _CopyWithImpl$Query$FetchTechnique$unit$$JournalRecord(
    this._instance,
    this._then,
  );

  final Query$FetchTechnique$unit$$JournalRecord _instance;

  final TRes Function(Query$FetchTechnique$unit$$JournalRecord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchTechnique$unit$$JournalRecord(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchTechnique$unit$$JournalRecord<TRes>
    implements CopyWith$Query$FetchTechnique$unit$$JournalRecord<TRes> {
  _CopyWithStubImpl$Query$FetchTechnique$unit$$JournalRecord(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchTechnique$unit$$Lesson implements Query$FetchTechnique$unit {
  Query$FetchTechnique$unit$$Lesson({
    required this.id,
    this.$__typename = 'Lesson',
  });

  factory Query$FetchTechnique$unit$$Lesson.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchTechnique$unit$$Lesson(
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
    if (!(other is Query$FetchTechnique$unit$$Lesson) ||
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

extension UtilityExtension$Query$FetchTechnique$unit$$Lesson
    on Query$FetchTechnique$unit$$Lesson {
  CopyWith$Query$FetchTechnique$unit$$Lesson<Query$FetchTechnique$unit$$Lesson>
      get copyWith => CopyWith$Query$FetchTechnique$unit$$Lesson(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchTechnique$unit$$Lesson<TRes> {
  factory CopyWith$Query$FetchTechnique$unit$$Lesson(
    Query$FetchTechnique$unit$$Lesson instance,
    TRes Function(Query$FetchTechnique$unit$$Lesson) then,
  ) = _CopyWithImpl$Query$FetchTechnique$unit$$Lesson;

  factory CopyWith$Query$FetchTechnique$unit$$Lesson.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchTechnique$unit$$Lesson;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchTechnique$unit$$Lesson<TRes>
    implements CopyWith$Query$FetchTechnique$unit$$Lesson<TRes> {
  _CopyWithImpl$Query$FetchTechnique$unit$$Lesson(
    this._instance,
    this._then,
  );

  final Query$FetchTechnique$unit$$Lesson _instance;

  final TRes Function(Query$FetchTechnique$unit$$Lesson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchTechnique$unit$$Lesson(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchTechnique$unit$$Lesson<TRes>
    implements CopyWith$Query$FetchTechnique$unit$$Lesson<TRes> {
  _CopyWithStubImpl$Query$FetchTechnique$unit$$Lesson(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchTechnique$unit$$LessonAudio
    implements Query$FetchTechnique$unit {
  Query$FetchTechnique$unit$$LessonAudio({
    required this.id,
    this.$__typename = 'LessonAudio',
  });

  factory Query$FetchTechnique$unit$$LessonAudio.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchTechnique$unit$$LessonAudio(
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
    if (!(other is Query$FetchTechnique$unit$$LessonAudio) ||
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

extension UtilityExtension$Query$FetchTechnique$unit$$LessonAudio
    on Query$FetchTechnique$unit$$LessonAudio {
  CopyWith$Query$FetchTechnique$unit$$LessonAudio<
          Query$FetchTechnique$unit$$LessonAudio>
      get copyWith => CopyWith$Query$FetchTechnique$unit$$LessonAudio(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchTechnique$unit$$LessonAudio<TRes> {
  factory CopyWith$Query$FetchTechnique$unit$$LessonAudio(
    Query$FetchTechnique$unit$$LessonAudio instance,
    TRes Function(Query$FetchTechnique$unit$$LessonAudio) then,
  ) = _CopyWithImpl$Query$FetchTechnique$unit$$LessonAudio;

  factory CopyWith$Query$FetchTechnique$unit$$LessonAudio.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchTechnique$unit$$LessonAudio;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchTechnique$unit$$LessonAudio<TRes>
    implements CopyWith$Query$FetchTechnique$unit$$LessonAudio<TRes> {
  _CopyWithImpl$Query$FetchTechnique$unit$$LessonAudio(
    this._instance,
    this._then,
  );

  final Query$FetchTechnique$unit$$LessonAudio _instance;

  final TRes Function(Query$FetchTechnique$unit$$LessonAudio) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchTechnique$unit$$LessonAudio(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchTechnique$unit$$LessonAudio<TRes>
    implements CopyWith$Query$FetchTechnique$unit$$LessonAudio<TRes> {
  _CopyWithStubImpl$Query$FetchTechnique$unit$$LessonAudio(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchTechnique$unit$$Technique
    implements Query$FetchTechnique$unit {
  Query$FetchTechnique$unit$$Technique({
    required this.id,
    this.$__typename = 'Technique',
  });

  factory Query$FetchTechnique$unit$$Technique.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchTechnique$unit$$Technique(
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
    if (!(other is Query$FetchTechnique$unit$$Technique) ||
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

extension UtilityExtension$Query$FetchTechnique$unit$$Technique
    on Query$FetchTechnique$unit$$Technique {
  CopyWith$Query$FetchTechnique$unit$$Technique<
          Query$FetchTechnique$unit$$Technique>
      get copyWith => CopyWith$Query$FetchTechnique$unit$$Technique(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchTechnique$unit$$Technique<TRes> {
  factory CopyWith$Query$FetchTechnique$unit$$Technique(
    Query$FetchTechnique$unit$$Technique instance,
    TRes Function(Query$FetchTechnique$unit$$Technique) then,
  ) = _CopyWithImpl$Query$FetchTechnique$unit$$Technique;

  factory CopyWith$Query$FetchTechnique$unit$$Technique.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchTechnique$unit$$Technique;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchTechnique$unit$$Technique<TRes>
    implements CopyWith$Query$FetchTechnique$unit$$Technique<TRes> {
  _CopyWithImpl$Query$FetchTechnique$unit$$Technique(
    this._instance,
    this._then,
  );

  final Query$FetchTechnique$unit$$Technique _instance;

  final TRes Function(Query$FetchTechnique$unit$$Technique) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchTechnique$unit$$Technique(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchTechnique$unit$$Technique<TRes>
    implements CopyWith$Query$FetchTechnique$unit$$Technique<TRes> {
  _CopyWithStubImpl$Query$FetchTechnique$unit$$Technique(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchTechnique$unit$$User implements Query$FetchTechnique$unit {
  Query$FetchTechnique$unit$$User({
    required this.id,
    this.$__typename = 'User',
  });

  factory Query$FetchTechnique$unit$$User.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchTechnique$unit$$User(
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
    if (!(other is Query$FetchTechnique$unit$$User) ||
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

extension UtilityExtension$Query$FetchTechnique$unit$$User
    on Query$FetchTechnique$unit$$User {
  CopyWith$Query$FetchTechnique$unit$$User<Query$FetchTechnique$unit$$User>
      get copyWith => CopyWith$Query$FetchTechnique$unit$$User(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchTechnique$unit$$User<TRes> {
  factory CopyWith$Query$FetchTechnique$unit$$User(
    Query$FetchTechnique$unit$$User instance,
    TRes Function(Query$FetchTechnique$unit$$User) then,
  ) = _CopyWithImpl$Query$FetchTechnique$unit$$User;

  factory CopyWith$Query$FetchTechnique$unit$$User.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchTechnique$unit$$User;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchTechnique$unit$$User<TRes>
    implements CopyWith$Query$FetchTechnique$unit$$User<TRes> {
  _CopyWithImpl$Query$FetchTechnique$unit$$User(
    this._instance,
    this._then,
  );

  final Query$FetchTechnique$unit$$User _instance;

  final TRes Function(Query$FetchTechnique$unit$$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchTechnique$unit$$User(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchTechnique$unit$$User<TRes>
    implements CopyWith$Query$FetchTechnique$unit$$User<TRes> {
  _CopyWithStubImpl$Query$FetchTechnique$unit$$User(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchTechnique$unit$$UserProgress
    implements Query$FetchTechnique$unit {
  Query$FetchTechnique$unit$$UserProgress({
    required this.id,
    this.$__typename = 'UserProgress',
  });

  factory Query$FetchTechnique$unit$$UserProgress.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchTechnique$unit$$UserProgress(
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
    if (!(other is Query$FetchTechnique$unit$$UserProgress) ||
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

extension UtilityExtension$Query$FetchTechnique$unit$$UserProgress
    on Query$FetchTechnique$unit$$UserProgress {
  CopyWith$Query$FetchTechnique$unit$$UserProgress<
          Query$FetchTechnique$unit$$UserProgress>
      get copyWith => CopyWith$Query$FetchTechnique$unit$$UserProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchTechnique$unit$$UserProgress<TRes> {
  factory CopyWith$Query$FetchTechnique$unit$$UserProgress(
    Query$FetchTechnique$unit$$UserProgress instance,
    TRes Function(Query$FetchTechnique$unit$$UserProgress) then,
  ) = _CopyWithImpl$Query$FetchTechnique$unit$$UserProgress;

  factory CopyWith$Query$FetchTechnique$unit$$UserProgress.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchTechnique$unit$$UserProgress;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchTechnique$unit$$UserProgress<TRes>
    implements CopyWith$Query$FetchTechnique$unit$$UserProgress<TRes> {
  _CopyWithImpl$Query$FetchTechnique$unit$$UserProgress(
    this._instance,
    this._then,
  );

  final Query$FetchTechnique$unit$$UserProgress _instance;

  final TRes Function(Query$FetchTechnique$unit$$UserProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchTechnique$unit$$UserProgress(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchTechnique$unit$$UserProgress<TRes>
    implements CopyWith$Query$FetchTechnique$unit$$UserProgress<TRes> {
  _CopyWithStubImpl$Query$FetchTechnique$unit$$UserProgress(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchTechnique$technique {
  Query$FetchTechnique$technique({
    required this.id,
    required this.$__typename,
  });

  factory Query$FetchTechnique$technique.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Technique":
        return Query$FetchTechnique$technique$$Technique.fromJson(json);

      case "Content":
        return Query$FetchTechnique$technique$$Content.fromJson(json);

      case "ContentEpisode":
        return Query$FetchTechnique$technique$$ContentEpisode.fromJson(json);

      case "ContentProgress":
        return Query$FetchTechnique$technique$$ContentProgress.fromJson(json);

      case "Course":
        return Query$FetchTechnique$technique$$Course.fromJson(json);

      case "JournalRecord":
        return Query$FetchTechnique$technique$$JournalRecord.fromJson(json);

      case "Lesson":
        return Query$FetchTechnique$technique$$Lesson.fromJson(json);

      case "LessonAudio":
        return Query$FetchTechnique$technique$$LessonAudio.fromJson(json);

      case "Unit":
        return Query$FetchTechnique$technique$$Unit.fromJson(json);

      case "User":
        return Query$FetchTechnique$technique$$User.fromJson(json);

      case "UserProgress":
        return Query$FetchTechnique$technique$$UserProgress.fromJson(json);

      default:
        final l$id = json['id'];
        final l$$__typename = json['__typename'];
        return Query$FetchTechnique$technique(
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
    if (!(other is Query$FetchTechnique$technique) ||
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

extension UtilityExtension$Query$FetchTechnique$technique
    on Query$FetchTechnique$technique {
  CopyWith$Query$FetchTechnique$technique<Query$FetchTechnique$technique>
      get copyWith => CopyWith$Query$FetchTechnique$technique(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Query$FetchTechnique$technique$$Technique) technique,
    required _T Function(Query$FetchTechnique$technique$$Content) content,
    required _T Function(Query$FetchTechnique$technique$$ContentEpisode)
        contentEpisode,
    required _T Function(Query$FetchTechnique$technique$$ContentProgress)
        contentProgress,
    required _T Function(Query$FetchTechnique$technique$$Course) course,
    required _T Function(Query$FetchTechnique$technique$$JournalRecord)
        journalRecord,
    required _T Function(Query$FetchTechnique$technique$$Lesson) lesson,
    required _T Function(Query$FetchTechnique$technique$$LessonAudio)
        lessonAudio,
    required _T Function(Query$FetchTechnique$technique$$Unit) unit,
    required _T Function(Query$FetchTechnique$technique$$User) user,
    required _T Function(Query$FetchTechnique$technique$$UserProgress)
        userProgress,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Technique":
        return technique(this as Query$FetchTechnique$technique$$Technique);

      case "Content":
        return content(this as Query$FetchTechnique$technique$$Content);

      case "ContentEpisode":
        return contentEpisode(
            this as Query$FetchTechnique$technique$$ContentEpisode);

      case "ContentProgress":
        return contentProgress(
            this as Query$FetchTechnique$technique$$ContentProgress);

      case "Course":
        return course(this as Query$FetchTechnique$technique$$Course);

      case "JournalRecord":
        return journalRecord(
            this as Query$FetchTechnique$technique$$JournalRecord);

      case "Lesson":
        return lesson(this as Query$FetchTechnique$technique$$Lesson);

      case "LessonAudio":
        return lessonAudio(this as Query$FetchTechnique$technique$$LessonAudio);

      case "Unit":
        return unit(this as Query$FetchTechnique$technique$$Unit);

      case "User":
        return user(this as Query$FetchTechnique$technique$$User);

      case "UserProgress":
        return userProgress(
            this as Query$FetchTechnique$technique$$UserProgress);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$FetchTechnique$technique$$Technique)? technique,
    _T Function(Query$FetchTechnique$technique$$Content)? content,
    _T Function(Query$FetchTechnique$technique$$ContentEpisode)? contentEpisode,
    _T Function(Query$FetchTechnique$technique$$ContentProgress)?
        contentProgress,
    _T Function(Query$FetchTechnique$technique$$Course)? course,
    _T Function(Query$FetchTechnique$technique$$JournalRecord)? journalRecord,
    _T Function(Query$FetchTechnique$technique$$Lesson)? lesson,
    _T Function(Query$FetchTechnique$technique$$LessonAudio)? lessonAudio,
    _T Function(Query$FetchTechnique$technique$$Unit)? unit,
    _T Function(Query$FetchTechnique$technique$$User)? user,
    _T Function(Query$FetchTechnique$technique$$UserProgress)? userProgress,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Technique":
        if (technique != null) {
          return technique(this as Query$FetchTechnique$technique$$Technique);
        } else {
          return orElse();
        }

      case "Content":
        if (content != null) {
          return content(this as Query$FetchTechnique$technique$$Content);
        } else {
          return orElse();
        }

      case "ContentEpisode":
        if (contentEpisode != null) {
          return contentEpisode(
              this as Query$FetchTechnique$technique$$ContentEpisode);
        } else {
          return orElse();
        }

      case "ContentProgress":
        if (contentProgress != null) {
          return contentProgress(
              this as Query$FetchTechnique$technique$$ContentProgress);
        } else {
          return orElse();
        }

      case "Course":
        if (course != null) {
          return course(this as Query$FetchTechnique$technique$$Course);
        } else {
          return orElse();
        }

      case "JournalRecord":
        if (journalRecord != null) {
          return journalRecord(
              this as Query$FetchTechnique$technique$$JournalRecord);
        } else {
          return orElse();
        }

      case "Lesson":
        if (lesson != null) {
          return lesson(this as Query$FetchTechnique$technique$$Lesson);
        } else {
          return orElse();
        }

      case "LessonAudio":
        if (lessonAudio != null) {
          return lessonAudio(
              this as Query$FetchTechnique$technique$$LessonAudio);
        } else {
          return orElse();
        }

      case "Unit":
        if (unit != null) {
          return unit(this as Query$FetchTechnique$technique$$Unit);
        } else {
          return orElse();
        }

      case "User":
        if (user != null) {
          return user(this as Query$FetchTechnique$technique$$User);
        } else {
          return orElse();
        }

      case "UserProgress":
        if (userProgress != null) {
          return userProgress(
              this as Query$FetchTechnique$technique$$UserProgress);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$FetchTechnique$technique<TRes> {
  factory CopyWith$Query$FetchTechnique$technique(
    Query$FetchTechnique$technique instance,
    TRes Function(Query$FetchTechnique$technique) then,
  ) = _CopyWithImpl$Query$FetchTechnique$technique;

  factory CopyWith$Query$FetchTechnique$technique.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchTechnique$technique;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchTechnique$technique<TRes>
    implements CopyWith$Query$FetchTechnique$technique<TRes> {
  _CopyWithImpl$Query$FetchTechnique$technique(
    this._instance,
    this._then,
  );

  final Query$FetchTechnique$technique _instance;

  final TRes Function(Query$FetchTechnique$technique) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchTechnique$technique(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchTechnique$technique<TRes>
    implements CopyWith$Query$FetchTechnique$technique<TRes> {
  _CopyWithStubImpl$Query$FetchTechnique$technique(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchTechnique$technique$$Technique
    implements Fragment$Technique, Query$FetchTechnique$technique {
  Query$FetchTechnique$technique$$Technique({
    required this.id,
    required this.coverimage,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.order,
    this.$__typename = 'Technique',
  });

  factory Query$FetchTechnique$technique$$Technique.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$coverimage = json['coverimage'];
    final l$title = json['title'];
    final l$subtitle = json['subtitle'];
    final l$description = json['description'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Query$FetchTechnique$technique$$Technique(
      id: (l$id as String),
      coverimage: (l$coverimage as String),
      title: (l$title as String),
      subtitle: (l$subtitle as String),
      description: (l$description as String),
      order: (l$order as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String coverimage;

  final String title;

  final String subtitle;

  final String description;

  final int order;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$coverimage = coverimage;
    _resultData['coverimage'] = l$coverimage;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$subtitle = subtitle;
    _resultData['subtitle'] = l$subtitle;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$coverimage = coverimage;
    final l$title = title;
    final l$subtitle = subtitle;
    final l$description = description;
    final l$order = order;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$coverimage,
      l$title,
      l$subtitle,
      l$description,
      l$order,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchTechnique$technique$$Technique) ||
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

extension UtilityExtension$Query$FetchTechnique$technique$$Technique
    on Query$FetchTechnique$technique$$Technique {
  CopyWith$Query$FetchTechnique$technique$$Technique<
          Query$FetchTechnique$technique$$Technique>
      get copyWith => CopyWith$Query$FetchTechnique$technique$$Technique(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchTechnique$technique$$Technique<TRes> {
  factory CopyWith$Query$FetchTechnique$technique$$Technique(
    Query$FetchTechnique$technique$$Technique instance,
    TRes Function(Query$FetchTechnique$technique$$Technique) then,
  ) = _CopyWithImpl$Query$FetchTechnique$technique$$Technique;

  factory CopyWith$Query$FetchTechnique$technique$$Technique.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchTechnique$technique$$Technique;

  TRes call({
    String? id,
    String? coverimage,
    String? title,
    String? subtitle,
    String? description,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchTechnique$technique$$Technique<TRes>
    implements CopyWith$Query$FetchTechnique$technique$$Technique<TRes> {
  _CopyWithImpl$Query$FetchTechnique$technique$$Technique(
    this._instance,
    this._then,
  );

  final Query$FetchTechnique$technique$$Technique _instance;

  final TRes Function(Query$FetchTechnique$technique$$Technique) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? coverimage = _undefined,
    Object? title = _undefined,
    Object? subtitle = _undefined,
    Object? description = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchTechnique$technique$$Technique(
        id: id == _undefined || id == null ? _instance.id : (id as String),
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
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchTechnique$technique$$Technique<TRes>
    implements CopyWith$Query$FetchTechnique$technique$$Technique<TRes> {
  _CopyWithStubImpl$Query$FetchTechnique$technique$$Technique(this._res);

  TRes _res;

  call({
    String? id,
    String? coverimage,
    String? title,
    String? subtitle,
    String? description,
    int? order,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchTechnique$technique$$Content
    implements Query$FetchTechnique$technique {
  Query$FetchTechnique$technique$$Content({
    required this.id,
    this.$__typename = 'Content',
  });

  factory Query$FetchTechnique$technique$$Content.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchTechnique$technique$$Content(
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
    if (!(other is Query$FetchTechnique$technique$$Content) ||
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

extension UtilityExtension$Query$FetchTechnique$technique$$Content
    on Query$FetchTechnique$technique$$Content {
  CopyWith$Query$FetchTechnique$technique$$Content<
          Query$FetchTechnique$technique$$Content>
      get copyWith => CopyWith$Query$FetchTechnique$technique$$Content(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchTechnique$technique$$Content<TRes> {
  factory CopyWith$Query$FetchTechnique$technique$$Content(
    Query$FetchTechnique$technique$$Content instance,
    TRes Function(Query$FetchTechnique$technique$$Content) then,
  ) = _CopyWithImpl$Query$FetchTechnique$technique$$Content;

  factory CopyWith$Query$FetchTechnique$technique$$Content.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchTechnique$technique$$Content;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchTechnique$technique$$Content<TRes>
    implements CopyWith$Query$FetchTechnique$technique$$Content<TRes> {
  _CopyWithImpl$Query$FetchTechnique$technique$$Content(
    this._instance,
    this._then,
  );

  final Query$FetchTechnique$technique$$Content _instance;

  final TRes Function(Query$FetchTechnique$technique$$Content) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchTechnique$technique$$Content(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchTechnique$technique$$Content<TRes>
    implements CopyWith$Query$FetchTechnique$technique$$Content<TRes> {
  _CopyWithStubImpl$Query$FetchTechnique$technique$$Content(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchTechnique$technique$$ContentEpisode
    implements Query$FetchTechnique$technique {
  Query$FetchTechnique$technique$$ContentEpisode({
    required this.id,
    this.$__typename = 'ContentEpisode',
  });

  factory Query$FetchTechnique$technique$$ContentEpisode.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchTechnique$technique$$ContentEpisode(
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
    if (!(other is Query$FetchTechnique$technique$$ContentEpisode) ||
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

extension UtilityExtension$Query$FetchTechnique$technique$$ContentEpisode
    on Query$FetchTechnique$technique$$ContentEpisode {
  CopyWith$Query$FetchTechnique$technique$$ContentEpisode<
          Query$FetchTechnique$technique$$ContentEpisode>
      get copyWith => CopyWith$Query$FetchTechnique$technique$$ContentEpisode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchTechnique$technique$$ContentEpisode<TRes> {
  factory CopyWith$Query$FetchTechnique$technique$$ContentEpisode(
    Query$FetchTechnique$technique$$ContentEpisode instance,
    TRes Function(Query$FetchTechnique$technique$$ContentEpisode) then,
  ) = _CopyWithImpl$Query$FetchTechnique$technique$$ContentEpisode;

  factory CopyWith$Query$FetchTechnique$technique$$ContentEpisode.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FetchTechnique$technique$$ContentEpisode;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchTechnique$technique$$ContentEpisode<TRes>
    implements CopyWith$Query$FetchTechnique$technique$$ContentEpisode<TRes> {
  _CopyWithImpl$Query$FetchTechnique$technique$$ContentEpisode(
    this._instance,
    this._then,
  );

  final Query$FetchTechnique$technique$$ContentEpisode _instance;

  final TRes Function(Query$FetchTechnique$technique$$ContentEpisode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchTechnique$technique$$ContentEpisode(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchTechnique$technique$$ContentEpisode<TRes>
    implements CopyWith$Query$FetchTechnique$technique$$ContentEpisode<TRes> {
  _CopyWithStubImpl$Query$FetchTechnique$technique$$ContentEpisode(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchTechnique$technique$$ContentProgress
    implements Query$FetchTechnique$technique {
  Query$FetchTechnique$technique$$ContentProgress({
    required this.id,
    this.$__typename = 'ContentProgress',
  });

  factory Query$FetchTechnique$technique$$ContentProgress.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchTechnique$technique$$ContentProgress(
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
    if (!(other is Query$FetchTechnique$technique$$ContentProgress) ||
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

extension UtilityExtension$Query$FetchTechnique$technique$$ContentProgress
    on Query$FetchTechnique$technique$$ContentProgress {
  CopyWith$Query$FetchTechnique$technique$$ContentProgress<
          Query$FetchTechnique$technique$$ContentProgress>
      get copyWith => CopyWith$Query$FetchTechnique$technique$$ContentProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchTechnique$technique$$ContentProgress<TRes> {
  factory CopyWith$Query$FetchTechnique$technique$$ContentProgress(
    Query$FetchTechnique$technique$$ContentProgress instance,
    TRes Function(Query$FetchTechnique$technique$$ContentProgress) then,
  ) = _CopyWithImpl$Query$FetchTechnique$technique$$ContentProgress;

  factory CopyWith$Query$FetchTechnique$technique$$ContentProgress.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FetchTechnique$technique$$ContentProgress;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchTechnique$technique$$ContentProgress<TRes>
    implements CopyWith$Query$FetchTechnique$technique$$ContentProgress<TRes> {
  _CopyWithImpl$Query$FetchTechnique$technique$$ContentProgress(
    this._instance,
    this._then,
  );

  final Query$FetchTechnique$technique$$ContentProgress _instance;

  final TRes Function(Query$FetchTechnique$technique$$ContentProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchTechnique$technique$$ContentProgress(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchTechnique$technique$$ContentProgress<TRes>
    implements CopyWith$Query$FetchTechnique$technique$$ContentProgress<TRes> {
  _CopyWithStubImpl$Query$FetchTechnique$technique$$ContentProgress(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchTechnique$technique$$Course
    implements Query$FetchTechnique$technique {
  Query$FetchTechnique$technique$$Course({
    required this.id,
    this.$__typename = 'Course',
  });

  factory Query$FetchTechnique$technique$$Course.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchTechnique$technique$$Course(
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
    if (!(other is Query$FetchTechnique$technique$$Course) ||
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

extension UtilityExtension$Query$FetchTechnique$technique$$Course
    on Query$FetchTechnique$technique$$Course {
  CopyWith$Query$FetchTechnique$technique$$Course<
          Query$FetchTechnique$technique$$Course>
      get copyWith => CopyWith$Query$FetchTechnique$technique$$Course(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchTechnique$technique$$Course<TRes> {
  factory CopyWith$Query$FetchTechnique$technique$$Course(
    Query$FetchTechnique$technique$$Course instance,
    TRes Function(Query$FetchTechnique$technique$$Course) then,
  ) = _CopyWithImpl$Query$FetchTechnique$technique$$Course;

  factory CopyWith$Query$FetchTechnique$technique$$Course.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchTechnique$technique$$Course;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchTechnique$technique$$Course<TRes>
    implements CopyWith$Query$FetchTechnique$technique$$Course<TRes> {
  _CopyWithImpl$Query$FetchTechnique$technique$$Course(
    this._instance,
    this._then,
  );

  final Query$FetchTechnique$technique$$Course _instance;

  final TRes Function(Query$FetchTechnique$technique$$Course) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchTechnique$technique$$Course(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchTechnique$technique$$Course<TRes>
    implements CopyWith$Query$FetchTechnique$technique$$Course<TRes> {
  _CopyWithStubImpl$Query$FetchTechnique$technique$$Course(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchTechnique$technique$$JournalRecord
    implements Query$FetchTechnique$technique {
  Query$FetchTechnique$technique$$JournalRecord({
    required this.id,
    this.$__typename = 'JournalRecord',
  });

  factory Query$FetchTechnique$technique$$JournalRecord.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchTechnique$technique$$JournalRecord(
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
    if (!(other is Query$FetchTechnique$technique$$JournalRecord) ||
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

extension UtilityExtension$Query$FetchTechnique$technique$$JournalRecord
    on Query$FetchTechnique$technique$$JournalRecord {
  CopyWith$Query$FetchTechnique$technique$$JournalRecord<
          Query$FetchTechnique$technique$$JournalRecord>
      get copyWith => CopyWith$Query$FetchTechnique$technique$$JournalRecord(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchTechnique$technique$$JournalRecord<TRes> {
  factory CopyWith$Query$FetchTechnique$technique$$JournalRecord(
    Query$FetchTechnique$technique$$JournalRecord instance,
    TRes Function(Query$FetchTechnique$technique$$JournalRecord) then,
  ) = _CopyWithImpl$Query$FetchTechnique$technique$$JournalRecord;

  factory CopyWith$Query$FetchTechnique$technique$$JournalRecord.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FetchTechnique$technique$$JournalRecord;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchTechnique$technique$$JournalRecord<TRes>
    implements CopyWith$Query$FetchTechnique$technique$$JournalRecord<TRes> {
  _CopyWithImpl$Query$FetchTechnique$technique$$JournalRecord(
    this._instance,
    this._then,
  );

  final Query$FetchTechnique$technique$$JournalRecord _instance;

  final TRes Function(Query$FetchTechnique$technique$$JournalRecord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchTechnique$technique$$JournalRecord(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchTechnique$technique$$JournalRecord<TRes>
    implements CopyWith$Query$FetchTechnique$technique$$JournalRecord<TRes> {
  _CopyWithStubImpl$Query$FetchTechnique$technique$$JournalRecord(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchTechnique$technique$$Lesson
    implements Query$FetchTechnique$technique {
  Query$FetchTechnique$technique$$Lesson({
    required this.id,
    this.$__typename = 'Lesson',
  });

  factory Query$FetchTechnique$technique$$Lesson.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchTechnique$technique$$Lesson(
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
    if (!(other is Query$FetchTechnique$technique$$Lesson) ||
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

extension UtilityExtension$Query$FetchTechnique$technique$$Lesson
    on Query$FetchTechnique$technique$$Lesson {
  CopyWith$Query$FetchTechnique$technique$$Lesson<
          Query$FetchTechnique$technique$$Lesson>
      get copyWith => CopyWith$Query$FetchTechnique$technique$$Lesson(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchTechnique$technique$$Lesson<TRes> {
  factory CopyWith$Query$FetchTechnique$technique$$Lesson(
    Query$FetchTechnique$technique$$Lesson instance,
    TRes Function(Query$FetchTechnique$technique$$Lesson) then,
  ) = _CopyWithImpl$Query$FetchTechnique$technique$$Lesson;

  factory CopyWith$Query$FetchTechnique$technique$$Lesson.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchTechnique$technique$$Lesson;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchTechnique$technique$$Lesson<TRes>
    implements CopyWith$Query$FetchTechnique$technique$$Lesson<TRes> {
  _CopyWithImpl$Query$FetchTechnique$technique$$Lesson(
    this._instance,
    this._then,
  );

  final Query$FetchTechnique$technique$$Lesson _instance;

  final TRes Function(Query$FetchTechnique$technique$$Lesson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchTechnique$technique$$Lesson(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchTechnique$technique$$Lesson<TRes>
    implements CopyWith$Query$FetchTechnique$technique$$Lesson<TRes> {
  _CopyWithStubImpl$Query$FetchTechnique$technique$$Lesson(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchTechnique$technique$$LessonAudio
    implements Query$FetchTechnique$technique {
  Query$FetchTechnique$technique$$LessonAudio({
    required this.id,
    this.$__typename = 'LessonAudio',
  });

  factory Query$FetchTechnique$technique$$LessonAudio.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchTechnique$technique$$LessonAudio(
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
    if (!(other is Query$FetchTechnique$technique$$LessonAudio) ||
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

extension UtilityExtension$Query$FetchTechnique$technique$$LessonAudio
    on Query$FetchTechnique$technique$$LessonAudio {
  CopyWith$Query$FetchTechnique$technique$$LessonAudio<
          Query$FetchTechnique$technique$$LessonAudio>
      get copyWith => CopyWith$Query$FetchTechnique$technique$$LessonAudio(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchTechnique$technique$$LessonAudio<TRes> {
  factory CopyWith$Query$FetchTechnique$technique$$LessonAudio(
    Query$FetchTechnique$technique$$LessonAudio instance,
    TRes Function(Query$FetchTechnique$technique$$LessonAudio) then,
  ) = _CopyWithImpl$Query$FetchTechnique$technique$$LessonAudio;

  factory CopyWith$Query$FetchTechnique$technique$$LessonAudio.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchTechnique$technique$$LessonAudio;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchTechnique$technique$$LessonAudio<TRes>
    implements CopyWith$Query$FetchTechnique$technique$$LessonAudio<TRes> {
  _CopyWithImpl$Query$FetchTechnique$technique$$LessonAudio(
    this._instance,
    this._then,
  );

  final Query$FetchTechnique$technique$$LessonAudio _instance;

  final TRes Function(Query$FetchTechnique$technique$$LessonAudio) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchTechnique$technique$$LessonAudio(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchTechnique$technique$$LessonAudio<TRes>
    implements CopyWith$Query$FetchTechnique$technique$$LessonAudio<TRes> {
  _CopyWithStubImpl$Query$FetchTechnique$technique$$LessonAudio(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchTechnique$technique$$Unit
    implements Query$FetchTechnique$technique {
  Query$FetchTechnique$technique$$Unit({
    required this.id,
    this.$__typename = 'Unit',
  });

  factory Query$FetchTechnique$technique$$Unit.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchTechnique$technique$$Unit(
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
    if (!(other is Query$FetchTechnique$technique$$Unit) ||
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

extension UtilityExtension$Query$FetchTechnique$technique$$Unit
    on Query$FetchTechnique$technique$$Unit {
  CopyWith$Query$FetchTechnique$technique$$Unit<
          Query$FetchTechnique$technique$$Unit>
      get copyWith => CopyWith$Query$FetchTechnique$technique$$Unit(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchTechnique$technique$$Unit<TRes> {
  factory CopyWith$Query$FetchTechnique$technique$$Unit(
    Query$FetchTechnique$technique$$Unit instance,
    TRes Function(Query$FetchTechnique$technique$$Unit) then,
  ) = _CopyWithImpl$Query$FetchTechnique$technique$$Unit;

  factory CopyWith$Query$FetchTechnique$technique$$Unit.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchTechnique$technique$$Unit;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchTechnique$technique$$Unit<TRes>
    implements CopyWith$Query$FetchTechnique$technique$$Unit<TRes> {
  _CopyWithImpl$Query$FetchTechnique$technique$$Unit(
    this._instance,
    this._then,
  );

  final Query$FetchTechnique$technique$$Unit _instance;

  final TRes Function(Query$FetchTechnique$technique$$Unit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchTechnique$technique$$Unit(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchTechnique$technique$$Unit<TRes>
    implements CopyWith$Query$FetchTechnique$technique$$Unit<TRes> {
  _CopyWithStubImpl$Query$FetchTechnique$technique$$Unit(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchTechnique$technique$$User
    implements Query$FetchTechnique$technique {
  Query$FetchTechnique$technique$$User({
    required this.id,
    this.$__typename = 'User',
  });

  factory Query$FetchTechnique$technique$$User.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchTechnique$technique$$User(
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
    if (!(other is Query$FetchTechnique$technique$$User) ||
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

extension UtilityExtension$Query$FetchTechnique$technique$$User
    on Query$FetchTechnique$technique$$User {
  CopyWith$Query$FetchTechnique$technique$$User<
          Query$FetchTechnique$technique$$User>
      get copyWith => CopyWith$Query$FetchTechnique$technique$$User(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchTechnique$technique$$User<TRes> {
  factory CopyWith$Query$FetchTechnique$technique$$User(
    Query$FetchTechnique$technique$$User instance,
    TRes Function(Query$FetchTechnique$technique$$User) then,
  ) = _CopyWithImpl$Query$FetchTechnique$technique$$User;

  factory CopyWith$Query$FetchTechnique$technique$$User.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchTechnique$technique$$User;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchTechnique$technique$$User<TRes>
    implements CopyWith$Query$FetchTechnique$technique$$User<TRes> {
  _CopyWithImpl$Query$FetchTechnique$technique$$User(
    this._instance,
    this._then,
  );

  final Query$FetchTechnique$technique$$User _instance;

  final TRes Function(Query$FetchTechnique$technique$$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchTechnique$technique$$User(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchTechnique$technique$$User<TRes>
    implements CopyWith$Query$FetchTechnique$technique$$User<TRes> {
  _CopyWithStubImpl$Query$FetchTechnique$technique$$User(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchTechnique$technique$$UserProgress
    implements Query$FetchTechnique$technique {
  Query$FetchTechnique$technique$$UserProgress({
    required this.id,
    this.$__typename = 'UserProgress',
  });

  factory Query$FetchTechnique$technique$$UserProgress.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchTechnique$technique$$UserProgress(
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
    if (!(other is Query$FetchTechnique$technique$$UserProgress) ||
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

extension UtilityExtension$Query$FetchTechnique$technique$$UserProgress
    on Query$FetchTechnique$technique$$UserProgress {
  CopyWith$Query$FetchTechnique$technique$$UserProgress<
          Query$FetchTechnique$technique$$UserProgress>
      get copyWith => CopyWith$Query$FetchTechnique$technique$$UserProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchTechnique$technique$$UserProgress<TRes> {
  factory CopyWith$Query$FetchTechnique$technique$$UserProgress(
    Query$FetchTechnique$technique$$UserProgress instance,
    TRes Function(Query$FetchTechnique$technique$$UserProgress) then,
  ) = _CopyWithImpl$Query$FetchTechnique$technique$$UserProgress;

  factory CopyWith$Query$FetchTechnique$technique$$UserProgress.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchTechnique$technique$$UserProgress;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchTechnique$technique$$UserProgress<TRes>
    implements CopyWith$Query$FetchTechnique$technique$$UserProgress<TRes> {
  _CopyWithImpl$Query$FetchTechnique$technique$$UserProgress(
    this._instance,
    this._then,
  );

  final Query$FetchTechnique$technique$$UserProgress _instance;

  final TRes Function(Query$FetchTechnique$technique$$UserProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchTechnique$technique$$UserProgress(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchTechnique$technique$$UserProgress<TRes>
    implements CopyWith$Query$FetchTechnique$technique$$UserProgress<TRes> {
  _CopyWithStubImpl$Query$FetchTechnique$technique$$UserProgress(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}
