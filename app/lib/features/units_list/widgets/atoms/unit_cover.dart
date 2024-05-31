import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class UnitCover extends StatelessWidget {
  final String url;

  const UnitCover({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 45,
        vertical: 8,
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(36)),
        child: Image(
          image: ExtendedNetworkImageProvider(url, cache: true),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
