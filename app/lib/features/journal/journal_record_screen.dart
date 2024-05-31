import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/journal_record.graphql.dart';
import 'package:jhanas/features/journal/widgets/journal_record.dart';
import 'package:jhanas/helpers/error.dart';

class JournalRecordScreen extends StatelessWidget {
  final String recordId;

  const JournalRecordScreen({
    super.key,
    required this.recordId,
  });

  @override
  Widget build(BuildContext context) {
    return Query$FetchJournalRecord$Widget(
      options: Options$Query$FetchJournalRecord(
        operationName: 'FetchJournalRecord',
        variables: Variables$Query$FetchJournalRecord(
          journalRecordId: recordId,
        ),
      ),
      builder: (result, {fetchMore, refetch}) {
        final noRecord = result.data == null || result.data?['node'] == null;

        if (result.hasException) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            errorMessage(
              'Internal server error',
              exception: result.exception.toString(),
              alert: noRecord && !result.isLoading,
            );
          });
        }

        if (noRecord) {
          if (result.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          return const Center(child: Text('Record not found'));
        }

        final record = Fragment$JournalRecord.fromJson(result.data?['node']);

        return JournalRecord(record: record);
      },
    );
  }
}
