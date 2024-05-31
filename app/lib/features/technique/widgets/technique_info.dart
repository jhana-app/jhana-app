import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jhanas/api/graphql/technique.graphql.dart';
import 'package:jhanas/api/graphql/unit.graphql.dart';
import 'package:jhanas/atoms/markdown.dart';
import 'package:jhanas/atoms/page_title.dart';
import 'package:jhanas/atoms/technique_icon_big.dart';
import 'package:jhanas/atoms/under_development.dart';
import 'package:jhanas/helpers/color.dart';
import 'package:jhanas/layout/layout.dart';
import 'package:jhanas/router.dart';

class TechniqueInfo extends StatelessWidget {
  final Fragment$Unit unit;
  final Fragment$Technique technique;

  const TechniqueInfo({
    super.key,
    required this.unit,
    required this.technique,
  });

  @override
  Widget build(BuildContext context) {
    final backgroundColor = unitBackgroundColor(unit.color);

    return PageLayout(
      backgroundColor: backgroundColor,
      floatingAction: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 72,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: CircleAvatar(
                  radius: 24,
                  backgroundColor: backgroundColor,
                  child: IconButton(
                    color: Colors.white,
                    icon: const Icon(Icons.chevron_left, size: 40),
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      if (context.canPop()) {
                        context.pop();
                      } else {
                        context.goNamed(
                          APP_PAGE.unitRoadmap.toName,
                          pathParameters: {
                            'courseId': unit.courseID,
                            'unitId': unit.id,
                          },
                        );
                      }
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionLocation: FloatingActionButtonLocation.centerTop,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                PageTitle(technique.title, fontSize: 24),
                const SizedBox(height: 22),
                Center(
                  child: TechniqueIconBig(
                    technique: technique,
                    size: 80,
                  ),
                ),
                technique.description.isNotEmpty
                    ? Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 22,
                        ),
                        child: Markdown(data: technique.description),
                      )
                    : const Padding(
                        padding: EdgeInsets.only(top: 44),
                        child: UnderDevelopment(),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
