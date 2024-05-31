import 'package:flutter/material.dart';

const int primaryColor = 0xffD0BCFF;

final Map<int, Color> primaryColorSwatch = {
  50: const Color(primaryColor).withOpacity(0.1),
  100: const Color(primaryColor).withOpacity(0.2),
  200: const Color(primaryColor).withOpacity(0.3),
  300: const Color(primaryColor).withOpacity(0.4),
  400: const Color(primaryColor).withOpacity(0.5),
  500: const Color(primaryColor).withOpacity(0.6),
  600: const Color(primaryColor).withOpacity(0.7),
  700: const Color(primaryColor).withOpacity(0.8),
  800: const Color(primaryColor).withOpacity(0.9),
  900: const Color(primaryColor).withOpacity(1),
};

final theme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: MaterialColor(primaryColor, primaryColorSwatch),
  fontFamily: 'Roboto',
);
