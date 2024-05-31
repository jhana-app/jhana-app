import 'package:flutter/material.dart';

class ButtonOutline extends StatelessWidget {
  final double width;
  final double height;
  final bool disabled;
  final EdgeInsets? padding;
  final Widget child;
  final Function() onPressed;

  const ButtonOutline({
    super.key,
    this.width = double.infinity,
    this.height = double.infinity,
    this.disabled = false,
    this.padding,
    required this.child,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: padding,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Color(0xff938F99)),
            borderRadius: BorderRadius.circular(20),
          ),
          foregroundColor:
              disabled ? const Color(0x61E6E1E5) : const Color(0xffD0BCFF),
        ),
        onPressed: disabled ? () {} : onPressed,
        child: child,
      ),
    );
  }
}
