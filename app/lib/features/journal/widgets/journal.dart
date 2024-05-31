import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jhanas/api/graphql/journal_record.graphql.dart';
import 'package:jhanas/atoms/page_title.dart';
import 'package:jhanas/features/journal/widgets/atoms/add_record.dart';
import 'package:jhanas/features/journal/widgets/atoms/record.dart';
import 'package:jhanas/layout/layout.dart';
import 'package:jhanas/router.dart';

class Journal extends StatelessWidget {
  final List<Fragment$JournalRecord> records;

  const Journal({super.key, required this.records});

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color(0xff202020);

    return PageLayout(
      floatingAction: const AddRecordButton(),
      floatingActionLocation: FloatingActionButtonLocation.endFloat,
      child: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: PageTitle(
                        'Journal',
                        externalButtons: true,
                      ),
                    ),
                    const SizedBox(height: 22),
                    ...records.map((record) => JournalRecord(record: record)),
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
                backgroundColor: backgroundColor,
                child: IconButton(
                  icon: const Icon(Icons.chevron_left, size: 40),
                  color: Colors.white,
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    if (context.canPop()) {
                      context.pop();
                    } else {
                      context.goNamed(APP_PAGE.user.toName);
                    }
                  },
                ),
              ),
            ),
          ),
          const Positioned(
            right: 0,
            child: Padding(
              padding: EdgeInsets.only(right: 16),
              child: CircleAvatar(
                radius: 24,
                backgroundColor: backgroundColor,
                child: IconButton(
                  icon: Icon(Icons.settings, size: 32),
                  padding: EdgeInsets.zero,
                  onPressed: null,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
