import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/content.graphql.dart';
import 'package:jhanas/api/graphql/schema.graphql.dart';
import 'package:jhanas/features/theory_list/widget/content_list.dart';
import 'package:jhanas/helpers/error.dart';

class TheoryListScreen extends StatelessWidget {
  final TheoryType type;

  const TheoryListScreen({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Query$FetchContents$Widget(
      builder: (result, {fetchMore, refetch}) {
        final List<Fragment$Content> contents = [
          for (var e in result.parsedData?.contents.edges ?? [])
            if (e.node != null) e.node
        ];

        if (result.hasException) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            errorMessage(
              'Internal server error',
              exception: result.exception.toString(),
              alert: contents.isEmpty && !result.isLoading,
            );
          });
        }

        if (contents.isEmpty && result.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        return ContentList(
          audio: contents
              .where((content) => content.type == Enum$ContentContentType.audio)
              .toList(),
          video: contents
              .where((content) => content.type == Enum$ContentContentType.video)
              .toList(),
          text: contents
              .where((content) => content.type == Enum$ContentContentType.text)
              .toList(),
          type: type,
        );
      },
    );
  }
}
