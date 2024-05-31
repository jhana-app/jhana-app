import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:jhanas/api/graphql/stats.graphql.dart';
import 'package:jhanas/helpers/error.dart';
import 'package:jhanas/services/app_service.dart';

class MeditationStats extends StatelessWidget {
  final appService = GetIt.instance<AppService>();

  MeditationStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Query$FetchMeditationsStats$Widget(
      options: Options$Query$FetchMeditationsStats(
          operationName: 'FetchMeditationsStats',
          variables: Variables$Query$FetchMeditationsStats(
            userTimezone: appService.timezone,
          )),
      builder: (result, {fetchMore, refetch}) {
        final stats = result.data?['meditationsStats'] != null
            ? Fragment$MeditationsStats.fromJson(
                result.data!['meditationsStats'],
              )
            : null;

        if (result.hasException) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            errorMessage(
              'Internal server error',
              exception: result.exception.toString(),
              alert: stats == null && !result.isLoading,
            );
          });
        }

        final hoursTotal = stats?.hoursTotal ?? 0;
        final sessionsTotal = stats?.sessionsTotal ?? 0;
        final currentStrike = stats?.currentStrike ?? 0;

        return SizedBox(
          height: 51,
          child: stats == null
              ? Container()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Meditation',
                          style: TextStyle(
                            color: Color(0xff79747E),
                            fontSize: 11,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          hoursTotal.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          hoursTotal == 1 ? 'hour' : 'hours',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          'Current Streak',
                          style: TextStyle(
                            color: Color(0xff79747E),
                            fontSize: 11,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          currentStrike.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          currentStrike == 1 ? 'day' : 'days',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          'Sessions',
                          style: TextStyle(
                            color: Color(0xff79747E),
                            fontSize: 11,
                          ),
                        ),
                        const SizedBox(height: 4),
                        SizedBox(
                          height: 34,
                          child: Center(
                            child: Text(
                              sessionsTotal.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
        );
      },
    );
  }
}
