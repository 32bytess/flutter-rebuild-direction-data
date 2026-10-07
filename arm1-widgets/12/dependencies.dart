// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

final AppSettings settingsValue = AppSettings();
late AppSettings settings;

class AppSettings {
  bool useTvLayout = false;
}

extension BuildContextL10nExtension on BuildContext {
  _AppLocalizations get l10n => _AppLocalizations();
}

class _AppLocalizations {
  String get applyButtonLabel => 'Apply';
  String get cancelTooltip => 'Cancel';
}

class Themes {
  static String asButtonLabel(String label) => label.toUpperCase();
}

enum ColorPickerType { primary, accent, wheel }
