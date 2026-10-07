// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dart:math';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late double _radius;
  late double _lineWidth;
  late double _percent;
  late Color _background;
  late Color _foreground;
  late Widget _center;

  @override
  void initState() {
    super.initState();
    _radius = fixtureRadius;
    _lineWidth = fixtureLineWidth;
    _percent = fixturePercent;
    _background = Colors.grey;
    _foreground = Colors.blue;
    _center = fixtureCenter;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: _radius * 2,
      child: Stack(
        alignment: Alignment.center,
        children: [
          _Circle(
            radius: _radius,
            lineWidth: _lineWidth,
            percent: 1.0,
            color: _background,
          ),
          _Circle(
            radius: _radius,
            lineWidth: _lineWidth,
            percent: _percent,
            color: _foreground,
          ),
          _center,
        ],
      ),
    );
  }
}
class _Circle extends StatelessWidget {
  final double radius, lineWidth, percent;
  final Color color;

  const _Circle({
    required this.radius,
    required this.lineWidth,
    required this.percent,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.square(radius),
      painter: CirclePainter(
        lineWidth: lineWidth,
        radius: radius - lineWidth / 2,
        color: color,
        percent: percent,
      ),
    );
  }
}
