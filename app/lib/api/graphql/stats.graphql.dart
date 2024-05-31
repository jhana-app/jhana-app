// GENERATED FILE, DO NOT MODIFY
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$MeditationsStats {
  Fragment$MeditationsStats({
    required this.hoursTotal,
    required this.sessionsTotal,
    required this.currentStrike,
    this.lastMeditationDate,
    this.$__typename = 'MeditationsStats',
  });

  factory Fragment$MeditationsStats.fromJson(Map<String, dynamic> json) {
    final l$hoursTotal = json['hoursTotal'];
    final l$sessionsTotal = json['sessionsTotal'];
    final l$currentStrike = json['currentStrike'];
    final l$lastMeditationDate = json['lastMeditationDate'];
    final l$$__typename = json['__typename'];
    return Fragment$MeditationsStats(
      hoursTotal: (l$hoursTotal as int),
      sessionsTotal: (l$sessionsTotal as int),
      currentStrike: (l$currentStrike as int),
      lastMeditationDate: (l$lastMeditationDate as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int hoursTotal;

  final int sessionsTotal;

  final int currentStrike;

  final String? lastMeditationDate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hoursTotal = hoursTotal;
    _resultData['hoursTotal'] = l$hoursTotal;
    final l$sessionsTotal = sessionsTotal;
    _resultData['sessionsTotal'] = l$sessionsTotal;
    final l$currentStrike = currentStrike;
    _resultData['currentStrike'] = l$currentStrike;
    final l$lastMeditationDate = lastMeditationDate;
    _resultData['lastMeditationDate'] = l$lastMeditationDate;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hoursTotal = hoursTotal;
    final l$sessionsTotal = sessionsTotal;
    final l$currentStrike = currentStrike;
    final l$lastMeditationDate = lastMeditationDate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hoursTotal,
      l$sessionsTotal,
      l$currentStrike,
      l$lastMeditationDate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MeditationsStats) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hoursTotal = hoursTotal;
    final lOther$hoursTotal = other.hoursTotal;
    if (l$hoursTotal != lOther$hoursTotal) {
      return false;
    }
    final l$sessionsTotal = sessionsTotal;
    final lOther$sessionsTotal = other.sessionsTotal;
    if (l$sessionsTotal != lOther$sessionsTotal) {
      return false;
    }
    final l$currentStrike = currentStrike;
    final lOther$currentStrike = other.currentStrike;
    if (l$currentStrike != lOther$currentStrike) {
      return false;
    }
    final l$lastMeditationDate = lastMeditationDate;
    final lOther$lastMeditationDate = other.lastMeditationDate;
    if (l$lastMeditationDate != lOther$lastMeditationDate) {
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

extension UtilityExtension$Fragment$MeditationsStats
    on Fragment$MeditationsStats {
  CopyWith$Fragment$MeditationsStats<Fragment$MeditationsStats> get copyWith =>
      CopyWith$Fragment$MeditationsStats(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$MeditationsStats<TRes> {
  factory CopyWith$Fragment$MeditationsStats(
    Fragment$MeditationsStats instance,
    TRes Function(Fragment$MeditationsStats) then,
  ) = _CopyWithImpl$Fragment$MeditationsStats;

  factory CopyWith$Fragment$MeditationsStats.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MeditationsStats;

  TRes call({
    int? hoursTotal,
    int? sessionsTotal,
    int? currentStrike,
    String? lastMeditationDate,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MeditationsStats<TRes>
    implements CopyWith$Fragment$MeditationsStats<TRes> {
  _CopyWithImpl$Fragment$MeditationsStats(
    this._instance,
    this._then,
  );

  final Fragment$MeditationsStats _instance;

  final TRes Function(Fragment$MeditationsStats) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hoursTotal = _undefined,
    Object? sessionsTotal = _undefined,
    Object? currentStrike = _undefined,
    Object? lastMeditationDate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MeditationsStats(
        hoursTotal: hoursTotal == _undefined || hoursTotal == null
            ? _instance.hoursTotal
            : (hoursTotal as int),
        sessionsTotal: sessionsTotal == _undefined || sessionsTotal == null
            ? _instance.sessionsTotal
            : (sessionsTotal as int),
        currentStrike: currentStrike == _undefined || currentStrike == null
            ? _instance.currentStrike
            : (currentStrike as int),
        lastMeditationDate: lastMeditationDate == _undefined
            ? _instance.lastMeditationDate
            : (lastMeditationDate as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MeditationsStats<TRes>
    implements CopyWith$Fragment$MeditationsStats<TRes> {
  _CopyWithStubImpl$Fragment$MeditationsStats(this._res);

  TRes _res;

  call({
    int? hoursTotal,
    int? sessionsTotal,
    int? currentStrike,
    String? lastMeditationDate,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionMeditationsStats = FragmentDefinitionNode(
  name: NameNode(value: 'MeditationsStats'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'MeditationsStats'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'hoursTotal'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'sessionsTotal'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'currentStrike'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'lastMeditationDate'),
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
const documentNodeFragmentMeditationsStats = DocumentNode(definitions: [
  fragmentDefinitionMeditationsStats,
]);

extension ClientExtension$Fragment$MeditationsStats on graphql.GraphQLClient {
  void writeFragment$MeditationsStats({
    required Fragment$MeditationsStats data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'MeditationsStats',
            document: documentNodeFragmentMeditationsStats,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$MeditationsStats? readFragment$MeditationsStats({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'MeditationsStats',
          document: documentNodeFragmentMeditationsStats,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$MeditationsStats.fromJson(result);
  }
}

class Variables$Query$FetchMeditationsStats {
  factory Variables$Query$FetchMeditationsStats(
          {required String userTimezone}) =>
      Variables$Query$FetchMeditationsStats._({
        r'userTimezone': userTimezone,
      });

  Variables$Query$FetchMeditationsStats._(this._$data);

  factory Variables$Query$FetchMeditationsStats.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userTimezone = data['userTimezone'];
    result$data['userTimezone'] = (l$userTimezone as String);
    return Variables$Query$FetchMeditationsStats._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userTimezone => (_$data['userTimezone'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userTimezone = userTimezone;
    result$data['userTimezone'] = l$userTimezone;
    return result$data;
  }

  CopyWith$Variables$Query$FetchMeditationsStats<
          Variables$Query$FetchMeditationsStats>
      get copyWith => CopyWith$Variables$Query$FetchMeditationsStats(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FetchMeditationsStats) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userTimezone = userTimezone;
    final lOther$userTimezone = other.userTimezone;
    if (l$userTimezone != lOther$userTimezone) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userTimezone = userTimezone;
    return Object.hashAll([l$userTimezone]);
  }
}

abstract class CopyWith$Variables$Query$FetchMeditationsStats<TRes> {
  factory CopyWith$Variables$Query$FetchMeditationsStats(
    Variables$Query$FetchMeditationsStats instance,
    TRes Function(Variables$Query$FetchMeditationsStats) then,
  ) = _CopyWithImpl$Variables$Query$FetchMeditationsStats;

  factory CopyWith$Variables$Query$FetchMeditationsStats.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FetchMeditationsStats;

  TRes call({String? userTimezone});
}

class _CopyWithImpl$Variables$Query$FetchMeditationsStats<TRes>
    implements CopyWith$Variables$Query$FetchMeditationsStats<TRes> {
  _CopyWithImpl$Variables$Query$FetchMeditationsStats(
    this._instance,
    this._then,
  );

  final Variables$Query$FetchMeditationsStats _instance;

  final TRes Function(Variables$Query$FetchMeditationsStats) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? userTimezone = _undefined}) =>
      _then(Variables$Query$FetchMeditationsStats._({
        ..._instance._$data,
        if (userTimezone != _undefined && userTimezone != null)
          'userTimezone': (userTimezone as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$FetchMeditationsStats<TRes>
    implements CopyWith$Variables$Query$FetchMeditationsStats<TRes> {
  _CopyWithStubImpl$Variables$Query$FetchMeditationsStats(this._res);

  TRes _res;

  call({String? userTimezone}) => _res;
}

class Query$FetchMeditationsStats {
  Query$FetchMeditationsStats({
    required this.meditationsStats,
    this.$__typename = 'Query',
  });

  factory Query$FetchMeditationsStats.fromJson(Map<String, dynamic> json) {
    final l$meditationsStats = json['meditationsStats'];
    final l$$__typename = json['__typename'];
    return Query$FetchMeditationsStats(
      meditationsStats: Fragment$MeditationsStats.fromJson(
          (l$meditationsStats as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$MeditationsStats meditationsStats;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$meditationsStats = meditationsStats;
    _resultData['meditationsStats'] = l$meditationsStats.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$meditationsStats = meditationsStats;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$meditationsStats,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchMeditationsStats) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$meditationsStats = meditationsStats;
    final lOther$meditationsStats = other.meditationsStats;
    if (l$meditationsStats != lOther$meditationsStats) {
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

extension UtilityExtension$Query$FetchMeditationsStats
    on Query$FetchMeditationsStats {
  CopyWith$Query$FetchMeditationsStats<Query$FetchMeditationsStats>
      get copyWith => CopyWith$Query$FetchMeditationsStats(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchMeditationsStats<TRes> {
  factory CopyWith$Query$FetchMeditationsStats(
    Query$FetchMeditationsStats instance,
    TRes Function(Query$FetchMeditationsStats) then,
  ) = _CopyWithImpl$Query$FetchMeditationsStats;

  factory CopyWith$Query$FetchMeditationsStats.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchMeditationsStats;

  TRes call({
    Fragment$MeditationsStats? meditationsStats,
    String? $__typename,
  });
  CopyWith$Fragment$MeditationsStats<TRes> get meditationsStats;
}

class _CopyWithImpl$Query$FetchMeditationsStats<TRes>
    implements CopyWith$Query$FetchMeditationsStats<TRes> {
  _CopyWithImpl$Query$FetchMeditationsStats(
    this._instance,
    this._then,
  );

  final Query$FetchMeditationsStats _instance;

  final TRes Function(Query$FetchMeditationsStats) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? meditationsStats = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchMeditationsStats(
        meditationsStats:
            meditationsStats == _undefined || meditationsStats == null
                ? _instance.meditationsStats
                : (meditationsStats as Fragment$MeditationsStats),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MeditationsStats<TRes> get meditationsStats {
    final local$meditationsStats = _instance.meditationsStats;
    return CopyWith$Fragment$MeditationsStats(
        local$meditationsStats, (e) => call(meditationsStats: e));
  }
}

class _CopyWithStubImpl$Query$FetchMeditationsStats<TRes>
    implements CopyWith$Query$FetchMeditationsStats<TRes> {
  _CopyWithStubImpl$Query$FetchMeditationsStats(this._res);

  TRes _res;

  call({
    Fragment$MeditationsStats? meditationsStats,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MeditationsStats<TRes> get meditationsStats =>
      CopyWith$Fragment$MeditationsStats.stub(_res);
}

const documentNodeQueryFetchMeditationsStats = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchMeditationsStats'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userTimezone')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'meditationsStats'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'userTimezone'),
                value: VariableNode(name: NameNode(value: 'userTimezone')),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'MeditationsStats'),
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
  fragmentDefinitionMeditationsStats,
]);
Query$FetchMeditationsStats _parserFn$Query$FetchMeditationsStats(
        Map<String, dynamic> data) =>
    Query$FetchMeditationsStats.fromJson(data);
typedef OnQueryComplete$Query$FetchMeditationsStats = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FetchMeditationsStats?,
);

class Options$Query$FetchMeditationsStats
    extends graphql.QueryOptions<Query$FetchMeditationsStats> {
  Options$Query$FetchMeditationsStats({
    String? operationName,
    required Variables$Query$FetchMeditationsStats variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchMeditationsStats? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FetchMeditationsStats? onComplete,
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
                        : _parserFn$Query$FetchMeditationsStats(data),
                  ),
          onError: onError,
          document: documentNodeQueryFetchMeditationsStats,
          parserFn: _parserFn$Query$FetchMeditationsStats,
        );

  final OnQueryComplete$Query$FetchMeditationsStats? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FetchMeditationsStats
    extends graphql.WatchQueryOptions<Query$FetchMeditationsStats> {
  WatchOptions$Query$FetchMeditationsStats({
    String? operationName,
    required Variables$Query$FetchMeditationsStats variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchMeditationsStats? typedOptimisticResult,
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
          document: documentNodeQueryFetchMeditationsStats,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchMeditationsStats,
        );
}

class FetchMoreOptions$Query$FetchMeditationsStats
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchMeditationsStats({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$FetchMeditationsStats variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryFetchMeditationsStats,
        );
}

extension ClientExtension$Query$FetchMeditationsStats on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchMeditationsStats>>
      query$FetchMeditationsStats(
              Options$Query$FetchMeditationsStats options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$FetchMeditationsStats>
      watchQuery$FetchMeditationsStats(
              WatchOptions$Query$FetchMeditationsStats options) =>
          this.watchQuery(options);
  void writeQuery$FetchMeditationsStats({
    required Query$FetchMeditationsStats data,
    required Variables$Query$FetchMeditationsStats variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryFetchMeditationsStats),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchMeditationsStats? readQuery$FetchMeditationsStats({
    required Variables$Query$FetchMeditationsStats variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryFetchMeditationsStats),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchMeditationsStats.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchMeditationsStats>
    useQuery$FetchMeditationsStats(
            Options$Query$FetchMeditationsStats options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$FetchMeditationsStats>
    useWatchQuery$FetchMeditationsStats(
            WatchOptions$Query$FetchMeditationsStats options) =>
        graphql_flutter.useWatchQuery(options);

class Query$FetchMeditationsStats$Widget
    extends graphql_flutter.Query<Query$FetchMeditationsStats> {
  Query$FetchMeditationsStats$Widget({
    widgets.Key? key,
    required Options$Query$FetchMeditationsStats options,
    required graphql_flutter.QueryBuilder<Query$FetchMeditationsStats> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}
