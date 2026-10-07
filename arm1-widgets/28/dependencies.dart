// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

class _AppLocalizations {
  const _AppLocalizations();
  String get newDynamicAlbumDialogTitle => 'New Dynamic Album';
  String get newAlbumDialogNameLabel => 'Album Name';
  String get dynamicAlbumAlreadyExists => 'Album already exists';
  String get showButtonLabel => 'Show';
  String get createAlbumButtonLabel => 'Create';
  String get cancelTooltip => 'Cancel';
}

extension BuildContextL10nExtension on BuildContext {
  _AppLocalizations get l10n => const _AppLocalizations();
}

class _Settings {
  const _Settings();

  bool get useTvLayout => false;
}

const _Settings settingsValue = _Settings();
late _Settings settings;

class Themes {
  static String asButtonLabel(String label) => label.toUpperCase();
}

// Frozen state fixture — shared by base and all mutations. Returned fresh
// (factory) to avoid sharing a mutable list across runs.
List<String> fixtureDynamicAlbums() => ['vacation', 'nature', 'family'];

// Frozen runtime fixtures (shared by base and all mutations).
TextEditingController makeTextController() => TextEditingController();
ValueNotifier<bool> makeBoolNotifier() => ValueNotifier(false);
