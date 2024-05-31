import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jhanas/api/graphql/content.graphql.dart';
import 'package:jhanas/atoms/content_icon.dart';
import 'package:jhanas/router.dart';

class ContentItemAudio extends StatelessWidget {
  final Fragment$Content content;

  const ContentItemAudio({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(
          APP_PAGE.theoryListenDetails.toName,
          pathParameters: {
            'contentId': content.id,
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContentIcon(content: content),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      content.title,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    if (content.subtitle.isNotEmpty) const SizedBox(height: 8),
                    if (content.subtitle.isNotEmpty)
                      Text(
                        content.subtitle,
                        style: const TextStyle(
                          fontSize: 12,
                          height: 16 / 12,
                          color: Color(0xff938F99),
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              const Icon(Icons.chevron_right, size: 40),
            ],
          ),
        ),
      ),
    );
  }
}
