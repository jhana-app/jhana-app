import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/journal_record.graphql.dart';
import 'package:jhanas/api/graphql/schema.graphql.dart';
import 'package:jhanas/features/journal/widgets/journal.dart';
import 'package:jhanas/helpers/error.dart';

class JournalScreen extends StatelessWidget {
  const JournalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Query$FetchJournalRecords$Widget(
      options: Options$Query$FetchJournalRecords(
        operationName: 'FetchJournalRecords',
        variables: Variables$Query$FetchJournalRecords(
          first: 100,
          orderBy: Input$JournalRecordOrder(
            direction: Enum$OrderDirection.DESC,
            field: Enum$JournalRecordOrderField.DATE_TIME,
          ),
        ),
      ),
      builder: (result, {fetchMore, refetch}) {
        final List<Fragment$JournalRecord> records = [
          for (var e in result.parsedData?.journalRecords.edges ?? [])
            if (e.node != null) e.node
        ];

        if (result.hasException) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            errorMessage(
              'Internal server error',
              exception: result.exception.toString(),
              alert: records.isEmpty && !result.isLoading,
            );
          });
        }

        return Journal(records: records);
      },
    );
  }
}
