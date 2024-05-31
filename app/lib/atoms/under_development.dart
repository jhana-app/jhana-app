import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:jhanas/config.dart';
import 'package:url_launcher/url_launcher.dart';

class UnderDevelopment extends StatelessWidget {
  const UnderDevelopment({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Under Development',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          const Icon(Icons.construction_outlined),
          const SizedBox(height: 36),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Join',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(33, 150, 243, 0.8),
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = _openDiscord,
                ),
                const TextSpan(
                  text: ' our Discord server',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(255, 255, 255, 0.6),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 6),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'to receive the latest updates',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(255, 255, 255, 0.6),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _openDiscord() async {
    if (!await launchUrl(
      discordUrl,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not open $discordUrl');
    }
  }
}
