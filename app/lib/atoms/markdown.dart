import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

class Markdown extends StatelessWidget {
  final String data;
  final double fontSize;
  final Color textColor;

  const Markdown({
    super.key,
    required this.data,
    this.fontSize = 16,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return MarkdownBody(
      data: data.replaceAll('\\n', '\n\n'),
      styleSheet: MarkdownStyleSheet(
        p: TextStyle(
          fontSize: fontSize,
          height: 1.5,
          color: textColor,
        ),
        listBullet: TextStyle(
          fontSize: fontSize,
          height: 1.5,
          color: textColor,
        ),
        pPadding: const EdgeInsets.only(top: 8, bottom: 8),
        h4: TextStyle(
          fontSize: fontSize,
          height: 1.5,
          color: textColor,
          fontWeight: FontWeight.bold,
        ),
        h4Padding: const EdgeInsets.only(top: 16),
        blockSpacing: 8,
      ),
      onTapLink: (text, url, title) {
        if (url != null && url.isNotEmpty) {
          launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
        }
      },
    );
  }
}
