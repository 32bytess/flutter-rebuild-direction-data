// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'dart:math' as math;
import 'package:flutter/material.dart';
part 'dependencies.dart';


class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  GeneratedWidget.fixture({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  late WidgetRef ref;

  @override
  void initState() {
    super.initState();
    ref = fixtureRef;
    currentIndex = fixtureCurrentIndex;
    hasUpdateBadge = fixtureHasUpdateBadge;
    onTap = fixtureOnTap;
  }

  late int currentIndex;

  late bool hasUpdateBadge;

  late void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context).extension<TeapodTokens>()!;
    final items = [
      _TabItem(icon: _TabIcon.shield, label: 'VPN'),
      _TabItem(icon: _TabIcon.key, label: 'Конфиги'),
      _TabItem(icon: _TabIcon.route, label: 'Маршрут'),
      _TabItem(icon: _TabIcon.cog, label: 'Настройки', badge: hasUpdateBadge),
    ];
    return Container(
      decoration: BoxDecoration(
        color: t.bg,
        border: Border(top: BorderSide(color: t.line, width: 1)),
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 10, 8, 6),
          child: Row(
            children: items.asMap().entries.map((e) {
              final idx = e.key;
              final item = e.value;
              final active = idx == currentIndex;
              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    /* spm: non-rebuild body erased */
                  },
                  behavior: HitTestBehavior.opaque,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Active underline indicator
                      Container(
                        width: 28,
                        height: 2,
                        color: active ? t.accent : Colors.transparent,
                      ),
                      const SizedBox(height: 5),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          _SvgTabIcon(
                            icon: item.icon,
                            color: active ? t.accent : t.textMuted,
                          ),
                          if (item.badge)
                            Positioned(
                              right: -3,
                              top: -3,
                              child: Container(
                                width: 7,
                                height: 7,
                                decoration: BoxDecoration(
                                  color: t.danger,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        item.label.toUpperCase(),
                        style: AppTheme.mono(
                          size: 10,
                          color: active ? t.accent : t.textMuted,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class _TabItem {
  final _TabIcon icon;
  final String label;
  final bool badge;
  const _TabItem({required this.icon, required this.label, this.badge = false});
}

enum _TabIcon { shield, key, route, cog }

class _SvgTabIcon extends StatelessWidget {
  final _TabIcon icon;
  final Color color;
  const _SvgTabIcon({required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(20, 20),
      painter: _TabIconPainter(icon, color),
    );
  }
}

class _TabIconPainter extends CustomPainter {
  final _TabIcon icon;
  final Color color;
  const _TabIconPainter(this.icon, this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.6
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    final s = size.width / 24.0;
    canvas.scale(s, s);

    switch (icon) {
      case _TabIcon.shield:
        final path = Path()
          ..moveTo(12, 3)
          ..lineTo(20, 6)
          ..lineTo(20, 12)
          ..cubicTo(20, 16.5, 17, 20.5, 12, 22)
          ..cubicTo(7, 20.5, 4, 16.5, 4, 12)
          ..lineTo(4, 6)
          ..close();
        canvas.drawPath(path, paint);
        break;
      case _TabIcon.key:
        canvas.drawCircle(const Offset(8, 15), 4, paint);
        canvas.drawLine(const Offset(10.8, 12.2), const Offset(20, 3), paint);
        canvas.drawLine(const Offset(17, 6), const Offset(20, 9), paint);
        canvas.drawLine(const Offset(15, 8), const Offset(17, 10), paint);
        break;
      case _TabIcon.route:
        final route = Path()
          ..moveTo(4, 18)
          ..lineTo(10, 18)
          ..lineTo(14, 6)
          ..lineTo(20, 6);
        canvas.drawPath(route, paint);
        canvas.drawLine(const Offset(17, 3), const Offset(20, 6), paint);
        canvas.drawLine(const Offset(20, 6), const Offset(17, 9), paint);
        canvas.drawCircle(const Offset(4, 18), 1.4, paint);
        break;
      case _TabIcon.cog:
        canvas.drawCircle(const Offset(12, 12), 3, paint);
        for (var i = 0; i < 8; i++) {
          final angle = i * math.pi / 4;
          final c = math.cos(angle);
          final s = math.sin(angle);
          canvas.drawLine(
            Offset(12 + c * 5, 12 + s * 5),
            Offset(12 + c * 9, 12 + s * 9),
            paint,
          );
        }
        break;
    }
  }

  @override
  bool shouldRepaint(_TabIconPainter old) =>
      old.color != color || old.icon != icon;
}
















// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
