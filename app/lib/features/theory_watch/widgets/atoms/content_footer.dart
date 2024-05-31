import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/content.graphql.dart';
import 'package:url_launcher/url_launcher.dart';

class ContentFooter extends StatelessWidget {
  final Fragment$Content content;
  final EdgeInsets padding;

  const ContentFooter({
    super.key,
    required this.content,
    this.padding = const EdgeInsets.only(top: 22, left: 16, right: 16),
  });

  @override
  Widget build(BuildContext context) {
    if (content.source.isEmpty && content.licence.isEmpty) {
      return const SizedBox();
    }

    return Padding(
      padding: padding,
      child: Column(
        children: [
          if (content.source.isNotEmpty) _source(),
          if (content.licence.isNotEmpty) const SizedBox(height: 11),
          if (content.licence.isNotEmpty) _licence(),
        ],
      ),
    );
  }

  Widget _source() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Source:',
          style: TextStyle(
            color: Colors.white.withOpacity(0.5),
            fontSize: 12,
            height: 1.5,
          ),
        ),
        const SizedBox(width: 8),
        Flexible(
          child: content.sourceurl.isEmpty
              ? _sourceName(false)
              : InkWell(
                  onTap: () async {
                    if (!await launchUrl(
                      Uri.parse(content.sourceurl),
                      mode: LaunchMode.externalApplication,
                    )) {
                      throw Exception('Could not open ${content.sourceurl}');
                    }
                  },
                  child: _sourceName(true),
                ),
        ),
      ],
    );
  }

  Widget _sourceName(bool asLink) => Text(
        content.source,
        style: _style(asLink),
      );

  Widget _licence() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Licence:',
          style: TextStyle(
            color: Colors.white.withOpacity(0.5),
            fontSize: 12,
            height: 1.5,
          ),
        ),
        const SizedBox(width: 8),
        Flexible(
          child: content.licenceurl.isEmpty
              ? _licenceName(false)
              : InkWell(
                  onTap: () async {
                    if (!await launchUrl(
                      Uri.parse(content.licenceurl),
                      mode: LaunchMode.externalApplication,
                    )) {
                      throw Exception('Could not open ${content.licenceurl}');
                    }
                  },
                  child: _licenceName(true),
                ),
        ),
      ],
    );
  }

  Widget _licenceName(bool asLink) => Text(
        content.licence,
        style: _style(asLink),
      );

  TextStyle _style(bool asLink) => TextStyle(
        color: Colors.white.withOpacity(0.7),
        fontSize: 12,
        height: 1.5,
        decoration: asLink ? TextDecoration.underline : null,
      );
}
