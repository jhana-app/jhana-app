import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/course.graphql.dart';
import 'package:jhanas/features/courses_list/widgets/course_info.dart';
import 'package:jhanas/layout/layout.dart';

class CoursesList extends StatefulWidget {
  final List<Fragment$CourseFull> courses;
  final int active;

  const CoursesList({
    super.key,
    required this.courses,
    required this.active,
  });

  @override
  State<CoursesList> createState() => _CoursesListState();
}

class _CoursesListState extends State<CoursesList>
    with TickerProviderStateMixin {
  PageController pageController = PageController();
  late AnimationController _controller;
  late Animation<Color?> animation;
  late List<TweenSequenceItem<Color?>> colors;

  @override
  void initState() {
    _initialize();

    super.initState();

    // choose page with active course on start
    WidgetsBinding.instance.addPostFrameCallback((_) {
      pageController.jumpToPage(widget.active);
    });
  }

  void _initialize() {
    colors = [];
    int? previousColor;
    late int backgroundColor;

    for (final course in widget.courses) {
      backgroundColor = 0xff000000 | int.parse(course.color, radix: 16);
      if (previousColor != null) {
        colors.add(TweenSequenceItem(
          weight: 1.0,
          tween: ColorTween(
            begin: Color(previousColor),
            end: Color(backgroundColor),
          ),
        ));
      }
      previousColor = backgroundColor;
    }

    _controller = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );

    animation = TweenSequence<Color?>(colors).animate(_controller)
      ..addListener(() => setState(() {}));

    pageController = PageController();
  }

  @override
  void reassemble() {
    pageController.dispose();
    _initialize();
    super.reassemble();
  }

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      backgroundColor: animation.value,
      child: PageView.builder(
        physics: const PageScrollPhysics(),
        controller: pageController,
        onPageChanged: (index) {
          _controller.animateTo(index / colors.length);
        },
        itemCount: widget.courses.length,
        itemBuilder: (context, position) => CourseInfo(
          course: widget.courses[position],
          count: widget.courses.length,
          position: position,
        ),
      ),
    );
  }
}
