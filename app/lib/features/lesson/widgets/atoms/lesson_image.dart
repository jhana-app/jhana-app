import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class LessonImage extends StatelessWidget {
  final String imageUrl;

  const LessonImage(this.imageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 16,
      height: 215,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image(
          image: ExtendedNetworkImageProvider(imageUrl, cache: true),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
