import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:jhanas/api/graphql/content.graphql.dart';

class ContentIcon extends StatelessWidget {
  final Fragment$Content content;
  final double size;
  final double borderRadius;

  const ContentIcon({
    super.key,
    required this.content,
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
          image: ExtendedNetworkImageProvider(content.iconimage, cache: true),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
