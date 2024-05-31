import 'package:flutter/material.dart';

class PullDownIndicator extends StatelessWidget {
  const PullDownIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 4,
      margin: const EdgeInsets.symmetric(vertical: 9),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 0.2),
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
