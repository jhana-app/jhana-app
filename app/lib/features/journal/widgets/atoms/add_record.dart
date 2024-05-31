import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:jhanas/api/cache/common.dart';
import 'package:jhanas/api/graphql/journal_record.graphql.dart';
import 'package:jhanas/api/graphql/schema.graphql.dart';
import 'package:jhanas/features/journal/widgets/atoms/edit_record_bottom_sheet.dart';
import 'package:jhanas/helpers/error.dart';
import 'package:jhanas/services/app_service.dart';
import 'package:mindful_minutes/mindful_minutes.dart';

class AddRecordButton extends StatefulWidget {
  const AddRecordButton({super.key});

  @override
  State<AddRecordButton> createState() => _AddRecordButtonState();
}

class _AddRecordButtonState extends State<AddRecordButton> {
  final appService = GetIt.instance<AppService>();
  final gqlClient = GetIt.instance<GraphQLClient>();
  final health = const MindfulMinutesPlugin();

  void syncWithHealth(DateTime dateStart, DateTime dateEnd) {
    if (appService.healthSyncEnabled) {
      health.writeMindfulMinutes(dateStart, dateEnd);
    }
  }

  Future<bool> handleSave(EditRecordResult? newRecord) async {
    if (newRecord == null) {
      return true;
    }

    final input = Input$CreateJournalRecordInput(
      datetime: newRecord.datetime.toUtc().toIso8601String(),
      duration: newRecord.duration.inSeconds,
      note: newRecord.note,
    );

    final result = await gqlClient.mutate$CreateJournalRecord(
      Options$Mutation$CreateJournalRecord(
        variables: Variables$Mutation$CreateJournalRecord(
          input: input,
        ),
      ),
    );

    if (result.hasException) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        errorMessage(
          'Error while saving meditation progress.\n'
          'Check the internet connection and try again.',
          exception: result.exception.toString(),
        );
      });
      return false;
    }

    syncWithHealth(
      newRecord.datetime,
      newRecord.datetime.add(newRecord.duration),
    );

    // journal records list changed,
    // refetch all queries that might depend on it
    refetch(gqlClient, [
      'FetchJournalRecords',
      'FetchWeekStats',
      'FetchMeditationsStats',
    ]);

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: 56,
      child: FloatingActionButton(
        onPressed: () => showModalBottomSheet<EditRecordResult>(
          context: context,
          isScrollControlled: true,
          builder: (context) => EditRecordBottomSheet(handleSave: handleSave),
        ),
        foregroundColor: const Color(0xFFD0BCFF),
        backgroundColor: const Color(0xff625b71),
        child: const Icon(Icons.edit_outlined, size: 32),
      ),
    );
  }
}
