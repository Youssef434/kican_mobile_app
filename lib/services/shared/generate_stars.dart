import 'package:flutter/material.dart';
import '../../shared/star.dart';

List<Widget> getAllStars(int score, {double size = 28, double horizontalPadding = 2}) {
  return [
    ...List<Widget>.generate(score, (_) => Star(size: size, horizontalPadding: horizontalPadding,)),
    ...List<Widget>.generate(
        5 - score,
        (_) => Star(
              empty: true,
              size: size,
              horizontalPadding: horizontalPadding,
            ))
  ];
}
