// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

enum AppThemeMode {
  light,
  dark,
  system;

  factory AppThemeMode.fromName(String name) {
    return AppThemeMode.values.firstWhere(
      (themeMode) => themeMode.name == name,
      orElse: () => AppThemeMode.system,
    );
  }
}

enum AppThemeType { light, dark }

class AppLanguage {
  final Locale locale;
  const AppLanguage(this.locale);
}

class WizardChoices {
  final AppThemeMode themeMode;
  final AppLanguage language;
  final String defaultCurrency;
  final bool? reportingConsent;

  const WizardChoices({
    this.themeMode = AppThemeMode.system,
    this.language = const AppLanguage(Locale('en')),
    this.defaultCurrency = 'USD',
    this.reportingConsent,
  });
}

class WizardState {
  final WizardChoices choices;
  const WizardState({this.choices = const WizardChoices()});
}

// Frozen state fixture — shared by base and all mutations.
const WizardState fixtureWizardState = WizardState();

const Brightness systemBrightnessValue = Brightness.light;
late Brightness systemBrightness;

class AppTheme {
  static ThemeData themeData(AppThemeType type) => ThemeData(
    brightness: type == AppThemeType.dark ? Brightness.dark : Brightness.light,
  );
}

class AppLocalizations {
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = [];
  static const List<Locale> supportedLocales = [Locale('en')];
}

class WizardEvent {
  const WizardEvent.themeDetected(AppThemeMode mode);
  const WizardEvent.consentPicked(bool consent);
  const WizardEvent.completed();
  const WizardEvent.themePicked(AppThemeMode mode);
  const WizardEvent.languagePicked(dynamic lang);
  const WizardEvent.currencyPicked(dynamic code);
}

class WizardBloc {
  WizardState state = const WizardState();
  void add(WizardEvent event) {}
}

enum WizardPage {
  welcome,
  customize,
  mission,
  journey;

  bool get isFirst => this == WizardPage.welcome;
  bool get isLast => this == WizardPage.journey;
  static int get total => WizardPage.values.length;
}

class AppScreen {
  final double width;
  final double height;
  const AppScreen({required this.width, required this.height});
}

class Device {
  static const AppScreen screen = AppScreen(width: 390, height: 844);
}

class AppColors {
  final Color primaryFixed;
  final Color background;
  final Color primary;
  final Color onPrimary;
  final Color secondaryFixed;
  final Color onSecondaryFixed;

  const AppColors({
    this.primaryFixed = const Color(0xFFB71C1C),
    this.background = const Color(0xFFFFFFFF),
    this.primary = const Color(0xFFB71C1C),
    this.onPrimary = const Color(0xFFFFFFFF),
    this.secondaryFixed = const Color(0xFFFFFFFF),
    this.onSecondaryFixed = const Color(0xFF000000),
  });
}

class AppLoc {
  String get wizardMissionRequired => '';
  String get getStartedButton => 'Get started';
  String get wizardNextButton => 'Next';
}

extension BuildContextExtensions on BuildContext {
  T read<T>() {
    if (T == WizardBloc) return WizardBloc() as T;
    throw UnimplementedError('No stub for $T');
  }

  AppColors get appColors => const AppColors();
  AppLoc get loc => AppLoc();
}

class SnackBarUtils {
  static void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }
}
