import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:jhanas/api/graphql/stats.graphql.dart';
import 'package:jhanas/helpers/error.dart';
import 'package:jhanas/services/app_service.dart';

class ConsecutiveDays extends StatelessWidget {
  final appService = GetIt.instance<AppService>();

  final DateTime lastMeditationDate;

  ConsecutiveDays({super.key, required this.lastMeditationDate});

  @override
  Widget build(BuildContext context) {
    return Query$FetchMeditationsStats$Widget(
      options: Options$Query$FetchMeditationsStats(
        operationName: 'FetchMeditationsStats',
        variables: Variables$Query$FetchMeditationsStats(
          userTimezone: appService.timezone,
        ),
      ),
      builder: (result, {fetchMore, refetch}) {
        final meditationsStats = result.parsedData?.meditationsStats;

        if (result.hasException) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            errorMessage(
              'Internal server error',
              exception: result.exception.toString(),
              alert: meditationsStats == null && !result.isLoading,
            );
          });
        }

        int consecutiveDays = 0;
        if (meditationsStats != null) {
          consecutiveDays = meditationsStats.currentStrike;

          if (consecutiveDays > 0) {
            if (meditationsStats.lastMeditationDate != null) {
              final lastMeditationDate = DateTime.parse(
                meditationsStats.lastMeditationDate!,
              );

              if (isSameDate(lastMeditationDate,
                  lastMeditationDate.subtract(const Duration(days: 1)))) {
                consecutiveDays++;
              }
            }
          } else {
            consecutiveDays = 1;
          }
        }

        return Text(
          consecutiveDays == 1
              ? '1 consecutive day'
              : consecutiveDays > 0
                  ? '$consecutiveDays consecutive days'
                  : ' ',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        );
      },
    );
  }
}

bool isSameDate(DateTime t1, DateTime t2) {
  final localT1 = t1.toLocal();
  final localT2 = t2.toLocal();
  return localT1.year == localT2.year &&
      localT1.month == localT2.month &&
      localT1.day == localT2.day;
}
