// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'base.dart';

class _AppLocalizations {
  const _AppLocalizations();
  String get viewerInfoLabelTitle => 'Title';
  String get viewerInfoLabelDescription => 'Description';
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

enum DescriptionField { title, description }

// Frozen state fixture — shared by base and all mutations. Returned fresh
// (factory) to avoid sharing a mutable set across runs.
Set<DescriptionField> fixtureFields() => {
  DescriptionField.title,
  DescriptionField.description,
};

// Frozen runtime fixtures (shared by base and all mutations).
const String fixtureTitleText = 'Title';
const String fixtureDescriptionText = 'Description';
TextEditingController makeTitleController() => TextEditingController(text: fixtureTitleText);
TextEditingController makeDescriptionController() => TextEditingController(text: fixtureDescriptionText);
