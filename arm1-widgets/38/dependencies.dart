// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

class _AppLocalizations {
  const _AppLocalizations();
  String get editEntryRatingDialogTitle => 'Rating';
  String get filterRatingRejectedLabel => 'Rejected';
  String get filterNoRatingLabel => 'Unrated';
  String get applyButtonLabel => 'Apply';
  String get cancelTooltip => 'Cancel';
}

extension BuildContextL10nExtension on BuildContext {
  _AppLocalizations get l10n => const _AppLocalizations();
}

class Themes {
  static String asButtonLabel(String label) => label.toUpperCase();
}

class _Settings {
  const _Settings();

  bool get useTvLayout => false;
}

const _Settings settingsValue = _Settings();
late _Settings settings;

class AIcons {
  static const IconData rating = Icons.star;
}

class AColors {
  static const Color starDisabled = Colors.grey;
  static const Color starEnabled = Colors.amber;
}

enum RatingAction { set, rejected, unrated }

// Frozen runtime fixtures (shared by base and all mutations).
const int fixtureEntryRating = 3;
