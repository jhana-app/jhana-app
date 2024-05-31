import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/journal_record.graphql.dart';
import 'package:jhanas/features/week_stats/widgets/week_charts.dart';
import 'package:jhanas/helpers/error.dart';

class WeekStats extends StatelessWidget {
  final Fragment$JournalRecord? draftRecord;

  const WeekStats({super.key, this.draftRecord});

  @override
  Widget build(BuildContext context) {
    return Query$FetchWeekStats$Widget(
      options: Options$Query$FetchWeekStats(operationName: 'FetchWeekStats'),
      builder: (result, {fetchMore, refetch}) {
        final journalRecords = result.parsedData?.weekStats ?? [];

        if (result.hasException) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            errorMessage(
              'Internal server error',
              exception: result.exception.toString(),
              alert: journalRecords.isEmpty && !result.isLoading,
            );
          });
        }

        if (draftRecord != null) {
          journalRecords.add(draftRecord!);
        }

        return WeekCharts(
          records: journalRecords,
          animateLast: draftRecord != null,
        );
      },
    );
  }
}
