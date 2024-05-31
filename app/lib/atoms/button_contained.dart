import 'package:flutter/material.dart';

class ButtonContained extends StatelessWidget {
  final double? width;
  final double? height;
  final bool? dark;
  final EdgeInsets? padding;
  final bool disabled;
  final Widget? child;
  final Function() onPressed;

  const ButtonContained({
    super.key,
    this.width,
    this.height,
    this.dark,
    this.padding,
    this.disabled = false,
    required this.child,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? double.infinity,
      child: FilledButton(
        style: FilledButton.styleFrom(
          padding: padding,
          backgroundColor: Color(dark == true ? 0xff332D41 : 0xffD0BCFF),
          foregroundColor: Color(dark == true ? 0xffE8DEF8 : 0xff381E72),
        ),
        onPressed: disabled ? null : onPressed,
        child: child,
      ),
    );
  }
}
