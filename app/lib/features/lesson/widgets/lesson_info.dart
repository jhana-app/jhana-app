import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jhanas/api/graphql/lesson.graphql.dart';
import 'package:jhanas/atoms/under_development.dart';
import 'package:jhanas/features/lesson/widgets/atoms/lesson_description.dart';
import 'package:jhanas/features/lesson/widgets/atoms/lesson_duration.dart';
import 'package:jhanas/features/lesson/widgets/atoms/lesson_image.dart';
import 'package:jhanas/features/lesson/widgets/techniques_list.dart';
import 'package:jhanas/helpers/color.dart';
import 'package:jhanas/layout/layout.dart';
import 'package:jhanas/router.dart';

class LessonInfo extends StatefulWidget {
  final Fragment$LessonFull lesson;

  const LessonInfo({
    super.key,
    required this.lesson,
  });

  @override
  State<LessonInfo> createState() => _LessonInfoState();
}

class _LessonInfoState extends State<LessonInfo> {
  late final techniques =
      widget.lesson.lessonTechniques.map((e) => e.technique).toList();
  late final audio =
      widget.lesson.audios.isNotEmpty ? widget.lesson.audios.first : null;

  bool finished = false;

  ScrollController _scrollController = ScrollController();
  bool _isBottom = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_checkScroll);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkScroll();
    });
  }

  void _checkScroll() {
    setState(() {
      final double maxScroll = _scrollController.position.maxScrollExtent;
      final double currentScroll = _scrollController.position.pixels;
      const double delta = 30;
      _isBottom = maxScroll - currentScroll <= delta;
    });
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = unitBackgroundColor(widget.lesson.unit.color);

    return PageLayout(
      backgroundColor: backgroundColor,
      floatingAction: audio != null ? _startFab() : null,
      floatingActionLocation: FloatingActionButtonLocation.centerFloat,
      child: Stack(
        children: [
          CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    LessonImage(widget.lesson.unit.coverimage),
                    Column(
                      children: [
                        const SizedBox(height: 22),
                        _title(context),
                        const SizedBox(height: 22),
                        LessonDescription(lesson: widget.lesson),
                        TechniquesList(
                          lesson: widget.lesson,
                          techniques: techniques,
                        ),
                        if (audio == null) ..._noAudio(),
                        if (audio != null) const SizedBox(height: 84),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: CircleAvatar(
                radius: 24,
                backgroundColor: backgroundColor,
                child: IconButton(
                  icon: const Icon(Icons.chevron_left, size: 40),
                  color: const Color(0xffCCC2DC),
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    if (context.canPop()) {
                      context.pop(finished);
                    } else {
                      context.goNamed(
                        APP_PAGE.unitRoadmap.toName,
                        pathParameters: {
                          'courseId': widget.lesson.unit.courseID,
                          'unitId': widget.lesson.unit.id,
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
    );
  }

  Widget _title(BuildContext context) {
    int duration = 0;
    for (final audio in widget.lesson.audios) {
      if (duration == 0 || duration < audio.duration) {
        duration = audio.duration;
      }
    }

    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              widget.lesson.title,
              style: const TextStyle(fontSize: 28),
            ),
          ),
          LessonDuration(unit: widget.lesson.unit, lesson: widget.lesson),
        ],
      ),
    );
  }

  List<Widget> _noAudio() {
    return [
      const SizedBox(height: 22),
      const UnderDevelopment(),
    ];
  }

  Widget _startFab() {
    if (audio == null) {
      return const SizedBox();
    }
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: MediaQuery.of(context).size.width,
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      alignment: _isBottom ? Alignment.center : Alignment.centerRight,
      child: _isBottom ? _startFabExtended() : _startFabSmall(),
    );
  }

  Widget _startFabExtended() {
    if (audio == null) {
      return const SizedBox();
    }
    return FloatingActionButton.extended(
      onPressed: () {
        context.pushNamed(
          APP_PAGE.lessonPlayer.toName,
          pathParameters: {
            'courseId': widget.lesson.unit.courseID,
            'unitId': widget.lesson.unit.id,
            'lessonId': widget.lesson.id,
            'audioId': audio!.id,
          },
        );
      },
      foregroundColor: const Color(0xFFD0BCFF),
      backgroundColor: const Color(0xff625b71),
      icon: const Icon(Icons.play_arrow, size: 32),
      label: const Text('START', style: TextStyle(fontSize: 22)),
    );
  }

  Widget _startFabSmall() {
    if (audio == null) {
      return const SizedBox();
    }
    return SizedBox(
      height: 56,
      width: 56,
      child: FloatingActionButton.extended(
        onPressed: () {
          context.pushNamed(
            APP_PAGE.lessonPlayer.toName,
            pathParameters: {
              'courseId': widget.lesson.unit.courseID,
              'unitId': widget.lesson.unit.id,
              'lessonId': widget.lesson.id,
              'audioId': audio!.id,
            },
          );
        },
        foregroundColor: const Color(0xFFD0BCFF),
        backgroundColor: const Color(0xff625b71),
        icon: const Padding(
          padding: EdgeInsets.only(left: 12),
          child: Icon(Icons.play_arrow, size: 32),
        ),
        label: const SizedBox(),
      ),
    );
  }
}
