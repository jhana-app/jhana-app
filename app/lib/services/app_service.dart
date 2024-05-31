import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: non_constant_identifier_names
String LOGIN_KEY = '7PO039I21SHHDAL7M355IO64';
// ignore: non_constant_identifier_names
String ONBOARD_KEY = 'BLXEAE0I1R2TTH5615A84HHE';
// ignore: non_constant_identifier_names
String SYNC_HEALTH_KEY = 'T1PH5PZNCI7718C439B0DD6Y';

/// A list of supported platforms.
enum PlatformType { IOS, ANDROID, OTHER }

class AppService with ChangeNotifier {
  final _prefs = GetIt.instance<SharedPreferences>();

  AppService() {
    healthSyncEnabledNotifier.value = healthSyncEnabled;
  }

  static PlatformType _platformType = Platform.isIOS
      ? PlatformType.IOS
      : Platform.isAndroid
          ? PlatformType.ANDROID
          : PlatformType.OTHER;
  PlatformType get platformType => _platformType;

  final healthSyncEnabledNotifier = ValueNotifier<bool>(false);

  bool get healthSyncEnabled => _prefs.getBool(SYNC_HEALTH_KEY) ?? false;
  set healthSyncEnabled(bool enabled) {
    _prefs.setBool(SYNC_HEALTH_KEY, enabled);
    healthSyncEnabledNotifier.value = enabled;
  }

  bool _loginState = false;
  bool get loginState => _loginState;
  set loginState(bool state) {
    _prefs.setBool(LOGIN_KEY, state);
    _loginState = state;
    _loginStateChange.add(state);
    notifyListeners();
  }

  final StreamController<bool> _loginStateChange =
      StreamController<bool>.broadcast();
  Stream<bool> get loginStateChange => _loginStateChange.stream;

  String _timezone = '';
  String get timezone => _timezone;

  bool _initialized = false;
  bool get initialized => _initialized;
  set initialized(bool value) {
    _initialized = value;
    notifyListeners();
  }

  bool _onboarding = false;
  bool get onboarding => _onboarding;
  set onboarding(bool value) {
    _prefs.setBool(ONBOARD_KEY, value);
    _onboarding = value;
    notifyListeners();
  }

  Future<void> onAppStart() async {
    _timezone = await FlutterNativeTimezone.getLocalTimezone();
    _onboarding = _prefs.getBool(ONBOARD_KEY) ?? false;
    _loginState = _prefs.getBool(LOGIN_KEY) ?? false;
    _initialized = true;
    notifyListeners();
  }
}
