// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

const int secondsInMinute = 60;

const int minutesInHour = 60;

const TextDirection timeComponentsDirection = TextDirection.ltr;

class AppSettings {
  bool useTvLayout = false;
}

final AppSettings settingsValue = AppSettings();
late AppSettings settings;

class Themes {
  static String asButtonLabel(String s) => s;
}

class AvesLocalizations {
  String get durationDialogMinutes => 'Minutes';
  String get durationDialogSeconds => 'Seconds';
  String get applyButtonLabel => 'Apply';
  String get cancelTooltip => 'Cancel';
}

extension BuildContextX on BuildContext {
  AvesLocalizations get l10n => AvesLocalizations();
  Locale get locale => Localizations.maybeLocaleOf(this) ?? const Locale('en');
}

class NumberFormat {
  final String pattern;
  final Locale locale;

  NumberFormat(this.pattern, this.locale);

  String format(Object v) => v.toString().padLeft(pattern.length, '0');
}

// Frozen runtime fixtures (shared by base and all mutations).
const int fixtureSeconds = 90;
ValueNotifier<int> makeMinutes() => ValueNotifier(fixtureSeconds ~/ secondsInMinute);
ValueNotifier<int> makeSeconds() => ValueNotifier(fixtureSeconds % secondsInMinute);
