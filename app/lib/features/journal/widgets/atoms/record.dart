import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:jhanas/api/graphql/journal_record.graphql.dart';
import 'package:jhanas/features/journal/widgets/atoms/delete_record.dart';
import 'package:jhanas/helpers/duration.dart';
import 'package:jhanas/router.dart';

class JournalRecord extends StatelessWidget {
  final Fragment$JournalRecord record;

  const JournalRecord({super.key, required this.record});

  @override
  Widget build(BuildContext context) {
    final datetime = DateTime.parse(record.datetime).toLocal();

    return InkWell(
      onTap: () => context.pushNamed(
        APP_PAGE.userJournalRecord.toName,
        pathParameters: {'recordId': record.id},
      ),
      child: Slidable(
        key: UniqueKey(),
        closeOnScroll: false,
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          extentRatio: 0.25,
          children: [
            DeleteRecordButton(record: record),
          ],
        ),
        child: Container(
          constraints: const BoxConstraints(minHeight: 52),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        children: [
                          Text(
                            [
                              DateFormat.MMMd().format(datetime),
                              ', ',
                              DateFormat.jm().format(datetime)
                            ].join(),
                            style: const TextStyle(
                              color: Color(0xffE6E1E5),
                              fontSize: 16,
                            ),
                          ), // Spacer(),
                          const SizedBox(width: 16),
                          const Icon(
                            Icons.timer_outlined,
                            size: 14,
                            color: Color(0xaaE6E1E5),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            formatDurationHuman(
                                Duration(seconds: record.duration)),
                            style: const TextStyle(
                              color: Color(0xaaE6E1E5),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      record.note,
                      style: TextStyle(
                        color: const Color(0xffCAC4D0),
                        fontSize: 14,
                        height: record.note.isEmpty ? 0 : 20 / 14,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Icon(Icons.arrow_right, size: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
