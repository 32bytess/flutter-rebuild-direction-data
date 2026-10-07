// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

enum WidgetOutline {
  none,
  black,
  white,
  // system brightness dependent (low contrast):
  // - white on light theme
  // - black on dark theme
  systemBlackAndWhite,
  // system brightness dependent (high contrast):
  // - black on light theme
  // - white on dark theme
  systemBlackAndWhiteHighContrast,
  // system brightness dependent (low contrast):
  // light dynamic colour on light theme
  // dark dynamic colour on dark theme.
  systemDynamicLowContrast,
  // system brightness dependent (high contrast):
  // dark dynamic colour on light theme
  // light dynamic colour on dark theme.
  systemDynamic,
}

class Device {
  bool get isDynamicColorAvailable => true;
}

// Frozen state fixture — shared by base and all mutations. Returned fresh
// (factory) to avoid sharing a mutable map across runs.
Map<Brightness, Map<WidgetOutline, Color?>>
fixtureOutlineColorsByBrightness() => {
  Brightness.light: {
    WidgetOutline.none: null,
    WidgetOutline.black: Colors.black,
    WidgetOutline.white: Colors.white,
    WidgetOutline.systemBlackAndWhite: Colors.white,
    WidgetOutline.systemBlackAndWhiteHighContrast: Colors.black,
    WidgetOutline.systemDynamicLowContrast: Colors.blue,
    WidgetOutline.systemDynamic: Colors.indigo,
  },
  Brightness.dark: {
    WidgetOutline.none: null,
    WidgetOutline.black: Colors.black,
    WidgetOutline.white: Colors.white,
    WidgetOutline.systemBlackAndWhite: Colors.black,
    WidgetOutline.systemBlackAndWhiteHighContrast: Colors.white,
    WidgetOutline.systemDynamicLowContrast: Colors.tealAccent,
    WidgetOutline.systemDynamic: Colors.cyan,
  },
};

class AIcons {
  static const IconData clear = Icons.clear;
}

class AvesBorder {
  static BoxBorder? border(BuildContext context) {
    return Border.all(color: Colors.grey);
  }
}
