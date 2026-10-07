// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

enum EntryBackground { black, white, checkered }

// Frozen state fixtures — shared by base and all mutations.
const EntryBackground fixtureCurrentBackground = EntryBackground.white;
const Widget fixtureChild = SizedBox.shrink();

extension EntryBackgroundColors on EntryBackground {
  Color? get color {
    switch (this) {
      case EntryBackground.black:
        return Colors.black;
      case EntryBackground.white:
        return Colors.white;
      case EntryBackground.checkered:
        return null;
    }
  }

  bool get isColor => color != null;
}

extension L10nContextExt on BuildContext {
  L10n get l10n => const L10n();
}

class L10n {
  const L10n();
  String get settingsImageBackground => 'Image Background';
}

final Settings settingsValue = Settings();
late Settings settings;

class Settings {
  EntryBackground imageBackground = EntryBackground.white;
}

class CheckeredPainter extends CustomPainter {
  final double checkSize;
  CheckeredPainter({required this.checkSize});

  @override
  void paint(Canvas canvas, Size size) {
    final paint1 = Paint()..color = Colors.white;
    final paint2 = Paint()..color = Colors.grey;
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint1);
    for (double y = 0; y < size.height; y += checkSize) {
      for (double x = 0; x < size.width; x += checkSize) {
        if (((x / checkSize).floor() + (y / checkSize).floor()) % 2 == 0) {
          canvas.drawRect(Rect.fromLTWH(x, y, checkSize, checkSize), paint2);
        }
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
