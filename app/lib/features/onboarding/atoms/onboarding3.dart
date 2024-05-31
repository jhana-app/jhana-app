import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jhanas/helpers/color.dart';

final List<Widget> onBoarding3 = [
  const AutoSizeText(
    'Build a habit',
    style: TextStyle(
      color: Color(0xffE6E1E5),
      fontSize: 36,
    ),
    maxLines: 1,
  ),
  const SizedBox(height: 12),
  const AutoSizeText(
    'Achievements and badges are a great way to stay motivated on your'
    ' journey to Jhanas. Unlock new badges as you practice and share'
    ' progress with fellow meditators.',
    style: TextStyle(
      color: Color(0xffE6E1E5),
      fontSize: 16,
      height: 24 / 16,
    ),
    maxLines: 4,
  ),
  const SizedBox(height: 24),
  Container(
    alignment: Alignment.center,
    child: Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: const BoxDecoration(
            color: Color(0xffD54199),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Center(
            child: SvgPicture.asset(
              'assets/images/onboarding/mastering.svg',
              width: 42,
              height: 44,
            ),
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          'Mastering Stage 1',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ],
    ),
  ),
  const SizedBox(height: 60),
  Center(
    child: Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: const BoxDecoration(
            color: timerColor,
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Center(
            child: SvgPicture.asset(
              'assets/images/onboarding/mastering.svg',
              width: 42,
              height: 44,
            ),
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          'Mastering Stage 2',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ],
    ),
  ),
];
