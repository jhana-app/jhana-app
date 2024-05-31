import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jhanas/api/graphql/unit.graphql.dart';
import 'package:jhanas/router.dart';

class UnitItem extends StatelessWidget {
  final Fragment$Unit unit;

  const UnitItem({
    super.key,
    required this.unit,
  });

  @override
  Widget build(BuildContext context) {
    final lessonsTotal = unit.lessonsTotal > 0 ? unit.lessonsTotal : unit.days;

    return InkWell(
      onTap: () {
        if (unit.lessonsCompleted > 0) {
          context.pushNamed(
            APP_PAGE.unitRoadmap.toName,
            pathParameters: {'courseId': unit.courseID, 'unitId': unit.id},
          );
        } else {
          context.pushNamed(
            APP_PAGE.unitDetails.toName,
            pathParameters: {'courseId': unit.courseID, 'unitId': unit.id},
          );
        }
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 45,
              height: 45,
              child: CircleAvatar(
                radius: 22.5,
                backgroundImage: ExtendedNetworkImageProvider(
                  unit.coverimage,
                  cache: true,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: unit.title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: '. ${unit.subtitle}'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text('$lessonsTotal lessons'),
                ],
              ),
            ),
            const SizedBox(width: 10),
            const Icon(Icons.chevron_right, size: 40),
          ],
        ),
      ),
    );
  }
}
