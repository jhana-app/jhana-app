import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jhanas/api/graphql/course.graphql.dart';
import 'package:jhanas/api/graphql/lesson.graphql.dart';
import 'package:jhanas/api/graphql/unit.graphql.dart';
import 'package:jhanas/atoms/under_development.dart';
import 'package:jhanas/features/lessons_roadmap/widgets/atoms/next_unit.dart';
import 'package:jhanas/features/lessons_roadmap/widgets/atoms/settings_menu.dart';
import 'package:jhanas/features/lessons_roadmap/widgets/lessons_path.dart';
import 'package:jhanas/helpers/color.dart';
import 'package:jhanas/layout/layout.dart';
import 'package:jhanas/router.dart';

class LessonsRoadmap extends StatefulWidget {
  final Fragment$Course course;
  final Fragment$UnitFull unit;
  final List<Fragment$Lesson> lessons;
  final bool isVisited;
  final bool isFinished;

  const LessonsRoadmap({
    super.key,
    required this.course,
    required this.unit,
    required this.lessons,
    required this.isVisited,
    required this.isFinished,
  });

  @override
  State<LessonsRoadmap> createState() => _LessonsRoadmapState();
}

class _LessonsRoadmapState extends State<LessonsRoadmap> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final backgroundColor = unitBackgroundColor(widget.unit.color);

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
                          APP_PAGE.unitDetails.toName,
                          pathParameters: {
                            'courseId': widget.course.id,
                            'unitId': widget.unit.id,
                          },
                        );
                      }
                    },
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: CircleAvatar(
                  radius: 24,
                  backgroundColor: backgroundColor,
                  child: IconButton(
                    icon: const Icon(Icons.settings, size: 32),
                    color: Colors.white,
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (context) => SettingsMenuBottomSheet(
                          unit: widget.unit,
                          lessons: widget.lessons,
                        ),
                      );
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
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 72,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: CircleAvatar(
                          backgroundColor: const Color(0xff625b71),
                          radius: 36,
                          child: CircleAvatar(
                            backgroundImage: ExtendedNetworkImageProvider(
                              widget.unit.coverimage,
                              cache: true,
                            ),
                            radius: 32,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  '${widget.unit.title} - ${widget.unit.subtitle}',
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 16),
                widget.lessons.isNotEmpty
                    ? LessonsPath(
                        unit: widget.unit,
                        lessons: widget.lessons,
                        techniques: widget.unit.unitTechniques,
                        isVisited: widget.isVisited,
                        screenWidth: screenWidth,
                        scrollController: _scrollController,
                      )
                    : const Padding(
                        padding: EdgeInsets.only(top: 64),
                        child: UnderDevelopment(),
                      ),
                if (widget.lessons.isNotEmpty &&
                    widget.unit.nextUnit != null &&
                    widget.isFinished)
                  NextUnit(unit: widget.unit, nextUnit: widget.unit.nextUnit!),
              ],
            ),
          )
        ],
      ),
    );
  }
}
