// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'package:flutter/painting.dart';
import 'base.dart';

// Frozen runtime fixtures (shared by base and all mutations).
const List<String> fixtureActions = <String>[
  'Copy',
  'Forward',
  'Delete',
  'Reply',
  'Star',
  'Report',
];
const int fixturePageMaxChildCount = 4;
const Color fixtureBackgroundColor = Color(0xFF4C4C4C);
const double fixtureMenuWidth = 240;
const double fixtureMenuHeight = 44;
const double fixtureHeight = 48;
const double fixtureWidth = 240;
const Size fixtureButtonSize = Size(48, 48);
const RelativeRect fixturePosition = RelativeRect.fromLTRB(80, 200, 80, 400);

class PopupMenuRouteLayout extends SingleChildLayoutDelegate {
  PopupMenuRouteLayout(
    this.position,
    this.selectedItemOffset,
    this.textDirection,
    this.width,
    this.menuWidth,
  );

  final RelativeRect position;
  final double selectedItemOffset;
  final TextDirection textDirection;
  final double width;
  final double menuWidth;

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return BoxConstraints.loose(
      Size(
        constraints.biggest.width - (_kMenuScreenPadding * 2.0),
        constraints.biggest.height - (_kMenuScreenPadding * 2.0),
      ),
    );
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    double y =
        position.top +
        (size.height - position.top - position.bottom) / 2.0 -
        selectedItemOffset;

    double x;
    if (position.left > position.right) {
      x = position.left + width - childSize.width;
    } else if (position.left < position.right) {
      if (width > childSize.width) {
        x = position.left + (childSize.width - menuWidth) / 2;
      } else {
        x = position.left;
      }
    } else {
      x = position.right - width / 2 - childSize.width / 2;
    }

    if (x < _kMenuScreenPadding)
      x = _kMenuScreenPadding;
    else if (x + childSize.width > size.width - _kMenuScreenPadding)
      x = size.width - childSize.width - _kMenuScreenPadding;
    if (y < _kMenuScreenPadding)
      y = _kMenuScreenPadding;
    else if (y + childSize.height > size.height - _kMenuScreenPadding)
      y = size.height - childSize.height;
    else if (y < childSize.height * 2) {
      y = position.top + childSize.height;
    }
    return Offset(x, y);
  }

  @override
  bool shouldRelayout(PopupMenuRouteLayout oldDelegate) {
    return position != oldDelegate.position;
  }
}

const double _kMenuScreenPadding = 8.0;

class TrianglePainter extends CustomPainter {
  final Paint _paint;
  final Color color;
  final RelativeRect? position;
  final Size size;
  final double radius;
  final bool isInverted;
  final double? screenWidth;

  TrianglePainter({
    required this.color,
    this.position,
    required this.size,
    this.radius = 20,
    this.isInverted = false,
    this.screenWidth,
  }) : _paint = Paint()
         ..style = PaintingStyle.fill
         ..color = color
         ..strokeWidth = 10
         ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.moveTo(
      size.width - this.size.width + this.size.width / 1.5,
      isInverted ? 0 : size.height,
    );
    path.lineTo(
      size.width - this.size.width + this.size.width / 1.5 - radius / 3,
      isInverted ? size.height : 0,
    );
    path.lineTo(
      size.width - this.size.width + this.size.width / 1.5 + radius / 3,
      isInverted ? size.height : 0,
    );
    path.close();
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
