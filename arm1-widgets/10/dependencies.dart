// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

class RecoverBullState {
  final bool isLoading;
  const RecoverBullState({required this.isLoading});
}

// Frozen state fixture — shared by base and all mutations.
const RecoverBullState fixtureRecoverBullState = RecoverBullState(
  isLoading: true,
);

class _AppLocalizations {
  String get recoverbullFetchingVaultKey => 'Fetching vault key…';
  String get recoverbullConnectingTor => 'Connecting to Tor…';
}

class _FontTheme {
  TextStyle? get headlineLarge => const TextStyle(fontSize: 24);
  TextStyle? get bodySmall => const TextStyle(fontSize: 12);
}

extension BuildContextLocExt on BuildContext {
  _AppLocalizations get loc => _AppLocalizations();
  _FontTheme get font => _FontTheme();
}

class Autostart {
  static const Autostart loop = Autostart._();
  const Autostart._();
}
