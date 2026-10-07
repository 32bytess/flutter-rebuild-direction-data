// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

class _Settings {
  const _Settings();

  bool get useTvLayout => false;
}

const _Settings settingsValue = _Settings();
late _Settings settings;

class AIcons {
  static const IconData hide = Icons.visibility_off;
  static const IconData show = Icons.visibility;
  static const IconData info = Icons.info_outline;
}

class _L10n {
  String get hideTooltip => 'Hide';
  String get showTooltip => 'Show';
  String get settingsNavigationDrawerBanner =>
      'Customize your navigation drawer';
}

extension BuildContextL10n on BuildContext {
  _L10n get l10n => _L10n();
}

extension MediaQueryDataExt on MediaQueryData {
  double get effectiveBottomPadding => viewPadding.bottom;
}

typedef ItemWidgetBuilder<T> = Widget Function(T item);

// Frozen state fixtures — shared by base and all mutations. Returned fresh
// (factories) since they are mutated at runtime (reorder/toggle).
List<String> fixtureItems() => ['Item 1', 'Item 2', 'Item 3'];
Set<String> fixtureVisibleItems() => {'Item 1', 'Item 2'};
