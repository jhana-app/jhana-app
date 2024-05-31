// GENERATED FILE, DO NOT MODIFY
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$User {
  Fragment$User({
    required this.id,
    this.email,
    required this.emailVerified,
    required this.displayname,
    this.$__typename = 'User',
  });

  factory Fragment$User.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$email = json['email'];
    final l$emailVerified = json['emailVerified'];
    final l$displayname = json['displayname'];
    final l$$__typename = json['__typename'];
    return Fragment$User(
      id: (l$id as String),
      email: (l$email as String?),
      emailVerified: (l$emailVerified as bool),
      displayname: (l$displayname as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? email;

  final bool emailVerified;

  final String displayname;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$emailVerified = emailVerified;
    _resultData['emailVerified'] = l$emailVerified;
    final l$displayname = displayname;
    _resultData['displayname'] = l$displayname;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$email = email;
    final l$emailVerified = emailVerified;
    final l$displayname = displayname;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$email,
      l$emailVerified,
      l$displayname,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$User) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$emailVerified = emailVerified;
    final lOther$emailVerified = other.emailVerified;
    if (l$emailVerified != lOther$emailVerified) {
      return false;
    }
    final l$displayname = displayname;
    final lOther$displayname = other.displayname;
    if (l$displayname != lOther$displayname) {
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

extension UtilityExtension$Fragment$User on Fragment$User {
  CopyWith$Fragment$User<Fragment$User> get copyWith => CopyWith$Fragment$User(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$User<TRes> {
  factory CopyWith$Fragment$User(
    Fragment$User instance,
    TRes Function(Fragment$User) then,
  ) = _CopyWithImpl$Fragment$User;

  factory CopyWith$Fragment$User.stub(TRes res) =
      _CopyWithStubImpl$Fragment$User;

  TRes call({
    String? id,
    String? email,
    bool? emailVerified,
    String? displayname,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$User<TRes>
    implements CopyWith$Fragment$User<TRes> {
  _CopyWithImpl$Fragment$User(
    this._instance,
    this._then,
  );

  final Fragment$User _instance;

  final TRes Function(Fragment$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? email = _undefined,
    Object? emailVerified = _undefined,
    Object? displayname = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$User(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        email: email == _undefined ? _instance.email : (email as String?),
        emailVerified: emailVerified == _undefined || emailVerified == null
            ? _instance.emailVerified
            : (emailVerified as bool),
        displayname: displayname == _undefined || displayname == null
            ? _instance.displayname
            : (displayname as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$User<TRes>
    implements CopyWith$Fragment$User<TRes> {
  _CopyWithStubImpl$Fragment$User(this._res);

  TRes _res;

  call({
    String? id,
    String? email,
    bool? emailVerified,
    String? displayname,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionUser = FragmentDefinitionNode(
  name: NameNode(value: 'User'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'User'),
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
      name: NameNode(value: 'email'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'emailVerified'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'displayname'),
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
const documentNodeFragmentUser = DocumentNode(definitions: [
  fragmentDefinitionUser,
]);

extension ClientExtension$Fragment$User on graphql.GraphQLClient {
  void writeFragment$User({
    required Fragment$User data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'User',
            document: documentNodeFragmentUser,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$User? readFragment$User({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'User',
          document: documentNodeFragmentUser,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$User.fromJson(result);
  }
}

class Query$FetchUser {
  Query$FetchUser({
    required this.me,
    this.$__typename = 'Query',
  });

  factory Query$FetchUser.fromJson(Map<String, dynamic> json) {
    final l$me = json['me'];
    final l$$__typename = json['__typename'];
    return Query$FetchUser(
      me: Fragment$User.fromJson((l$me as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$User me;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$me = me;
    _resultData['me'] = l$me.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$me = me;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$me,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$me = me;
    final lOther$me = other.me;
    if (l$me != lOther$me) {
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

extension UtilityExtension$Query$FetchUser on Query$FetchUser {
  CopyWith$Query$FetchUser<Query$FetchUser> get copyWith =>
      CopyWith$Query$FetchUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchUser<TRes> {
  factory CopyWith$Query$FetchUser(
    Query$FetchUser instance,
    TRes Function(Query$FetchUser) then,
  ) = _CopyWithImpl$Query$FetchUser;

  factory CopyWith$Query$FetchUser.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchUser;

  TRes call({
    Fragment$User? me,
    String? $__typename,
  });
  CopyWith$Fragment$User<TRes> get me;
}

class _CopyWithImpl$Query$FetchUser<TRes>
    implements CopyWith$Query$FetchUser<TRes> {
  _CopyWithImpl$Query$FetchUser(
    this._instance,
    this._then,
  );

  final Query$FetchUser _instance;

  final TRes Function(Query$FetchUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? me = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchUser(
        me: me == _undefined || me == null
            ? _instance.me
            : (me as Fragment$User),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$User<TRes> get me {
    final local$me = _instance.me;
    return CopyWith$Fragment$User(local$me, (e) => call(me: e));
  }
}

class _CopyWithStubImpl$Query$FetchUser<TRes>
    implements CopyWith$Query$FetchUser<TRes> {
  _CopyWithStubImpl$Query$FetchUser(this._res);

  TRes _res;

  call({
    Fragment$User? me,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$User<TRes> get me => CopyWith$Fragment$User.stub(_res);
}

const documentNodeQueryFetchUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchUser'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'me'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'User'),
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
  fragmentDefinitionUser,
]);
Query$FetchUser _parserFn$Query$FetchUser(Map<String, dynamic> data) =>
    Query$FetchUser.fromJson(data);
typedef OnQueryComplete$Query$FetchUser = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FetchUser?,
);

class Options$Query$FetchUser extends graphql.QueryOptions<Query$FetchUser> {
  Options$Query$FetchUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchUser? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FetchUser? onComplete,
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
                    data == null ? null : _parserFn$Query$FetchUser(data),
                  ),
          onError: onError,
          document: documentNodeQueryFetchUser,
          parserFn: _parserFn$Query$FetchUser,
        );

  final OnQueryComplete$Query$FetchUser? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FetchUser
    extends graphql.WatchQueryOptions<Query$FetchUser> {
  WatchOptions$Query$FetchUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchUser? typedOptimisticResult,
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
          document: documentNodeQueryFetchUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchUser,
        );
}

class FetchMoreOptions$Query$FetchUser extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchUser({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryFetchUser,
        );
}

extension ClientExtension$Query$FetchUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchUser>> query$FetchUser(
          [Options$Query$FetchUser? options]) async =>
      await this.query(options ?? Options$Query$FetchUser());
  graphql.ObservableQuery<Query$FetchUser> watchQuery$FetchUser(
          [WatchOptions$Query$FetchUser? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FetchUser());
  void writeQuery$FetchUser({
    required Query$FetchUser data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryFetchUser)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchUser? readQuery$FetchUser({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryFetchUser)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchUser.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchUser> useQuery$FetchUser(
        [Options$Query$FetchUser? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$FetchUser());
graphql.ObservableQuery<Query$FetchUser> useWatchQuery$FetchUser(
        [WatchOptions$Query$FetchUser? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$FetchUser());

class Query$FetchUser$Widget extends graphql_flutter.Query<Query$FetchUser> {
  Query$FetchUser$Widget({
    widgets.Key? key,
    Options$Query$FetchUser? options,
    required graphql_flutter.QueryBuilder<Query$FetchUser> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$FetchUser(),
          builder: builder,
        );
}
