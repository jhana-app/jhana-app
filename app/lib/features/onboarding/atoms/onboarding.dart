import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:jhanas/atoms/button_contained.dart';

class OnBoarding extends StatelessWidget {
  final Function nextStep;
  final String nextStepTitle;
  final List<Widget> children;

  const OnBoarding({
    super.key,
    required this.nextStep,
    required this.nextStepTitle,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: CustomScrollView(
              shrinkWrap: true,
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: children,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          ButtonContained(
            width: double.infinity,
            height: 68,
            dark: true,
            onPressed: () => nextStep(),
            child: AutoSizeText(
              nextStepTitle,
              style: const TextStyle(fontSize: 22),
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
