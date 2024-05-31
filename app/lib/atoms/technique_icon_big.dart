import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/technique.graphql.dart';

class TechniqueIconBig extends StatelessWidget {
  final Fragment$Technique technique;
  final double size;
  final Color borderColor;
  final double borderWidth;
  final double borderRadius;

  const TechniqueIconBig({
    super.key,
    required this.technique,
    this.size = 40,
    this.borderColor = const Color(0xff625b71),
    this.borderWidth = 4,
    this.borderRadius = 36,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
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
}
