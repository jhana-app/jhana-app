import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class UnitImage extends StatelessWidget {
  final String imageUrl;

  const UnitImage(this.imageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width,
      child: Image(
        image: ExtendedNetworkImageProvider(imageUrl, cache: true),
        fit: BoxFit.cover,
      ),
    );
  }
}
