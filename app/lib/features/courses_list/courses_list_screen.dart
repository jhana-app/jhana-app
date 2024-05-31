import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/course.graphql.dart';
import 'package:jhanas/features/courses_list/widgets/courses_list.dart';
import 'package:jhanas/helpers/error.dart';

class CoursesListScreen extends StatelessWidget {
  final String? courseId;

  const CoursesListScreen({
    super.key,
    this.courseId,
  });

  @override
  Widget build(BuildContext context) {
    return Query$FetchCourses$Widget(
      options: Options$Query$FetchCourses(
        operationName: 'FetchCourses',
      ),
      builder: (result, {fetchMore, refetch}) {
        final List<Fragment$CourseFull> courses = [
          for (var e in result.parsedData?.courses.edges ?? [])
            if (e.node != null) e.node
        ];

        if (result.hasException) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            errorMessage(
              'Internal server error',
              exception: result.exception.toString(),
              alert: courses.isEmpty && !result.isLoading,
            );
          });
        }

        if (courses.isEmpty) {
          if (result.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          return const Center(child: Text('No courses found'));
        }

        int active = -1;
        if (courseId != null) {
          for (var i = 0; i < courses.length; i++) {
            if (courses[i].id == courseId) {
              active = i;
              break;
            }
          }
        }

        if (active == -1) {
          active = 0;
        }

        return CoursesList(courses: courses, active: active);
      },
    );
  }
}
