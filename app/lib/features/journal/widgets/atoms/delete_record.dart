import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:jhanas/api/cache/common.dart';
import 'package:jhanas/api/graphql/journal_record.graphql.dart';
import 'package:jhanas/helpers/error.dart';

class DeleteRecordButton extends StatefulWidget {
  final Fragment$JournalRecord record;

  const DeleteRecordButton({super.key, required this.record});

  @override
  State<DeleteRecordButton> createState() => _DeleteRecordButtonState();
}

class _DeleteRecordButtonState extends State<DeleteRecordButton> {
  final gqlClient = GetIt.instance<GraphQLClient>();

  Future<void> handleDelete() async {
    final result = await gqlClient.mutate$DeleteJournalRecord(
      Options$Mutation$DeleteJournalRecord(
        variables: Variables$Mutation$DeleteJournalRecord(
          id: widget.record.id,
        ),
      ),
    );

    if (result.hasException) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        errorMessage(
          'Error while deleting meditation progress.\n'
          'Check the internet connection and try again.',
          exception: result.exception.toString(),
        );
      });
      return;
    }

    // journal records list changed,
    // refetch all queries that might depend on it
    refetch(gqlClient, [
      'FetchJournalRecords',
      'FetchWeekStats',
      'FetchMeditationsStats',
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return SlidableAction(
      onPressed: (context) => handleDelete(),
      backgroundColor: const Color(0xFFFE4A49),
      foregroundColor: Colors.white,
      icon: Icons.delete,
      label: 'Delete',
    );
  }
}
