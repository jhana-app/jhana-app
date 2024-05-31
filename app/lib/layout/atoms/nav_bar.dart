import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jhanas/router.dart';

class NavBarItem extends BottomNavigationBarItem {
  final String initialLocation;

  const NavBarItem({
    required this.initialLocation,
    required Widget icon,
    String? label,
  }) : super(icon: icon, label: label);
}

final tabs = [
  NavBarItem(
    initialLocation: APP_PAGE.activity.toPath,
    icon: const SizedBox(
      height: 60,
      width: 60,
      child: Icon(Icons.home, size: 34),
    ),
    label: 'Activity',
  ),
  NavBarItem(
    initialLocation: APP_PAGE.coursesList.toPath,
    icon: const SizedBox(
      height: 60,
      width: 60,
      child: Icon(Icons.route, size: 34),
    ),
    label: 'Courses',
  ),
  NavBarItem(
    initialLocation: APP_PAGE.timer.toPath,
    icon: const SizedBox(
      height: 68,
      width: 68,
      child: Icon(Icons.timer_outlined, size: 52),
    ),
    label: 'Timer',
  ),
  NavBarItem(
    initialLocation: APP_PAGE.theory.toPath,
    icon: const SizedBox(
      height: 60,
      width: 60,
      child: Icon(Icons.menu_book, size: 34),
    ),
    label: 'Theory',
  ),
  NavBarItem(
    initialLocation: APP_PAGE.user.toPath,
    icon: const SizedBox(
      height: 60,
      width: 60,
      child: Icon(Icons.person_outlined, size: 34),
    ),
    label: 'User',
  ),
];

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  Map<int, String> _lastLocations = {};

  @override
  void initState() {
    for (var i = 0; i < tabs.length; i++) {
      _lastLocations[i] = tabs[i].initialLocation;
    }
    super.initState();
  }

  int get _currentIndex => _locationToTabIndex(GoRouter.of(context).location);

  int _locationToTabIndex(String location) {
    var index = tabs.indexWhere((t) => location.startsWith(t.initialLocation));
    if (index < 0) {
      index = 0;
    }
    setState(() => _lastLocations[index] = location);
    return index;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: tabs,
      onTap: (index) => _onItemTapped(context, index),
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      iconSize: 32,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedFontSize: 0,
      unselectedFontSize: 0,
    );
  }

  void _onItemTapped(BuildContext context, int tabIndex) {
    var location = tabs[tabIndex].initialLocation;

    if (_currentIndex == tabIndex) {
      setState(() => _lastLocations[tabIndex] = location);
    } else {
      location = _lastLocations[tabIndex] ?? location;
    }

    context.go(location);
  }
}
