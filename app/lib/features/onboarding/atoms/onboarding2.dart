import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

final List<Widget> onBoarding2 = [
  const AutoSizeText(
    'Practices that work',
    style: TextStyle(
      color: Color(0xffE6E1E5),
      fontSize: 36,
    ),
    maxLines: 1,
  ),
  const SizedBox(height: 12),
  const AutoSizeText(
    'Find the approach that works best for you'
    ' and follow guided instructions.',
    style: TextStyle(
      color: Color(0xffE6E1E5),
      fontSize: 16,
      height: 24 / 16,
    ),
    maxLines: 2,
  ),
  const SizedBox(height: 24),
  Container(
    alignment: Alignment.center,
    child: SizedBox(
      width: 280,
      height: 260,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Column(
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xff6750A4),
                      width: 5,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/onboarding/concentration.jpg',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Concentration',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 32,
            right: 0,
            child: Column(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/onboarding/loving-kindness.jpg',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Loving Kindness',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 46,
            child: Column(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/onboarding/energy-body.jpg',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Energy Body',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ),
  const SizedBox(height: 24),
  // const Spacer(),
  Container(
    // width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 45,
          height: 45,
          child: Image.asset('assets/images/onboarding/stage-01.jpg'),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  children: [
                    TextSpan(
                      text: 'Stage 1',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: '. Establishing a practice'),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              const Text('8/8 Completed'),
            ],
          ),
        ),
        const SizedBox(width: 10),
        const Icon(Icons.chevron_right, size: 40),
      ],
    ),
  ),
  Container(
    // width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 45,
          height: 45,
          child: Image.asset('assets/images/onboarding/stage-02.jpg'),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  children: [
                    TextSpan(
                      text: 'Stage 2',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: '. Overcoming Mind-Wandering'),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              const Text('24 Lessons'),
            ],
          ),
        ),
        const SizedBox(width: 10),
        const Icon(Icons.chevron_right, size: 40),
      ],
    ),
  ),
];
