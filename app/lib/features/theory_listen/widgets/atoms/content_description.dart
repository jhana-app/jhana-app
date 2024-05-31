import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/content.graphql.dart';
import 'package:jhanas/atoms/markdown.dart';

class ContentDescription extends StatelessWidget {
  final Fragment$Content content;

  const ContentDescription({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Markdown(
        data: content.description,
        fontSize: 12,
        textColor: const Color(0xff938F99),
      ),
    );
  }
}
