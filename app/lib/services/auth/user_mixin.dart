import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';
import 'package:jhanas/api/graphql/user.graphql.dart';
import 'package:jhanas/models/user.dart';
import 'package:jhanas/services/app_service.dart';

mixin UserMixin on ChangeNotifier {
  final _app = GetIt.instance<AppService>();
  final _gql = GetIt.instance<GraphQLClient>();

  final StreamController<User?> _onAuthStateChange = StreamController<User?>.broadcast();

  User? _user;
  User? get user => _user;
  set user(User? value) {
    _user = value;
    _app.loginState = value != null;

    _onAuthStateChange.add(value);
    notifyListeners();
  }

  Stream<User?> get onAuthStateChange => _onAuthStateChange.stream;

  Future<Fragment$User?> fetchUser() async {
    final result = await _gql.query<Query$FetchUser>(
      QueryOptions<Query$FetchUser>(document: documentNodeQueryFetchUser),
    );
    if (result.hasException) {
      return null;
    }

    final gqlUser = result.data?['me'];
    return Fragment$User.fromJson(gqlUser);
  }
}
