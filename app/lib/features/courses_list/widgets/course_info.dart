import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/course.graphql.dart';
import 'package:jhanas/api/graphql/unit.graphql.dart';
import 'package:jhanas/atoms/page_title.dart';
import 'package:jhanas/atoms/slider_dots.dart';
import 'package:jhanas/atoms/under_development.dart';
import 'package:jhanas/features/courses_list/widgets/atoms/unit_image.dart';
import 'package:jhanas/features/courses_list/widgets/atoms/unit_item.dart';

class CourseInfo extends StatelessWidget {
  final Fragment$CourseFull course;
  final int count;
  final int position;

  const CourseInfo({
    super.key,
    required this.course,
    required this.count,
    required this.position,
  });

  @override
  Widget build(BuildContext context) {
    final List<Fragment$Unit> units = [
      for (var e in course.units.edges ?? []) e.node
    ];

    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Column(
          children: [
            PageTitle(course.title),
            const SizedBox(height: 10),
            UnitImage(course.coverimage),
            SliderDots(item: position, itemsTotal: count),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: AutoSizeText(
                  course.description,
                  maxLines: 99,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16,
                    height: 1.4,
                  ),
                ),
              ),
            ),
            course.active
                ? Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Column(
                      children: [...units.map((u) => UnitItem(unit: u))],
                    ),
                  )
                : const Padding(
                    padding: EdgeInsets.only(top: 16, bottom: 32),
                    child: UnderDevelopment(),
                  ),
          ],
        ),
      ),
    ]);
  }
}
