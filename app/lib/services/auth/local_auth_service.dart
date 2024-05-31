import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:jhanas/api/graphql/auth.graphql.dart';
import 'package:jhanas/api/graphql/schema.graphql.dart';
import 'package:jhanas/api/graphql/user.graphql.dart';
import 'package:jhanas/models/user.dart';
import 'package:jhanas/services/app_service.dart';
import 'package:jhanas/services/auth/auth_service.dart';
import 'package:jhanas/services/auth/token_mixin.dart';
import 'package:jhanas/services/auth/user_mixin.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _refreshTokenKey = 'refreshToken';

class LocalAuthService extends AuthService with ChangeNotifier, UserMixin, TokenMixin {
  final _prefs = GetIt.instance<SharedPreferences>();
  final _app = GetIt.instance<AppService>();
  final _gql = GetIt.instance<GraphQLClient>();

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    final input = Input$SignInWithEmailAndPasswordInput(email: email, password: password);
    final result = await _gql.mutate$SignInWithEmailAndPassword(
        Options$Mutation$SignInWithEmailAndPassword(
            variables: Variables$Mutation$SignInWithEmailAndPassword(input: input)));

    if (result.hasException) {
      throw result.exception!;
    }

    final Fragment$User user =
        Fragment$User.fromJson(result.data?['signInWithEmailAndPassword']?['user']);
    final String accessToken = result.data?['signInWithEmailAndPassword']?['accessToken'];
    final String refreshToken = result.data?['signInWithEmailAndPassword']?['refreshToken'];

    await _logInLocalUser(user);
    await setAuthToken(accessToken);
    await _setRefreshToken(refreshToken);
  }

  @override
  Future<void> signUpWithEmailAndPassword(String email, String password, {String name = ''}) {
    final input =
        Input$SignUpWithEmailAndPasswordInput(email: email, password: password, name: name);
    return _gql
        .mutate$SignUpWithEmailAndPassword(Options$Mutation$SignUpWithEmailAndPassword(
            variables: Variables$Mutation$SignUpWithEmailAndPassword(input: input)))
        .then((result) {
      if (result.hasException) {
        throw result.exception!;
      }

      final Fragment$User user =
          Fragment$User.fromJson(result.data?['signUpWithEmailAndPassword']?['user']);
      final String accessToken = result.data?['signUpWithEmailAndPassword']?['accessToken'];
      final String refreshToken = result.data?['signUpWithEmailAndPassword']?['refreshToken'];

      _logInLocalUser(user);
      setAuthToken(accessToken);
      _setRefreshToken(refreshToken);
    });
  }

  @override
  Future<void> signOut() async {
    final refreshToken = await _getRefreshToken();
    if (refreshToken != null) {
      final result = await _gql.mutate$SignOut(Options$Mutation$SignOut(
          variables:
              Variables$Mutation$SignOut(input: Input$SignOutInput(refreshToken: refreshToken))));
      if (result.hasException) {
        if (kDebugMode) {
          print(result.exception);
        }
      }
    }
    await setAuthToken(null);
    _setLocalUser(null);
  }

  @override
  Future<void> onAppStart() async {
    _refetchUser();
  }

  @override
  Future<String?> updateToken() async {
    final refreshToken = _prefs.getString(_refreshTokenKey);
    if (refreshToken == null || JwtDecoder.isExpired(refreshToken)) {
      await _setRefreshToken(null);
      await setAuthToken(null);
      return null;
    }

    final result = await _gql.mutate$RefreshToken(Options$Mutation$RefreshToken(
        operationName: 'RefreshToken',
        variables: Variables$Mutation$RefreshToken(
            input: Input$RefreshTokenInput(refreshToken: refreshToken))));

    if (result.hasException) {
      await setAuthToken(null);
      throw result.exception!;
    }

    final String accessToken = result.data?['refreshToken']?['accessToken'];
    await setAuthToken(accessToken);

    final String newRefreshToken = result.data?['refreshToken']?['refreshToken'];
    await _setRefreshToken(newRefreshToken);

    return accessToken;
  }

  // ================================= PRIVATE ===================================

  Future<void> _refetchUser() async {
    final token = await getAuthToken();
    if (token == null) {
      await _setLocalUser(null);
      return;
    }
    final result = await _gql.query<Query$FetchUser>(
      QueryOptions<Query$FetchUser>(document: documentNodeQueryFetchUser),
    );
    if (result.hasException) {
      await setAuthToken(null);
      return;
    }

    final gqlUser = result.data?['me'];
    await _setLocalUser(Fragment$User.fromJson(gqlUser));
  }

  Future<void> _logInLocalUser(Fragment$User u) async {
    await _setLocalUser(u);
    _app.onboarding = true;
  }

  FutureOr<void> _setRefreshToken(String? token) async {
    if (token == null) {
      _prefs.remove(_refreshTokenKey);
    } else {
      _prefs.setString(_refreshTokenKey, token);
    }
  }

  FutureOr<String?> _getRefreshToken() async {
    var token = _prefs.getString(_refreshTokenKey);
    if (token == null) {
      return null;
    }
    if (JwtDecoder.isExpired(token)) {
      token = await updateToken();
    }
    return token;
  }

  Future<void> _setLocalUser(Fragment$User? gqlUser) async {
    if (gqlUser == null) {
      user = null;
      return;
    }

    user = User(
      me: gqlUser,
    );
  }
}
