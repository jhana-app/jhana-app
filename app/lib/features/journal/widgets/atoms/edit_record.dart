import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:jhanas/api/graphql/journal_record.graphql.dart';
import 'package:jhanas/api/graphql/schema.graphql.dart';
import 'package:jhanas/features/journal/widgets/atoms/edit_record_bottom_sheet.dart';
import 'package:jhanas/helpers/error.dart';
import 'package:jhanas/services/app_service.dart';
import 'package:mindful_minutes/mindful_minutes.dart';

class EditRecordButton extends StatefulWidget {
  final Fragment$JournalRecord record;

  const EditRecordButton({super.key, required this.record});

  @override
  State<EditRecordButton> createState() => _EditRecordButtonState();
}

class _EditRecordButtonState extends State<EditRecordButton> {
  final appService = GetIt.instance<AppService>();
  final gqlClient = GetIt.instance<GraphQLClient>();
  final health = const MindfulMinutesPlugin();

  void syncWithHealth(DateTime dateStart, DateTime dateEnd) {
    if (appService.healthSyncEnabled) {
      health.writeMindfulMinutes(dateStart, dateEnd);
    }
  }

  Future<bool> handleSave(EditRecordResult? updatedRecord) async {
    if (updatedRecord == null) {
      return true;
    }

    final input = Input$UpdateJournalRecordInput(
      datetime: updatedRecord.datetime.toUtc().toIso8601String(),
      duration: updatedRecord.duration.inSeconds,
      note: updatedRecord.note,
    );

    final result = await gqlClient.mutate$UpdateJournalRecord(
      Options$Mutation$UpdateJournalRecord(
        variables: Variables$Mutation$UpdateJournalRecord(
          id: widget.record.id,
          input: input,
        ),
      ),
    );

    if (result.hasException) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        errorMessage(
          'Error while updating meditation progress.\n'
          'Check the internet connection and try again.',
          exception: result.exception.toString(),
        );
      });
      return false;
    }

    syncWithHealth(
      updatedRecord.datetime,
      updatedRecord.datetime.add(updatedRecord.duration),
    );

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
          builder: (context) => EditRecordBottomSheet(
            initialRecord: widget.record,
            handleSave: handleSave,
          ),
        ),
        foregroundColor: const Color(0xFFD0BCFF),
        backgroundColor: const Color(0xff625b71),
        child: const Icon(Icons.edit_outlined, size: 32),
      ),
    );
  }
}
