// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

extension L10nContext on BuildContext {
  _L10nStrings get l10n => _L10nStrings();
}

// Frozen state fixtures — shared by base and all mutations.
const bool fixtureQueryEnabled = true;
const Widget fixtureChild = SizedBox.shrink();
const bool fixtureEnabled = true;

class _L10nStrings {
  String get collectionActionHideTitleSearch => 'Hide title search';
  String get collectionActionShowTitleSearch => 'Show title search';
}
