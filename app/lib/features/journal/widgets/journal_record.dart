import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:jhanas/api/graphql/journal_record.graphql.dart';
import 'package:jhanas/atoms/page_title.dart';
import 'package:jhanas/features/journal/widgets/atoms/edit_record.dart';
import 'package:jhanas/helpers/duration.dart';
import 'package:jhanas/layout/layout.dart';
import 'package:jhanas/router.dart';

class JournalRecord extends StatelessWidget {
  final Fragment$JournalRecord record;

  const JournalRecord({super.key, required this.record});

  @override
  Widget build(BuildContext context) {
    final datetime = DateTime.parse(record.datetime).toLocal();

    return PageLayout(
      floatingAction: EditRecordButton(record: record),
      floatingActionLocation: FloatingActionButtonLocation.endFloat,
      child: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: PageTitle(
                        [
                          DateFormat.MMMd().format(datetime),
                          ', ',
                          DateFormat.jm().format(datetime)
                        ].join(),
                        externalButtons: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.timer_outlined,
                            size: 16,
                            color: Color(0xaaE6E1E5),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            formatDurationHuman(
                                Duration(seconds: record.duration)),
                            style: const TextStyle(
                              color: Color(0xaaE6E1E5),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 22),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        record.note.isEmpty ? 'No note' : record.note,
                        style: TextStyle(
                          color: const Color(0xffCAC4D0),
                          fontSize: 16,
                          fontStyle: record.note.isEmpty
                              ? FontStyle.italic
                              : FontStyle.normal,
                          height: 24 / 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: CircleAvatar(
                radius: 24,
                backgroundColor: const Color(0xff202020),
                child: IconButton(
                  icon: const Icon(Icons.chevron_left, size: 40),
                  color: Colors.white,
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    if (context.canPop()) {
                      context.pop();
                    } else {
                      context.goNamed(APP_PAGE.userJournal.toName);
                    }
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
