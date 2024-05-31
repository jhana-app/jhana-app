// GENERATED FILE, DO NOT MODIFY
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';
import 'user.graphql.dart';

class Variables$Mutation$SignInWithEmailAndPassword {
  factory Variables$Mutation$SignInWithEmailAndPassword(
          {required Input$SignInWithEmailAndPasswordInput input}) =>
      Variables$Mutation$SignInWithEmailAndPassword._({
        r'input': input,
      });

  Variables$Mutation$SignInWithEmailAndPassword._(this._$data);

  factory Variables$Mutation$SignInWithEmailAndPassword.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SignInWithEmailAndPasswordInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$SignInWithEmailAndPassword._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SignInWithEmailAndPasswordInput get input =>
      (_$data['input'] as Input$SignInWithEmailAndPasswordInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SignInWithEmailAndPassword<
          Variables$Mutation$SignInWithEmailAndPassword>
      get copyWith => CopyWith$Variables$Mutation$SignInWithEmailAndPassword(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SignInWithEmailAndPassword) ||
        runtimeType != other.runtimeType) {
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
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$SignInWithEmailAndPassword<TRes> {
  factory CopyWith$Variables$Mutation$SignInWithEmailAndPassword(
    Variables$Mutation$SignInWithEmailAndPassword instance,
    TRes Function(Variables$Mutation$SignInWithEmailAndPassword) then,
  ) = _CopyWithImpl$Variables$Mutation$SignInWithEmailAndPassword;

  factory CopyWith$Variables$Mutation$SignInWithEmailAndPassword.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SignInWithEmailAndPassword;

  TRes call({Input$SignInWithEmailAndPasswordInput? input});
}

class _CopyWithImpl$Variables$Mutation$SignInWithEmailAndPassword<TRes>
    implements CopyWith$Variables$Mutation$SignInWithEmailAndPassword<TRes> {
  _CopyWithImpl$Variables$Mutation$SignInWithEmailAndPassword(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SignInWithEmailAndPassword _instance;

  final TRes Function(Variables$Mutation$SignInWithEmailAndPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$SignInWithEmailAndPassword._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$SignInWithEmailAndPasswordInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SignInWithEmailAndPassword<TRes>
    implements CopyWith$Variables$Mutation$SignInWithEmailAndPassword<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SignInWithEmailAndPassword(this._res);

  TRes _res;

  call({Input$SignInWithEmailAndPasswordInput? input}) => _res;
}

class Mutation$SignInWithEmailAndPassword {
  Mutation$SignInWithEmailAndPassword({
    required this.signInWithEmailAndPassword,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SignInWithEmailAndPassword.fromJson(
      Map<String, dynamic> json) {
    final l$signInWithEmailAndPassword = json['signInWithEmailAndPassword'];
    final l$$__typename = json['__typename'];
    return Mutation$SignInWithEmailAndPassword(
      signInWithEmailAndPassword:
          Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword
              .fromJson((l$signInWithEmailAndPassword as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword
      signInWithEmailAndPassword;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$signInWithEmailAndPassword = signInWithEmailAndPassword;
    _resultData['signInWithEmailAndPassword'] =
        l$signInWithEmailAndPassword.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$signInWithEmailAndPassword = signInWithEmailAndPassword;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$signInWithEmailAndPassword,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SignInWithEmailAndPassword) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$signInWithEmailAndPassword = signInWithEmailAndPassword;
    final lOther$signInWithEmailAndPassword = other.signInWithEmailAndPassword;
    if (l$signInWithEmailAndPassword != lOther$signInWithEmailAndPassword) {
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

extension UtilityExtension$Mutation$SignInWithEmailAndPassword
    on Mutation$SignInWithEmailAndPassword {
  CopyWith$Mutation$SignInWithEmailAndPassword<
          Mutation$SignInWithEmailAndPassword>
      get copyWith => CopyWith$Mutation$SignInWithEmailAndPassword(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SignInWithEmailAndPassword<TRes> {
  factory CopyWith$Mutation$SignInWithEmailAndPassword(
    Mutation$SignInWithEmailAndPassword instance,
    TRes Function(Mutation$SignInWithEmailAndPassword) then,
  ) = _CopyWithImpl$Mutation$SignInWithEmailAndPassword;

  factory CopyWith$Mutation$SignInWithEmailAndPassword.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SignInWithEmailAndPassword;

  TRes call({
    Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword?
        signInWithEmailAndPassword,
    String? $__typename,
  });
  CopyWith$Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword<TRes>
      get signInWithEmailAndPassword;
}

class _CopyWithImpl$Mutation$SignInWithEmailAndPassword<TRes>
    implements CopyWith$Mutation$SignInWithEmailAndPassword<TRes> {
  _CopyWithImpl$Mutation$SignInWithEmailAndPassword(
    this._instance,
    this._then,
  );

  final Mutation$SignInWithEmailAndPassword _instance;

  final TRes Function(Mutation$SignInWithEmailAndPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? signInWithEmailAndPassword = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SignInWithEmailAndPassword(
        signInWithEmailAndPassword: signInWithEmailAndPassword == _undefined ||
                signInWithEmailAndPassword == null
            ? _instance.signInWithEmailAndPassword
            : (signInWithEmailAndPassword
                as Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword<TRes>
      get signInWithEmailAndPassword {
    final local$signInWithEmailAndPassword =
        _instance.signInWithEmailAndPassword;
    return CopyWith$Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword(
        local$signInWithEmailAndPassword,
        (e) => call(signInWithEmailAndPassword: e));
  }
}

class _CopyWithStubImpl$Mutation$SignInWithEmailAndPassword<TRes>
    implements CopyWith$Mutation$SignInWithEmailAndPassword<TRes> {
  _CopyWithStubImpl$Mutation$SignInWithEmailAndPassword(this._res);

  TRes _res;

  call({
    Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword?
        signInWithEmailAndPassword,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword<TRes>
      get signInWithEmailAndPassword =>
          CopyWith$Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword
              .stub(_res);
}

const documentNodeMutationSignInWithEmailAndPassword =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SignInWithEmailAndPassword'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'SignInWithEmailAndPasswordInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'signInWithEmailAndPassword'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'accessToken'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'refreshToken'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'user'),
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
Mutation$SignInWithEmailAndPassword
    _parserFn$Mutation$SignInWithEmailAndPassword(Map<String, dynamic> data) =>
        Mutation$SignInWithEmailAndPassword.fromJson(data);
typedef OnMutationCompleted$Mutation$SignInWithEmailAndPassword = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$SignInWithEmailAndPassword?,
);

class Options$Mutation$SignInWithEmailAndPassword
    extends graphql.MutationOptions<Mutation$SignInWithEmailAndPassword> {
  Options$Mutation$SignInWithEmailAndPassword({
    String? operationName,
    required Variables$Mutation$SignInWithEmailAndPassword variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SignInWithEmailAndPassword? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SignInWithEmailAndPassword? onCompleted,
    graphql.OnMutationUpdate<Mutation$SignInWithEmailAndPassword>? update,
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
                        : _parserFn$Mutation$SignInWithEmailAndPassword(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSignInWithEmailAndPassword,
          parserFn: _parserFn$Mutation$SignInWithEmailAndPassword,
        );

  final OnMutationCompleted$Mutation$SignInWithEmailAndPassword?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SignInWithEmailAndPassword
    extends graphql.WatchQueryOptions<Mutation$SignInWithEmailAndPassword> {
  WatchOptions$Mutation$SignInWithEmailAndPassword({
    String? operationName,
    required Variables$Mutation$SignInWithEmailAndPassword variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SignInWithEmailAndPassword? typedOptimisticResult,
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
          document: documentNodeMutationSignInWithEmailAndPassword,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SignInWithEmailAndPassword,
        );
}

extension ClientExtension$Mutation$SignInWithEmailAndPassword
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SignInWithEmailAndPassword>>
      mutate$SignInWithEmailAndPassword(
              Options$Mutation$SignInWithEmailAndPassword options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$SignInWithEmailAndPassword>
      watchMutation$SignInWithEmailAndPassword(
              WatchOptions$Mutation$SignInWithEmailAndPassword options) =>
          this.watchMutation(options);
}

class Mutation$SignInWithEmailAndPassword$HookResult {
  Mutation$SignInWithEmailAndPassword$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$SignInWithEmailAndPassword runMutation;

  final graphql.QueryResult<Mutation$SignInWithEmailAndPassword> result;
}

Mutation$SignInWithEmailAndPassword$HookResult
    useMutation$SignInWithEmailAndPassword(
        [WidgetOptions$Mutation$SignInWithEmailAndPassword? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$SignInWithEmailAndPassword());
  return Mutation$SignInWithEmailAndPassword$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SignInWithEmailAndPassword>
    useWatchMutation$SignInWithEmailAndPassword(
            WatchOptions$Mutation$SignInWithEmailAndPassword options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$SignInWithEmailAndPassword
    extends graphql.MutationOptions<Mutation$SignInWithEmailAndPassword> {
  WidgetOptions$Mutation$SignInWithEmailAndPassword({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SignInWithEmailAndPassword? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SignInWithEmailAndPassword? onCompleted,
    graphql.OnMutationUpdate<Mutation$SignInWithEmailAndPassword>? update,
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
                        : _parserFn$Mutation$SignInWithEmailAndPassword(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSignInWithEmailAndPassword,
          parserFn: _parserFn$Mutation$SignInWithEmailAndPassword,
        );

  final OnMutationCompleted$Mutation$SignInWithEmailAndPassword?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$SignInWithEmailAndPassword
    = graphql.MultiSourceResult<Mutation$SignInWithEmailAndPassword> Function(
  Variables$Mutation$SignInWithEmailAndPassword, {
  Object? optimisticResult,
  Mutation$SignInWithEmailAndPassword? typedOptimisticResult,
});
typedef Builder$Mutation$SignInWithEmailAndPassword = widgets.Widget Function(
  RunMutation$Mutation$SignInWithEmailAndPassword,
  graphql.QueryResult<Mutation$SignInWithEmailAndPassword>?,
);

class Mutation$SignInWithEmailAndPassword$Widget
    extends graphql_flutter.Mutation<Mutation$SignInWithEmailAndPassword> {
  Mutation$SignInWithEmailAndPassword$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SignInWithEmailAndPassword? options,
    required Builder$Mutation$SignInWithEmailAndPassword builder,
  }) : super(
          key: key,
          options:
              options ?? WidgetOptions$Mutation$SignInWithEmailAndPassword(),
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

class Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword {
  Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword({
    required this.accessToken,
    required this.refreshToken,
    required this.user,
    this.$__typename = 'SignInWithEmailAndPasswordResult',
  });

  factory Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword.fromJson(
      Map<String, dynamic> json) {
    final l$accessToken = json['accessToken'];
    final l$refreshToken = json['refreshToken'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword(
      accessToken: (l$accessToken as String),
      refreshToken: (l$refreshToken as String),
      user: Fragment$User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String accessToken;

  final String refreshToken;

  final Fragment$User user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accessToken = accessToken;
    _resultData['accessToken'] = l$accessToken;
    final l$refreshToken = refreshToken;
    _resultData['refreshToken'] = l$refreshToken;
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accessToken = accessToken;
    final l$refreshToken = refreshToken;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accessToken,
      l$refreshToken,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accessToken = accessToken;
    final lOther$accessToken = other.accessToken;
    if (l$accessToken != lOther$accessToken) {
      return false;
    }
    final l$refreshToken = refreshToken;
    final lOther$refreshToken = other.refreshToken;
    if (l$refreshToken != lOther$refreshToken) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword
    on Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword {
  CopyWith$Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword<
          Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword>
      get copyWith =>
          CopyWith$Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword<
    TRes> {
  factory CopyWith$Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword(
    Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword instance,
    TRes Function(
            Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword)
        then,
  ) = _CopyWithImpl$Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword;

  factory CopyWith$Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword;

  TRes call({
    String? accessToken,
    String? refreshToken,
    Fragment$User? user,
    String? $__typename,
  });
  CopyWith$Fragment$User<TRes> get user;
}

class _CopyWithImpl$Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword<
        TRes>
    implements
        CopyWith$Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword<
            TRes> {
  _CopyWithImpl$Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword(
    this._instance,
    this._then,
  );

  final Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword
      _instance;

  final TRes Function(
      Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accessToken = _undefined,
    Object? refreshToken = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword(
        accessToken: accessToken == _undefined || accessToken == null
            ? _instance.accessToken
            : (accessToken as String),
        refreshToken: refreshToken == _undefined || refreshToken == null
            ? _instance.refreshToken
            : (refreshToken as String),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Fragment$User),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$User<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Fragment$User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword<
        TRes>
    implements
        CopyWith$Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword<
            TRes> {
  _CopyWithStubImpl$Mutation$SignInWithEmailAndPassword$signInWithEmailAndPassword(
      this._res);

  TRes _res;

  call({
    String? accessToken,
    String? refreshToken,
    Fragment$User? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$User<TRes> get user => CopyWith$Fragment$User.stub(_res);
}

class Variables$Mutation$SignUpWithEmailAndPassword {
  factory Variables$Mutation$SignUpWithEmailAndPassword(
          {required Input$SignUpWithEmailAndPasswordInput input}) =>
      Variables$Mutation$SignUpWithEmailAndPassword._({
        r'input': input,
      });

  Variables$Mutation$SignUpWithEmailAndPassword._(this._$data);

  factory Variables$Mutation$SignUpWithEmailAndPassword.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SignUpWithEmailAndPasswordInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$SignUpWithEmailAndPassword._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SignUpWithEmailAndPasswordInput get input =>
      (_$data['input'] as Input$SignUpWithEmailAndPasswordInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SignUpWithEmailAndPassword<
          Variables$Mutation$SignUpWithEmailAndPassword>
      get copyWith => CopyWith$Variables$Mutation$SignUpWithEmailAndPassword(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SignUpWithEmailAndPassword) ||
        runtimeType != other.runtimeType) {
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
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$SignUpWithEmailAndPassword<TRes> {
  factory CopyWith$Variables$Mutation$SignUpWithEmailAndPassword(
    Variables$Mutation$SignUpWithEmailAndPassword instance,
    TRes Function(Variables$Mutation$SignUpWithEmailAndPassword) then,
  ) = _CopyWithImpl$Variables$Mutation$SignUpWithEmailAndPassword;

  factory CopyWith$Variables$Mutation$SignUpWithEmailAndPassword.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SignUpWithEmailAndPassword;

  TRes call({Input$SignUpWithEmailAndPasswordInput? input});
}

class _CopyWithImpl$Variables$Mutation$SignUpWithEmailAndPassword<TRes>
    implements CopyWith$Variables$Mutation$SignUpWithEmailAndPassword<TRes> {
  _CopyWithImpl$Variables$Mutation$SignUpWithEmailAndPassword(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SignUpWithEmailAndPassword _instance;

  final TRes Function(Variables$Mutation$SignUpWithEmailAndPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$SignUpWithEmailAndPassword._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$SignUpWithEmailAndPasswordInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SignUpWithEmailAndPassword<TRes>
    implements CopyWith$Variables$Mutation$SignUpWithEmailAndPassword<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SignUpWithEmailAndPassword(this._res);

  TRes _res;

  call({Input$SignUpWithEmailAndPasswordInput? input}) => _res;
}

class Mutation$SignUpWithEmailAndPassword {
  Mutation$SignUpWithEmailAndPassword({
    required this.signInWithEmailAndPassword,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SignUpWithEmailAndPassword.fromJson(
      Map<String, dynamic> json) {
    final l$signInWithEmailAndPassword = json['signInWithEmailAndPassword'];
    final l$$__typename = json['__typename'];
    return Mutation$SignUpWithEmailAndPassword(
      signInWithEmailAndPassword:
          Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword
              .fromJson((l$signInWithEmailAndPassword as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword
      signInWithEmailAndPassword;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$signInWithEmailAndPassword = signInWithEmailAndPassword;
    _resultData['signInWithEmailAndPassword'] =
        l$signInWithEmailAndPassword.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$signInWithEmailAndPassword = signInWithEmailAndPassword;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$signInWithEmailAndPassword,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SignUpWithEmailAndPassword) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$signInWithEmailAndPassword = signInWithEmailAndPassword;
    final lOther$signInWithEmailAndPassword = other.signInWithEmailAndPassword;
    if (l$signInWithEmailAndPassword != lOther$signInWithEmailAndPassword) {
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

extension UtilityExtension$Mutation$SignUpWithEmailAndPassword
    on Mutation$SignUpWithEmailAndPassword {
  CopyWith$Mutation$SignUpWithEmailAndPassword<
          Mutation$SignUpWithEmailAndPassword>
      get copyWith => CopyWith$Mutation$SignUpWithEmailAndPassword(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SignUpWithEmailAndPassword<TRes> {
  factory CopyWith$Mutation$SignUpWithEmailAndPassword(
    Mutation$SignUpWithEmailAndPassword instance,
    TRes Function(Mutation$SignUpWithEmailAndPassword) then,
  ) = _CopyWithImpl$Mutation$SignUpWithEmailAndPassword;

  factory CopyWith$Mutation$SignUpWithEmailAndPassword.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SignUpWithEmailAndPassword;

  TRes call({
    Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword?
        signInWithEmailAndPassword,
    String? $__typename,
  });
  CopyWith$Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword<TRes>
      get signInWithEmailAndPassword;
}

class _CopyWithImpl$Mutation$SignUpWithEmailAndPassword<TRes>
    implements CopyWith$Mutation$SignUpWithEmailAndPassword<TRes> {
  _CopyWithImpl$Mutation$SignUpWithEmailAndPassword(
    this._instance,
    this._then,
  );

  final Mutation$SignUpWithEmailAndPassword _instance;

  final TRes Function(Mutation$SignUpWithEmailAndPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? signInWithEmailAndPassword = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SignUpWithEmailAndPassword(
        signInWithEmailAndPassword: signInWithEmailAndPassword == _undefined ||
                signInWithEmailAndPassword == null
            ? _instance.signInWithEmailAndPassword
            : (signInWithEmailAndPassword
                as Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword<TRes>
      get signInWithEmailAndPassword {
    final local$signInWithEmailAndPassword =
        _instance.signInWithEmailAndPassword;
    return CopyWith$Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword(
        local$signInWithEmailAndPassword,
        (e) => call(signInWithEmailAndPassword: e));
  }
}

class _CopyWithStubImpl$Mutation$SignUpWithEmailAndPassword<TRes>
    implements CopyWith$Mutation$SignUpWithEmailAndPassword<TRes> {
  _CopyWithStubImpl$Mutation$SignUpWithEmailAndPassword(this._res);

  TRes _res;

  call({
    Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword?
        signInWithEmailAndPassword,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword<TRes>
      get signInWithEmailAndPassword =>
          CopyWith$Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword
              .stub(_res);
}

const documentNodeMutationSignUpWithEmailAndPassword =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SignUpWithEmailAndPassword'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'SignUpWithEmailAndPasswordInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'signInWithEmailAndPassword'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'accessToken'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'refreshToken'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'user'),
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
Mutation$SignUpWithEmailAndPassword
    _parserFn$Mutation$SignUpWithEmailAndPassword(Map<String, dynamic> data) =>
        Mutation$SignUpWithEmailAndPassword.fromJson(data);
typedef OnMutationCompleted$Mutation$SignUpWithEmailAndPassword = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$SignUpWithEmailAndPassword?,
);

class Options$Mutation$SignUpWithEmailAndPassword
    extends graphql.MutationOptions<Mutation$SignUpWithEmailAndPassword> {
  Options$Mutation$SignUpWithEmailAndPassword({
    String? operationName,
    required Variables$Mutation$SignUpWithEmailAndPassword variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SignUpWithEmailAndPassword? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SignUpWithEmailAndPassword? onCompleted,
    graphql.OnMutationUpdate<Mutation$SignUpWithEmailAndPassword>? update,
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
                        : _parserFn$Mutation$SignUpWithEmailAndPassword(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSignUpWithEmailAndPassword,
          parserFn: _parserFn$Mutation$SignUpWithEmailAndPassword,
        );

  final OnMutationCompleted$Mutation$SignUpWithEmailAndPassword?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SignUpWithEmailAndPassword
    extends graphql.WatchQueryOptions<Mutation$SignUpWithEmailAndPassword> {
  WatchOptions$Mutation$SignUpWithEmailAndPassword({
    String? operationName,
    required Variables$Mutation$SignUpWithEmailAndPassword variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SignUpWithEmailAndPassword? typedOptimisticResult,
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
          document: documentNodeMutationSignUpWithEmailAndPassword,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SignUpWithEmailAndPassword,
        );
}

extension ClientExtension$Mutation$SignUpWithEmailAndPassword
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SignUpWithEmailAndPassword>>
      mutate$SignUpWithEmailAndPassword(
              Options$Mutation$SignUpWithEmailAndPassword options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$SignUpWithEmailAndPassword>
      watchMutation$SignUpWithEmailAndPassword(
              WatchOptions$Mutation$SignUpWithEmailAndPassword options) =>
          this.watchMutation(options);
}

class Mutation$SignUpWithEmailAndPassword$HookResult {
  Mutation$SignUpWithEmailAndPassword$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$SignUpWithEmailAndPassword runMutation;

  final graphql.QueryResult<Mutation$SignUpWithEmailAndPassword> result;
}

Mutation$SignUpWithEmailAndPassword$HookResult
    useMutation$SignUpWithEmailAndPassword(
        [WidgetOptions$Mutation$SignUpWithEmailAndPassword? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$SignUpWithEmailAndPassword());
  return Mutation$SignUpWithEmailAndPassword$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SignUpWithEmailAndPassword>
    useWatchMutation$SignUpWithEmailAndPassword(
            WatchOptions$Mutation$SignUpWithEmailAndPassword options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$SignUpWithEmailAndPassword
    extends graphql.MutationOptions<Mutation$SignUpWithEmailAndPassword> {
  WidgetOptions$Mutation$SignUpWithEmailAndPassword({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SignUpWithEmailAndPassword? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SignUpWithEmailAndPassword? onCompleted,
    graphql.OnMutationUpdate<Mutation$SignUpWithEmailAndPassword>? update,
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
                        : _parserFn$Mutation$SignUpWithEmailAndPassword(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSignUpWithEmailAndPassword,
          parserFn: _parserFn$Mutation$SignUpWithEmailAndPassword,
        );

  final OnMutationCompleted$Mutation$SignUpWithEmailAndPassword?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$SignUpWithEmailAndPassword
    = graphql.MultiSourceResult<Mutation$SignUpWithEmailAndPassword> Function(
  Variables$Mutation$SignUpWithEmailAndPassword, {
  Object? optimisticResult,
  Mutation$SignUpWithEmailAndPassword? typedOptimisticResult,
});
typedef Builder$Mutation$SignUpWithEmailAndPassword = widgets.Widget Function(
  RunMutation$Mutation$SignUpWithEmailAndPassword,
  graphql.QueryResult<Mutation$SignUpWithEmailAndPassword>?,
);

class Mutation$SignUpWithEmailAndPassword$Widget
    extends graphql_flutter.Mutation<Mutation$SignUpWithEmailAndPassword> {
  Mutation$SignUpWithEmailAndPassword$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SignUpWithEmailAndPassword? options,
    required Builder$Mutation$SignUpWithEmailAndPassword builder,
  }) : super(
          key: key,
          options:
              options ?? WidgetOptions$Mutation$SignUpWithEmailAndPassword(),
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

class Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword {
  Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword({
    required this.accessToken,
    required this.refreshToken,
    required this.user,
    this.$__typename = 'SignInWithEmailAndPasswordResult',
  });

  factory Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword.fromJson(
      Map<String, dynamic> json) {
    final l$accessToken = json['accessToken'];
    final l$refreshToken = json['refreshToken'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword(
      accessToken: (l$accessToken as String),
      refreshToken: (l$refreshToken as String),
      user: Fragment$User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String accessToken;

  final String refreshToken;

  final Fragment$User user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accessToken = accessToken;
    _resultData['accessToken'] = l$accessToken;
    final l$refreshToken = refreshToken;
    _resultData['refreshToken'] = l$refreshToken;
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accessToken = accessToken;
    final l$refreshToken = refreshToken;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accessToken,
      l$refreshToken,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accessToken = accessToken;
    final lOther$accessToken = other.accessToken;
    if (l$accessToken != lOther$accessToken) {
      return false;
    }
    final l$refreshToken = refreshToken;
    final lOther$refreshToken = other.refreshToken;
    if (l$refreshToken != lOther$refreshToken) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword
    on Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword {
  CopyWith$Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword<
          Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword>
      get copyWith =>
          CopyWith$Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword<
    TRes> {
  factory CopyWith$Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword(
    Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword instance,
    TRes Function(
            Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword)
        then,
  ) = _CopyWithImpl$Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword;

  factory CopyWith$Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword;

  TRes call({
    String? accessToken,
    String? refreshToken,
    Fragment$User? user,
    String? $__typename,
  });
  CopyWith$Fragment$User<TRes> get user;
}

class _CopyWithImpl$Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword<
        TRes>
    implements
        CopyWith$Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword<
            TRes> {
  _CopyWithImpl$Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword(
    this._instance,
    this._then,
  );

  final Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword
      _instance;

  final TRes Function(
      Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accessToken = _undefined,
    Object? refreshToken = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword(
        accessToken: accessToken == _undefined || accessToken == null
            ? _instance.accessToken
            : (accessToken as String),
        refreshToken: refreshToken == _undefined || refreshToken == null
            ? _instance.refreshToken
            : (refreshToken as String),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Fragment$User),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$User<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Fragment$User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword<
        TRes>
    implements
        CopyWith$Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword<
            TRes> {
  _CopyWithStubImpl$Mutation$SignUpWithEmailAndPassword$signInWithEmailAndPassword(
      this._res);

  TRes _res;

  call({
    String? accessToken,
    String? refreshToken,
    Fragment$User? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$User<TRes> get user => CopyWith$Fragment$User.stub(_res);
}

class Variables$Mutation$SignOut {
  factory Variables$Mutation$SignOut({required Input$SignOutInput input}) =>
      Variables$Mutation$SignOut._({
        r'input': input,
      });

  Variables$Mutation$SignOut._(this._$data);

  factory Variables$Mutation$SignOut.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$SignOutInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$SignOut._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SignOutInput get input => (_$data['input'] as Input$SignOutInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SignOut<Variables$Mutation$SignOut>
      get copyWith => CopyWith$Variables$Mutation$SignOut(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SignOut) ||
        runtimeType != other.runtimeType) {
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
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$SignOut<TRes> {
  factory CopyWith$Variables$Mutation$SignOut(
    Variables$Mutation$SignOut instance,
    TRes Function(Variables$Mutation$SignOut) then,
  ) = _CopyWithImpl$Variables$Mutation$SignOut;

  factory CopyWith$Variables$Mutation$SignOut.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SignOut;

  TRes call({Input$SignOutInput? input});
}

class _CopyWithImpl$Variables$Mutation$SignOut<TRes>
    implements CopyWith$Variables$Mutation$SignOut<TRes> {
  _CopyWithImpl$Variables$Mutation$SignOut(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SignOut _instance;

  final TRes Function(Variables$Mutation$SignOut) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$SignOut._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$SignOutInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SignOut<TRes>
    implements CopyWith$Variables$Mutation$SignOut<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SignOut(this._res);

  TRes _res;

  call({Input$SignOutInput? input}) => _res;
}

class Mutation$SignOut {
  Mutation$SignOut({
    required this.signOut,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SignOut.fromJson(Map<String, dynamic> json) {
    final l$signOut = json['signOut'];
    final l$$__typename = json['__typename'];
    return Mutation$SignOut(
      signOut: (l$signOut as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool signOut;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$signOut = signOut;
    _resultData['signOut'] = l$signOut;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$signOut = signOut;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$signOut,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SignOut) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$signOut = signOut;
    final lOther$signOut = other.signOut;
    if (l$signOut != lOther$signOut) {
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

extension UtilityExtension$Mutation$SignOut on Mutation$SignOut {
  CopyWith$Mutation$SignOut<Mutation$SignOut> get copyWith =>
      CopyWith$Mutation$SignOut(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SignOut<TRes> {
  factory CopyWith$Mutation$SignOut(
    Mutation$SignOut instance,
    TRes Function(Mutation$SignOut) then,
  ) = _CopyWithImpl$Mutation$SignOut;

  factory CopyWith$Mutation$SignOut.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SignOut;

  TRes call({
    bool? signOut,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SignOut<TRes>
    implements CopyWith$Mutation$SignOut<TRes> {
  _CopyWithImpl$Mutation$SignOut(
    this._instance,
    this._then,
  );

  final Mutation$SignOut _instance;

  final TRes Function(Mutation$SignOut) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? signOut = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SignOut(
        signOut: signOut == _undefined || signOut == null
            ? _instance.signOut
            : (signOut as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SignOut<TRes>
    implements CopyWith$Mutation$SignOut<TRes> {
  _CopyWithStubImpl$Mutation$SignOut(this._res);

  TRes _res;

  call({
    bool? signOut,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationSignOut = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SignOut'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'SignOutInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'signOut'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
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
Mutation$SignOut _parserFn$Mutation$SignOut(Map<String, dynamic> data) =>
    Mutation$SignOut.fromJson(data);
typedef OnMutationCompleted$Mutation$SignOut = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SignOut?,
);

class Options$Mutation$SignOut
    extends graphql.MutationOptions<Mutation$SignOut> {
  Options$Mutation$SignOut({
    String? operationName,
    required Variables$Mutation$SignOut variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SignOut? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SignOut? onCompleted,
    graphql.OnMutationUpdate<Mutation$SignOut>? update,
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
                    data == null ? null : _parserFn$Mutation$SignOut(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSignOut,
          parserFn: _parserFn$Mutation$SignOut,
        );

  final OnMutationCompleted$Mutation$SignOut? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SignOut
    extends graphql.WatchQueryOptions<Mutation$SignOut> {
  WatchOptions$Mutation$SignOut({
    String? operationName,
    required Variables$Mutation$SignOut variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SignOut? typedOptimisticResult,
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
          document: documentNodeMutationSignOut,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SignOut,
        );
}

extension ClientExtension$Mutation$SignOut on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SignOut>> mutate$SignOut(
          Options$Mutation$SignOut options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$SignOut> watchMutation$SignOut(
          WatchOptions$Mutation$SignOut options) =>
      this.watchMutation(options);
}

class Mutation$SignOut$HookResult {
  Mutation$SignOut$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$SignOut runMutation;

  final graphql.QueryResult<Mutation$SignOut> result;
}

Mutation$SignOut$HookResult useMutation$SignOut(
    [WidgetOptions$Mutation$SignOut? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptions$Mutation$SignOut());
  return Mutation$SignOut$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SignOut> useWatchMutation$SignOut(
        WatchOptions$Mutation$SignOut options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$SignOut
    extends graphql.MutationOptions<Mutation$SignOut> {
  WidgetOptions$Mutation$SignOut({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SignOut? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SignOut? onCompleted,
    graphql.OnMutationUpdate<Mutation$SignOut>? update,
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
                    data == null ? null : _parserFn$Mutation$SignOut(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSignOut,
          parserFn: _parserFn$Mutation$SignOut,
        );

  final OnMutationCompleted$Mutation$SignOut? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$SignOut
    = graphql.MultiSourceResult<Mutation$SignOut> Function(
  Variables$Mutation$SignOut, {
  Object? optimisticResult,
  Mutation$SignOut? typedOptimisticResult,
});
typedef Builder$Mutation$SignOut = widgets.Widget Function(
  RunMutation$Mutation$SignOut,
  graphql.QueryResult<Mutation$SignOut>?,
);

class Mutation$SignOut$Widget
    extends graphql_flutter.Mutation<Mutation$SignOut> {
  Mutation$SignOut$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SignOut? options,
    required Builder$Mutation$SignOut builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$SignOut(),
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

class Variables$Mutation$RefreshToken {
  factory Variables$Mutation$RefreshToken(
          {required Input$RefreshTokenInput input}) =>
      Variables$Mutation$RefreshToken._({
        r'input': input,
      });

  Variables$Mutation$RefreshToken._(this._$data);

  factory Variables$Mutation$RefreshToken.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$RefreshTokenInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$RefreshToken._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$RefreshTokenInput get input =>
      (_$data['input'] as Input$RefreshTokenInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$RefreshToken<Variables$Mutation$RefreshToken>
      get copyWith => CopyWith$Variables$Mutation$RefreshToken(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$RefreshToken) ||
        runtimeType != other.runtimeType) {
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
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$RefreshToken<TRes> {
  factory CopyWith$Variables$Mutation$RefreshToken(
    Variables$Mutation$RefreshToken instance,
    TRes Function(Variables$Mutation$RefreshToken) then,
  ) = _CopyWithImpl$Variables$Mutation$RefreshToken;

  factory CopyWith$Variables$Mutation$RefreshToken.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$RefreshToken;

  TRes call({Input$RefreshTokenInput? input});
}

class _CopyWithImpl$Variables$Mutation$RefreshToken<TRes>
    implements CopyWith$Variables$Mutation$RefreshToken<TRes> {
  _CopyWithImpl$Variables$Mutation$RefreshToken(
    this._instance,
    this._then,
  );

  final Variables$Mutation$RefreshToken _instance;

  final TRes Function(Variables$Mutation$RefreshToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$RefreshToken._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$RefreshTokenInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$RefreshToken<TRes>
    implements CopyWith$Variables$Mutation$RefreshToken<TRes> {
  _CopyWithStubImpl$Variables$Mutation$RefreshToken(this._res);

  TRes _res;

  call({Input$RefreshTokenInput? input}) => _res;
}

class Mutation$RefreshToken {
  Mutation$RefreshToken({
    required this.refreshToken,
    this.$__typename = 'Mutation',
  });

  factory Mutation$RefreshToken.fromJson(Map<String, dynamic> json) {
    final l$refreshToken = json['refreshToken'];
    final l$$__typename = json['__typename'];
    return Mutation$RefreshToken(
      refreshToken: Mutation$RefreshToken$refreshToken.fromJson(
          (l$refreshToken as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$RefreshToken$refreshToken refreshToken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$refreshToken = refreshToken;
    _resultData['refreshToken'] = l$refreshToken.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$refreshToken = refreshToken;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$refreshToken,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$RefreshToken) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$refreshToken = refreshToken;
    final lOther$refreshToken = other.refreshToken;
    if (l$refreshToken != lOther$refreshToken) {
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

extension UtilityExtension$Mutation$RefreshToken on Mutation$RefreshToken {
  CopyWith$Mutation$RefreshToken<Mutation$RefreshToken> get copyWith =>
      CopyWith$Mutation$RefreshToken(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$RefreshToken<TRes> {
  factory CopyWith$Mutation$RefreshToken(
    Mutation$RefreshToken instance,
    TRes Function(Mutation$RefreshToken) then,
  ) = _CopyWithImpl$Mutation$RefreshToken;

  factory CopyWith$Mutation$RefreshToken.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RefreshToken;

  TRes call({
    Mutation$RefreshToken$refreshToken? refreshToken,
    String? $__typename,
  });
  CopyWith$Mutation$RefreshToken$refreshToken<TRes> get refreshToken;
}

class _CopyWithImpl$Mutation$RefreshToken<TRes>
    implements CopyWith$Mutation$RefreshToken<TRes> {
  _CopyWithImpl$Mutation$RefreshToken(
    this._instance,
    this._then,
  );

  final Mutation$RefreshToken _instance;

  final TRes Function(Mutation$RefreshToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? refreshToken = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RefreshToken(
        refreshToken: refreshToken == _undefined || refreshToken == null
            ? _instance.refreshToken
            : (refreshToken as Mutation$RefreshToken$refreshToken),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$RefreshToken$refreshToken<TRes> get refreshToken {
    final local$refreshToken = _instance.refreshToken;
    return CopyWith$Mutation$RefreshToken$refreshToken(
        local$refreshToken, (e) => call(refreshToken: e));
  }
}

class _CopyWithStubImpl$Mutation$RefreshToken<TRes>
    implements CopyWith$Mutation$RefreshToken<TRes> {
  _CopyWithStubImpl$Mutation$RefreshToken(this._res);

  TRes _res;

  call({
    Mutation$RefreshToken$refreshToken? refreshToken,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$RefreshToken$refreshToken<TRes> get refreshToken =>
      CopyWith$Mutation$RefreshToken$refreshToken.stub(_res);
}

const documentNodeMutationRefreshToken = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'RefreshToken'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'RefreshTokenInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'refreshToken'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'accessToken'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'refreshToken'),
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
Mutation$RefreshToken _parserFn$Mutation$RefreshToken(
        Map<String, dynamic> data) =>
    Mutation$RefreshToken.fromJson(data);
typedef OnMutationCompleted$Mutation$RefreshToken = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$RefreshToken?,
);

class Options$Mutation$RefreshToken
    extends graphql.MutationOptions<Mutation$RefreshToken> {
  Options$Mutation$RefreshToken({
    String? operationName,
    required Variables$Mutation$RefreshToken variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RefreshToken? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$RefreshToken? onCompleted,
    graphql.OnMutationUpdate<Mutation$RefreshToken>? update,
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
                    data == null ? null : _parserFn$Mutation$RefreshToken(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationRefreshToken,
          parserFn: _parserFn$Mutation$RefreshToken,
        );

  final OnMutationCompleted$Mutation$RefreshToken? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$RefreshToken
    extends graphql.WatchQueryOptions<Mutation$RefreshToken> {
  WatchOptions$Mutation$RefreshToken({
    String? operationName,
    required Variables$Mutation$RefreshToken variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RefreshToken? typedOptimisticResult,
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
          document: documentNodeMutationRefreshToken,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$RefreshToken,
        );
}

extension ClientExtension$Mutation$RefreshToken on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$RefreshToken>> mutate$RefreshToken(
          Options$Mutation$RefreshToken options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$RefreshToken> watchMutation$RefreshToken(
          WatchOptions$Mutation$RefreshToken options) =>
      this.watchMutation(options);
}

class Mutation$RefreshToken$HookResult {
  Mutation$RefreshToken$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$RefreshToken runMutation;

  final graphql.QueryResult<Mutation$RefreshToken> result;
}

Mutation$RefreshToken$HookResult useMutation$RefreshToken(
    [WidgetOptions$Mutation$RefreshToken? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$RefreshToken());
  return Mutation$RefreshToken$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$RefreshToken> useWatchMutation$RefreshToken(
        WatchOptions$Mutation$RefreshToken options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$RefreshToken
    extends graphql.MutationOptions<Mutation$RefreshToken> {
  WidgetOptions$Mutation$RefreshToken({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RefreshToken? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$RefreshToken? onCompleted,
    graphql.OnMutationUpdate<Mutation$RefreshToken>? update,
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
                    data == null ? null : _parserFn$Mutation$RefreshToken(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationRefreshToken,
          parserFn: _parserFn$Mutation$RefreshToken,
        );

  final OnMutationCompleted$Mutation$RefreshToken? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$RefreshToken
    = graphql.MultiSourceResult<Mutation$RefreshToken> Function(
  Variables$Mutation$RefreshToken, {
  Object? optimisticResult,
  Mutation$RefreshToken? typedOptimisticResult,
});
typedef Builder$Mutation$RefreshToken = widgets.Widget Function(
  RunMutation$Mutation$RefreshToken,
  graphql.QueryResult<Mutation$RefreshToken>?,
);

class Mutation$RefreshToken$Widget
    extends graphql_flutter.Mutation<Mutation$RefreshToken> {
  Mutation$RefreshToken$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$RefreshToken? options,
    required Builder$Mutation$RefreshToken builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$RefreshToken(),
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

class Mutation$RefreshToken$refreshToken {
  Mutation$RefreshToken$refreshToken({
    required this.accessToken,
    required this.refreshToken,
    this.$__typename = 'RefreshTokenResult',
  });

  factory Mutation$RefreshToken$refreshToken.fromJson(
      Map<String, dynamic> json) {
    final l$accessToken = json['accessToken'];
    final l$refreshToken = json['refreshToken'];
    final l$$__typename = json['__typename'];
    return Mutation$RefreshToken$refreshToken(
      accessToken: (l$accessToken as String),
      refreshToken: (l$refreshToken as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String accessToken;

  final String refreshToken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accessToken = accessToken;
    _resultData['accessToken'] = l$accessToken;
    final l$refreshToken = refreshToken;
    _resultData['refreshToken'] = l$refreshToken;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accessToken = accessToken;
    final l$refreshToken = refreshToken;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accessToken,
      l$refreshToken,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$RefreshToken$refreshToken) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accessToken = accessToken;
    final lOther$accessToken = other.accessToken;
    if (l$accessToken != lOther$accessToken) {
      return false;
    }
    final l$refreshToken = refreshToken;
    final lOther$refreshToken = other.refreshToken;
    if (l$refreshToken != lOther$refreshToken) {
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

extension UtilityExtension$Mutation$RefreshToken$refreshToken
    on Mutation$RefreshToken$refreshToken {
  CopyWith$Mutation$RefreshToken$refreshToken<
          Mutation$RefreshToken$refreshToken>
      get copyWith => CopyWith$Mutation$RefreshToken$refreshToken(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RefreshToken$refreshToken<TRes> {
  factory CopyWith$Mutation$RefreshToken$refreshToken(
    Mutation$RefreshToken$refreshToken instance,
    TRes Function(Mutation$RefreshToken$refreshToken) then,
  ) = _CopyWithImpl$Mutation$RefreshToken$refreshToken;

  factory CopyWith$Mutation$RefreshToken$refreshToken.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RefreshToken$refreshToken;

  TRes call({
    String? accessToken,
    String? refreshToken,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$RefreshToken$refreshToken<TRes>
    implements CopyWith$Mutation$RefreshToken$refreshToken<TRes> {
  _CopyWithImpl$Mutation$RefreshToken$refreshToken(
    this._instance,
    this._then,
  );

  final Mutation$RefreshToken$refreshToken _instance;

  final TRes Function(Mutation$RefreshToken$refreshToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accessToken = _undefined,
    Object? refreshToken = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RefreshToken$refreshToken(
        accessToken: accessToken == _undefined || accessToken == null
            ? _instance.accessToken
            : (accessToken as String),
        refreshToken: refreshToken == _undefined || refreshToken == null
            ? _instance.refreshToken
            : (refreshToken as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$RefreshToken$refreshToken<TRes>
    implements CopyWith$Mutation$RefreshToken$refreshToken<TRes> {
  _CopyWithStubImpl$Mutation$RefreshToken$refreshToken(this._res);

  TRes _res;

  call({
    String? accessToken,
    String? refreshToken,
    String? $__typename,
  }) =>
      _res;
}
