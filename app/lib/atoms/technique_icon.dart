import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/technique.graphql.dart';

class TechniqueIcon extends StatelessWidget {
  final Fragment$Technique technique;
  final double size;
  final double borderRadius;

  const TechniqueIcon({
    super.key,
    required this.technique,
    this.size = 40,
    this.borderRadius = 12,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        child: Image(
          image: ExtendedNetworkImageProvider(
            technique.coverimage,
            cache: true,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
