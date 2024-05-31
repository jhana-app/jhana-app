import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> checkCleanup(SharedPreferences sharedPreferences) async {
  final packageInfo = await PackageInfo.fromPlatform();
  if (packageInfo.buildNumber != sharedPreferences.getString('build')) {
    await DefaultCacheManager().emptyCache();
    sharedPreferences.setString('build', packageInfo.buildNumber);
  }
}
