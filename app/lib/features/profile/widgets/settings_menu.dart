import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:jhanas/atoms/button_contained.dart';
import 'package:jhanas/atoms/button_outline.dart';
import 'package:jhanas/atoms/pull_down_indicator.dart';
import 'package:jhanas/config.dart';
import 'package:jhanas/services/auth/auth_service.dart';
import 'package:url_launcher/url_launcher.dart';

class WithSettingsMenu extends StatelessWidget {
  final Widget child;

  const WithSettingsMenu({
    super.key,
    required this.child,
  });

  void onTap(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => SettingsMenuBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(context),
      child: child,
    );
  }
}

class SettingsMenuBottomSheet extends StatelessWidget {
  final authService = GetIt.instance<AuthService>();

  SettingsMenuBottomSheet({super.key});

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
                const SizedBox(height: 13),
                ButtonOutline(
                  height: 40,
                  onPressed: () async {
                    if (!await launchUrl(
                      discordUrl,
                      mode: LaunchMode.externalApplication,
                    )) {
                      throw Exception('Could not open $discordUrl');
                    }
                  },
                  child: const AutoSizeText(
                    'Join our Discord server',
                    maxLines: 1,
                  ),
                ),
                const SizedBox(height: 22),
                ButtonOutline(
                  height: 40,
                  onPressed: () => authService.signOut(),
                  child: const Text('Log Out'),
                ),
                const SizedBox(height: 22),
                ButtonContained(
                  height: 40,
                  child: const Text('Cancel'),
                  onPressed: () => Navigator.of(context).pop(),
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
