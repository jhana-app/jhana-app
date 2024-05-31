import 'package:flutter/material.dart';

const timerColor = Color(0xff78C93C);

Color unitBackgroundColor(String colorHex, [double multiplier = .15]) {
  final color = Color(0xff000000 | int.parse(colorHex, radix: 16));
  final hsl = HSLColor.fromColor(color);
  return hsl
      .withLightness((hsl.lightness * multiplier).clamp(0.0, 1.0))
      .toColor();
}

Color lessonButtonColor(String colorHex, bool active) {
  final color = Color(0xff000000 | int.parse(colorHex, radix: 16));
  if (active) {
    return HSLColor.fromColor(color)
        .withSaturation(0.5)
        .withLightness(0.5)
        .toColor();
  } else {
    return HSLColor.fromColor(color)
        .withSaturation(0.2)
        .withLightness(0.3)
        .toColor();
  }
}
