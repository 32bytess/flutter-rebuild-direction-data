// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dart:math';
import 'base.dart';

class CirclePainter extends CustomPainter {
  final double radius, lineWidth, percent;
  final Color color;

  const CirclePainter({
    required this.radius,
    required this.lineWidth,
    required this.percent,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..color = color
      ..strokeWidth = lineWidth;

    canvas.translate(center.dx, center.dy);
    canvas.rotate(-pi / 2);
    canvas.drawArc(
      Rect.fromCircle(center: Offset.zero, radius: radius),
      0,
      2 * pi * percent,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

// Frozen runtime fixtures (shared by base and all mutations).
const double fixtureRadius = 100.0;
const double fixtureLineWidth = 10.0;
const double fixturePercent = 0.7;
const Widget fixtureCenter = Text('70%');
