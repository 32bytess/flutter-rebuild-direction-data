// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

final _AppSettings settingsValue = _AppSettings();
late _AppSettings settings;

class _AppSettings {
  bool confirmCreateVault = true;
  bool confirmDeleteForever = true;
  bool confirmMoveToBin = true;
  bool confirmMoveUndatedItems = true;
  bool useTvLayout = false;
}

extension BuildContextL10n on BuildContext {
  _AppL10n get l10n => const _AppL10n();
}

class _AppL10n {
  const _AppL10n();
  String get doNotAskAgain => 'Do not ask again';
  String get cancelTooltip => 'Cancel';
}

class Themes {
  static String asButtonLabel(BuildContext context, String label) => label;
}

class DefaultConfirmationDialogDelegate extends ConfirmationDialogDelegate {
  @override
  List<Widget> build(BuildContext context) => [
    const Padding(
      padding: EdgeInsets.all(16),
      child: Text('Are you sure you want to proceed?'),
    ),
  ];
}

abstract class ConfirmationDialogDelegate {
  List<Widget> build(BuildContext context);

  void apply() {}
}

void skipConfirmation(ConfirmationDialog type) {
  switch (type) {
    case .createVault:
      settings.confirmCreateVault = false;
    case .deleteForever:
      settings.confirmDeleteForever = false;
    case .moveToBin:
      settings.confirmMoveToBin = false;
    case .moveUndatedItems:
      settings.confirmMoveUndatedItems = false;
  }
}

enum ConfirmationDialog {
  createVault,
  deleteForever,
  moveToBin,
  moveUndatedItems,
}

// Frozen runtime fixtures (shared by base and all mutations).
ValueNotifier<bool> makeBoolNotifier() => ValueNotifier(false);
ConfirmationDialogDelegate makeDelegate() => DefaultConfirmationDialogDelegate();
const String fixtureConfirmationButtonLabel = 'Confirm';
