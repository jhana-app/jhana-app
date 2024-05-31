import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final Widget child;
  final Function() onPressed;

  const ButtonText({
    super.key,
    this.width,
    this.height,
    this.padding,
    required this.child,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: padding,
          foregroundColor: const Color(0xffD0BCFF),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
