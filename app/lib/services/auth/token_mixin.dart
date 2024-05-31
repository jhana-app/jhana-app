import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _authTokenKey = 'authToken';

abstract mixin class TokenMixin {
  final _prefs = GetIt.instance<SharedPreferences>();

  // will be sent as a Bearer token in the Authorization header.
  FutureOr<String?> getAuthToken() async {
    var token = _prefs.getString(_authTokenKey);
    if (token == null) {
      return null;
    }

    final DateTime now = DateTime.now();
    final DateTime expirationDate = JwtDecoder.getExpirationDate(token);
    if (expirationDate.isBefore(now.subtract(const Duration(minutes: 1)))) {
      token = await updateToken();
    }

    if (kDebugMode) {
      print('Token: $token');
    }

    return token;
  }

  FutureOr<void> setAuthToken(String? token) async {
    if (token == null) {
      _prefs.remove(_authTokenKey);
    } else {
      _prefs.setString(_authTokenKey, token);
    }
  }

  Future<void> removeAuthToken() async {
    await _prefs.remove(_authTokenKey);
  }

  Future<String?> updateToken();
}
