import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Studying extends StatelessWidget {
  static const width = 42.0;
  static const height = 42.0;

  final double left;
  final double top;
  final String title;
  final bool alignRight;

  const Studying({
    super.key,
    required this.left,
    required this.top,
    required this.title,
    required this.alignRight,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left + width / 2 * (alignRight ? -1 : 1),
      top: top - height / 2,
      child: FractionalTranslation(
        translation: const Offset(-0.5, 0),
        child: Column(
          children: [
            SvgPicture.asset(
              'assets/images/studying.svg',
              width: width,
              height: height,
            ),
            const SizedBox(height: 6),
            const Text('Studying', style: TextStyle(fontSize: 12)),
            const SizedBox(height: 4),
            Text(title, style: const TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
