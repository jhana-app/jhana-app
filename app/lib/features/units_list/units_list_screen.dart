import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/course.graphql.dart';
import 'package:jhanas/api/graphql/unit.graphql.dart';
import 'package:jhanas/features/units_list/widgets/units_list.dart';
import 'package:jhanas/helpers/error.dart';

class UnitsListScreen extends StatelessWidget {
  final String courseId;
  final String? unitId;

  const UnitsListScreen({
    super.key,
    required this.courseId,
    this.unitId,
  });

  @override
  Widget build(BuildContext context) {
    return Query$FetchCourseUnits$Widget(
      options: Options$Query$FetchCourseUnits(
        operationName: 'FetchCourseUnits',
        variables: Variables$Query$FetchCourseUnits(courseId: courseId),
      ),
      builder: (result, {fetchMore, refetch}) {
        final noCourse = result.data == null || result.data?['node'] == null;

        if (result.hasException) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            errorMessage(
              'Internal server error',
              exception: result.exception.toString(),
              alert: noCourse && !result.isLoading,
            );
          });
        }

        if (noCourse) {
          if (result.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          return const Center(child: Text('No units found'));
        }

        final course = Fragment$Course.fromJson(result.data?['node']);

        // NOTE(vlad): some kind of magic goes here, should be fixed in
        // graphql_codegen >= 0.12
        // See also: https://github.com/heftapp/graphql_codegen/issues/239
        final List<Fragment$Unit> units = [
          for (var e in result.data?['node']?['units']?['edges'] ?? [])
            if (e?['node']?['__typename'] == 'Unit')
              Fragment$Unit.fromJson(e['node'])
        ];

        if (units.isEmpty) {
          return const Center(child: Text('No units found'));
        }

        int active = -1;
        if (unitId != null) {
          for (var i = 0; i < units.length; i++) {
            if (units[i].id == unitId) {
              active = i;
              break;
            }
          }
        }

        if (active == -1) {
          active = 0;
          for (var i = 0; i < units.length; i++) {
            if (units[i].isActive) {
              active = i;
              break;
            }
          }
        }

        return UnitsList(course: course, units: units, active: active);
      },
    );
  }
}
