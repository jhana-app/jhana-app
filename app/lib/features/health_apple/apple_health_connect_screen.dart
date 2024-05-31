import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:jhanas/atoms/button_contained.dart';
import 'package:jhanas/atoms/page_title.dart';
import 'package:jhanas/layout/layout.dart';
import 'package:jhanas/router.dart';
import 'package:jhanas/services/app_service.dart';
import 'package:mindful_minutes/mindful_minutes.dart';

class AppleHealthConnectScreen extends StatefulWidget {
  const AppleHealthConnectScreen({super.key});

  @override
  State<AppleHealthConnectScreen> createState() =>
      _AppleHealthConnectScreenState();
}

class _AppleHealthConnectScreenState extends State<AppleHealthConnectScreen> {
  final appService = GetIt.instance<AppService>();
  final health = const MindfulMinutesPlugin();

  final backRoute = TitleButtonRoute(APP_PAGE.userAppleHealth.toName, {});
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
            'Connect to Apple Health',
            fontSize: 28,
            left: TitleButton(
              icon: const Icon(Icons.chevron_left, size: 40),
              isBack: true,
              route: backRoute,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'After clicking "Request Access" below:',
                    style: TextStyle(fontSize: 16, height: 24 / 16),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Step 1: tap "All Categories On",',
                    style: TextStyle(fontSize: 16, height: 24 / 16),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Step 2: tap "Allow".',
                    style: TextStyle(fontSize: 16, height: 24 / 16),
                  ),
                  const SizedBox(height: 32),
                  Center(
                    child: SizedBox(
                      height: 48,
                      width: 200,
                      child: ButtonContained(
                        child: const Text(
                          'Request Access',
                          style: TextStyle(fontSize: 16),
                        ),
                        onPressed: () async {
                          final hasHealthPermission =
                              await health.requestPermission();
                          if (hasHealthPermission) {
                            appService.healthSyncEnabled = true;
                          }
                          if (context.mounted) {
                            context.pop();
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
