import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jhanas/layout/atoms/nav_bar.dart';
import 'package:jhanas/player/mini_player.dart';

class AppLayout extends StatefulWidget {
  final bool isFullscreen;
  final Widget? child;

  const AppLayout({
    super.key,
    this.isFullscreen = false,
    required this.child,
  });

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      // DeviceOrientation.landscapeRight,
      // DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      // DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.black, // for Android
        statusBarIconBrightness: Brightness.light, // for Android
        systemNavigationBarColor: Colors.black, // for Android
        statusBarBrightness: Brightness.dark, // for IOS
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: widget.child != null
            ? WithMiniPlayer(
                isFullscreen: widget.isFullscreen,
                child: widget.child!,
              )
            : null,
        bottomNavigationBar: widget.isFullscreen ? null : const NavBar(),
      );
}

class FullscreenLayout extends StatelessWidget {
  final Widget? child;

  const FullscreenLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) => AppLayout(
        isFullscreen: true,
        child: child,
      );
}
