import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:jhanas/atoms/button_contained.dart';
import 'package:jhanas/atoms/page_title.dart';
import 'package:jhanas/layout/layout.dart';
import 'package:jhanas/router.dart';
import 'package:jhanas/services/app_service.dart';
import 'package:mindful_minutes/mindful_minutes.dart';

class AppleHealthScreen extends StatefulWidget {
  const AppleHealthScreen({super.key});

  @override
  State<AppleHealthScreen> createState() => _AppleHealthScreenState();
}

class _AppleHealthScreenState extends State<AppleHealthScreen> {
  final appService = GetIt.instance<AppService>();
  final health = const MindfulMinutesPlugin();

  final backRoute = TitleButtonRoute(APP_PAGE.user.toName, {});
  bool? hasPermission;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (appService.platformType != PlatformType.IOS) {
        context.goNamed(APP_PAGE.user.toName);
      }

      final hasHealthPermission = await health.checkPermission();
      setState(() => hasPermission = hasHealthPermission);
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      child: Column(
        children: [
          PageTitle(
            'Apple Health',
            fontSize: 28,
            left: TitleButton(
              icon: const Icon(Icons.chevron_left, size: 40),
              isBack: true,
              route: backRoute,
            ),
          ),
          if (hasPermission == true) const SizedBox(height: 24 * 2),
          Expanded(
            child: hasPermission == null
                ? const Center(child: CircularProgressIndicator())
                : hasPermission == true
                    ? _initialized()
                    : _notInitialized(),
          ),
          if (hasPermission == true)
            ValueListenableBuilder<bool>(
              valueListenable: appService.healthSyncEnabledNotifier,
              builder: (_, syncEnabled, __) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SizedBox(
                    height: 24 * 4,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        syncEnabled == true
                            ? 'Your sessions appear as Mindful Minutes'
                                ' within Apple Health.'
                            : 'Your sessions are not being synced'
                                " and don't show as Mindful Minutes"
                                ' within Apple Health.',
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 16, height: 24 / 16),
                      ),
                    ),
                  ),
                );
              },
            ),
        ],
      ),
    );
  }

  Widget _notInitialized() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/images/icons/apple-health.png'),
                  width: 60,
                  height: 60,
                ),
                SizedBox(width: 16),
                Icon(Icons.forward, size: 24, color: Colors.grey),
                SizedBox(width: 14),
                Image(
                  image: AssetImage('assets/images/icons/jhanas.png'),
                  width: 60,
                  height: 60,
                ),
              ],
            ),
            const SizedBox(height: 32),
            const Text(
              'Connect to Apple Health to have'
              ' your meditation sessions show up'
              ' as Mindful Minutes.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, height: 24 / 16),
            ),
            const SizedBox(height: 32),
            SizedBox(
              height: 48,
              width: 150,
              child: ButtonContained(
                child: const Text(
                  'Continue',
                  style: TextStyle(fontSize: 16),
                ),
                onPressed: () async {
                  await context.pushNamed(
                    APP_PAGE.userAppleHealthConnect.toName,
                  );
                  final hasHealthPermissions = await health.checkPermission();
                  setState(() => hasPermission = hasHealthPermissions);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _initialized() {
    return ValueListenableBuilder<bool>(
      valueListenable: appService.healthSyncEnabledNotifier,
      builder: (_, syncEnabled, __) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage('assets/images/icons/apple-health.png'),
                      width: 60,
                      height: 60,
                    ),
                    const SizedBox(width: 16),
                    Icon(
                      syncEnabled == true ? Icons.sync : Icons.sync_disabled,
                      size: 32,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 14),
                    const Image(
                      image: AssetImage('assets/images/icons/jhanas.png'),
                      width: 60,
                      height: 60,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Sync with Apple Health',
                      style: TextStyle(fontSize: 18),
                    ),
                    Switch(
                      value: syncEnabled,
                      activeColor: const Color(0xffD0BCFF),
                      onChanged: (value) =>
                          appService.healthSyncEnabled = value,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
