import 'package:flutter/material.dart';

class PageLayout extends StatelessWidget {
  final Color? backgroundColor;
  final DecorationImage? backgroundImage;
  final Widget? floatingAction;
  final FloatingActionButtonLocation? floatingActionLocation;

  final Widget? child;

  const PageLayout({
    super.key,
    this.backgroundColor = const Color(0xff202020),
    this.backgroundImage,
    this.floatingAction,
    this.floatingActionLocation,
    required this.child,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        body: backgroundImage != null
            ? Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: backgroundImage!.image,
                    opacity: backgroundImage!.opacity,
                    fit: BoxFit.cover,
                  ),
                ),
                child: SafeArea(child: child ?? Container()),
              )
            : SafeArea(child: child ?? Container()),
        backgroundColor: backgroundColor,
        floatingActionButton: floatingAction,
        floatingActionButtonLocation: floatingActionLocation,
      );
}
