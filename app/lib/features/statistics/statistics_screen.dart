import 'package:flutter/material.dart';
import 'package:jhanas/atoms/page_title.dart';
import 'package:jhanas/atoms/under_development.dart';
import 'package:jhanas/layout/layout.dart';
import 'package:jhanas/router.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final backRoute = TitleButtonRoute(APP_PAGE.user.toName, {});

    return PageLayout(
      child: Column(
        children: [
          PageTitle(
            'Statistics',
            fontSize: 28,
            left: TitleButton(
              icon: const Icon(Icons.chevron_left, size: 40),
              isBack: true,
              route: backRoute,
            ),
          ),
          const Expanded(
            child: Center(
              child: UnderDevelopment(),
            ),
          ),
        ],
      ),
    );
  }
}
