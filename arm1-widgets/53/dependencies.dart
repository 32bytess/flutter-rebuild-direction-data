// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

final AppSettings settingsValue = AppSettings();
late AppSettings settings;

// Frozen state fixtures — shared by base and all mutations. Content list is
// returned fresh (factory) to avoid sharing a mutable list across runs.
const String fixtureTitle = 'Dialog';
List<Widget> fixtureScrollableContent() => [const Text('Content')];

class AppSettings {
  bool useTvLayout = false;
}

class AvesDialog {
  static const confirmationRouteName = '/dialog/confirmation';
  static const warningRouteName = '/dialog/warning';
  static const Radius cornerRadius = Radius.circular(24);
  static const double defaultHorizontalContentPadding = 24;
  static const double controlCaptionPadding = 16;
  static const double borderWidth = 1.0;
  static const EdgeInsets actionsPadding = EdgeInsets.symmetric(
    vertical: 4,
    horizontal: 16,
  );
  static const EdgeInsets buttonPadding = EdgeInsets.symmetric(horizontal: 8);

  static Decoration contentDecoration(BuildContext context) => BoxDecoration(
    border: Border(
      bottom: Divider.createBorderSide(context, width: borderWidth),
    ),
  );

  static ShapeBorder shape(BuildContext context) {
    return RoundedRectangleBorder(
      side: Divider.createBorderSide(context, width: borderWidth),
      borderRadius: const BorderRadius.all(cornerRadius),
    );
  }
}

// Frozen runtime fixtures (shared by base and all mutations).
List<Widget> makeActions() => [];
