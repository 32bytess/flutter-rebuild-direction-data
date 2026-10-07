// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

class _AppLocalizations {
  const _AppLocalizations();
  String get newGroupDialogTitle => 'New Group';
  String get newGroupDialogNameLabel => 'Group Name';
  String get groupAlreadyExists => 'Group already exists';
  String get createButtonLabel => 'Create';
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

class FilterGrouping {
  final List<Uri> _existingGroups = [
    Uri.parse('group://nature'),
    Uri.parse('group://family'),
  ];

  Uri? buildGroupUri(Uri? parentUri, String name) {
    if (name.isEmpty) return null;
    final base = parentUri?.toString() ?? 'group://';
    return Uri.parse('$base$name');
  }

  bool exists(Uri? uri) {
    if (uri == null) return false;
    return _existingGroups.any((g) => g.toString() == uri.toString());
  }
}

// Frozen runtime fixtures (shared by base and all mutations).
TextEditingController makeTextController() => TextEditingController();
ValueNotifier<bool> makeBoolNotifier() => ValueNotifier(false);
FilterGrouping makeGrouping() => FilterGrouping();
