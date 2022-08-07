import 'package:flutter/material.dart';

class DotIndicatorPainter extends BoxPainter {
  const DotIndicatorPainter();

  static const radius = 8.0;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final dx = configuration.size!.width / 2;
    final dy = configuration.size!.height + radius / 2;
  }
}
