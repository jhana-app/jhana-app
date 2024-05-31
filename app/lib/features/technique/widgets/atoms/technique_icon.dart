import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/technique.graphql.dart';

class TechniqueIcon extends StatelessWidget {
  final Fragment$Technique technique;
  final double size;
  final bool withBorder;
  final Color borderColor;
  final double borderWidth;

  const TechniqueIcon({
    super.key,
    required this.technique,
    this.size = 40,
    this.withBorder = false,
    this.borderColor = const Color(0xff625b71),
    this.borderWidth = 4,
  });

  @override
  Widget build(BuildContext context) {
    if (withBorder) {
      return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: borderWidth,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(36)),
          image: DecorationImage(
            image: ExtendedNetworkImageProvider(
              technique.coverimage,
              cache: true,
            ),
            fit: BoxFit.fill,
          ),
        ),
      );
    }

    return SizedBox(
      width: size,
      height: size,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        child: Image.network(technique.coverimage),
      ),
    );
  }
}
