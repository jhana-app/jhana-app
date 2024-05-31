import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jhanas/api/graphql/course.graphql.dart';
import 'package:jhanas/api/graphql/unit.graphql.dart';
import 'package:jhanas/atoms/page_title.dart';
import 'package:jhanas/features/units_list/widgets/atoms/unit_cover.dart';
import 'package:jhanas/features/units_list/widgets/unit_info.dart';
import 'package:jhanas/helpers/color.dart';
import 'package:jhanas/layout/layout.dart';
import 'package:jhanas/router.dart';

const double coverFraction = 1;
const double cardFraction = 0.85;
const animationDuration = Duration(milliseconds: 300);

class UnitsList extends StatefulWidget {
  final Fragment$Course course;
  final List<Fragment$Unit> units;
  final int active;

  const UnitsList({
    super.key,
    required this.course,
    required this.units,
    required this.active,
  });

  @override
  State<UnitsList> createState() => _UnitsListState();
}

class _UnitsListState extends State<UnitsList> with TickerProviderStateMixin {
  PageController coverController = PageController();
  bool isCoverScrolling = false;

  PageController cardController =
      PageController(viewportFraction: cardFraction);
  bool isCardScrolling = false;

  late AnimationController _controller;
  late Animation<Color?> animation;
  late List<TweenSequenceItem<Color?>> colors;

  int activePage = 0;

  @override
  void initState() {
    _initialize();
    activePage = widget.active;

    super.initState();

    // choose page with active unit on start
    WidgetsBinding.instance.addPostFrameCallback((_) {
      coverController.jumpToPage(widget.active);
      cardController.jumpToPage(widget.active);
    });
  }

  @override
  void reassemble() {
    coverController.dispose();
    cardController.dispose();
    _initialize();
    super.reassemble();
  }

  @override
  void dispose() {
    coverController.dispose();
    cardController.dispose();
    super.dispose();
  }

  void _initialize() {
    colors = [];
    Color? previousColor;
    for (final unit in widget.units) {
      final backgroundColor = unitBackgroundColor(unit.color);

      if (previousColor != null) {
        colors.add(TweenSequenceItem(
          weight: 1.0,
          tween: ColorTween(begin: previousColor, end: backgroundColor),
        ));
      }

      previousColor = backgroundColor;
    }

    coverController = PageController();
    isCoverScrolling = false;

    cardController = PageController(viewportFraction: cardFraction);
    isCardScrolling = false;

    coverController.addListener(() {
      if (isCoverScrolling) {
        cardController.position.correctPixels(coverController.offset *
            cardController.viewportFraction /
            coverController.viewportFraction);
        cardController.position.notifyListeners();
      }
    });

    cardController.addListener(() {
      if (isCardScrolling) {
        coverController.position.correctPixels(cardController.offset *
            coverController.viewportFraction /
            cardController.viewportFraction);
        coverController.position.notifyListeners();
      }
    });

    _controller = AnimationController(
      duration: animationDuration,
      vsync: this,
    );

    animation = TweenSequence<Color?>(colors).animate(_controller)
      ..addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      backgroundColor: animation.value,
      child: Column(
        children: [
          PageTitle(
            widget.course.title,
            left: TitleButton(
              icon: const Icon(Icons.chevron_left, size: 40),
              isBack: true,
              route: TitleButtonRoute(
                APP_PAGE.courseDetails.toName,
                {'courseId': widget.course.id},
              ),
            ),
          ),
          Expanded(
            child: NotificationListener(
              onNotification: (notification) {
                if (notification is UserScrollNotification) {
                  if (notification.direction != ScrollDirection.idle) {
                    (cardController.position as ScrollPositionWithSingleContext)
                        .goIdle();
                    isCoverScrolling = true;
                    isCardScrolling = false;
                  } else {
                    isCoverScrolling = false;
                  }
                }
                return false;
              },
              child: PageView.builder(
                physics: const PageScrollPhysics(),
                controller: coverController,
                onPageChanged: (index) {
                  _controller.animateTo(index / colors.length);
                  setState(() {
                    activePage = index;
                  });
                },
                itemCount: widget.units.length,
                itemBuilder: (context, index) => UnitCover(
                  url: widget.units[index].coverimage,
                ),
              ),
            ),
          ),
          Expanded(
            child: NotificationListener(
              onNotification: (notification) {
                if (notification is UserScrollNotification) {
                  if (notification.direction != ScrollDirection.idle) {
                    (coverController.position
                            as ScrollPositionWithSingleContext)
                        .goIdle();
                    isCardScrolling = true;
                    isCoverScrolling = false;
                  } else {
                    isCardScrolling = false;
                  }
                }
                return false;
              },
              child: PageView.builder(
                physics: const PageScrollPhysics(),
                controller: cardController,
                onPageChanged: (index) {
                  _controller.animateTo(index / colors.length);
                  setState(() {
                    activePage = index;
                  });
                },
                itemCount: widget.units.length,
                itemBuilder: (context, index) => AnimatedScale(
                  scale: activePage == index ? 1 : 0.9,
                  duration: animationDuration,
                  child: UnitInfo(
                    unit: widget.units[index],
                    count: widget.units.length,
                    position: index,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
