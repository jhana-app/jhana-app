import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:jhanas/atoms/button_contained.dart';
import 'package:jhanas/atoms/button_outline.dart';
import 'package:jhanas/atoms/pull_down_indicator.dart';
import 'package:jhanas/atoms/restart.dart';
import 'package:jhanas/config.dart';
import 'package:just_audio/just_audio.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WithDebugMenu extends StatefulWidget {
  final Widget child;

  const WithDebugMenu({
    super.key,
    required this.child,
  });

  @override
  State<WithDebugMenu> createState() => _WithDebugMenuState();
}

class _WithDebugMenuState extends State<WithDebugMenu> {
  Timer? _timer;
  bool open = false;

  void onTapDown() {
    _timer = Timer(const Duration(seconds: 5), () {
      if (_timer != null) {
        _timer!.cancel();
      }
      setState(() => open = true);
    });
  }

  void onTapUp() {
    if (_timer != null) {
      _timer!.cancel();
    }
    if (open) {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) => const DebugMenuBottomSheet(),
      );
      setState(() => open = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => onTapDown(),
      onTapUp: (_) => onTapUp(),
      child: Transform.scale(
        scale: open ? 0.75 : 1,
        child: widget.child,
      ),
    );
  }
}

class DebugMenuBottomSheet extends StatefulWidget {
  const DebugMenuBottomSheet({super.key});

  @override
  DebugMenuBottomSheetState createState() => DebugMenuBottomSheetState();
}

class DebugMenuBottomSheetState extends State<DebugMenuBottomSheet> {
  final sharedPreferences = GetIt.instance<SharedPreferences>();

  String version = '';

  bool storageCleared = false;
  bool cacheCleared = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final packageInfo = await PackageInfo.fromPlatform();
      setState(
        () => version = '${packageInfo.version}+${packageInfo.buildNumber}',
      );
    });
  }

  Future<void> _clearLocalStorage(BuildContext context) async {
    await sharedPreferences.clear();

    setState(() => storageCleared = true);

    if (context.mounted) {
      RestartWidget.restartApp(context);
    }
  }

  void _clearCache() {
    DefaultCacheManager().emptyCache();
    AudioPlayer.clearAssetCache();

    setState(() => cacheCleared = true);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        color: const Color.fromRGBO(36, 33, 43, 1),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const PullDownIndicator(),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: const Text(
                    'Debug menu',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xffE6E1E5),
                    ),
                  ),
                ),
                const SizedBox(height: 13),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text('Environment: $environment'),
                ),
                const SizedBox(height: 22),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text('Version: $version'),
                ),
                const SizedBox(height: 22),
                ButtonOutline(
                  height: 40,
                  onPressed: () => _clearLocalStorage(context),
                  disabled: storageCleared,
                  child: const Text('Clear local storage'),
                ),
                const SizedBox(height: 22),
                ButtonOutline(
                  height: 40,
                  onPressed: _clearCache,
                  disabled: cacheCleared,
                  child: const Text('Clear cache'),
                ),
                const SizedBox(height: 22),
                ButtonContained(
                  height: 40,
                  child: const Text('Close'),
                  onPressed: () => context.pop(),
                ),
                const SizedBox(height: 22),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
