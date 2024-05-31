import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

final List<Widget> onBoarding1 = [
  const AutoSizeText(
    'Jhana',
    style: TextStyle(
      color: Color(0xffE6E1E5),
      fontSize: 57,
    ),
    maxLines: 1,
  ),
  const SizedBox(height: 12),
  const AutoSizeText(
    'is a place of joy, tranquility and equanimity',
    style: TextStyle(
      color: Color(0xffE6E1E5),
      fontSize: 24,
      height: 32 / 24,
    ),
    maxLines: 2,
  ),
];
