// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

class AIcons {
  static const IconData hide = Icons.visibility_off;
  static const IconData show = Icons.visibility;
}

class L10nValues {
  final String hideTooltip = 'Hide';
  final String showTooltip = 'Show';
}

extension L10nExt on BuildContext {
  L10nValues get l10n => L10nValues();
}

class AppSettings {
  final bool useTvLayout = false;
}

final AppSettings settingsValue = AppSettings();
late AppSettings settings;

typedef ItemWidgetBuilder = Widget Function(String item);

// Frozen state fixtures — shared by base and all mutations. items/visibleItems
// are mutated at runtime (reorder/toggle), so they're returned as fresh copies
// via factories to avoid sharing a mutable instance across runs.
List<String> fixtureItems() => ['a', 'b', 'c'];
Set<String> fixtureVisibleItems() => <String>{'a', 'b'};
const double fixtureMqPaddingBottom = 0.0;
const Widget fixtureChild = SizedBox.shrink();
