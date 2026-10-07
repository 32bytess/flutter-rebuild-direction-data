// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dart:ui';
import 'base.dart';

enum ExportTarget { clipboard, file }

enum ExportableEntryField {
  uri,
  path,
  title,
  date,
  size,
  resolution,
  width,
  height,
  duration,
  coordinates,
  address,
  tags,
}

enum AvesThemeColorMode { monochrome, polychrome }

class HighlightDecoration extends Decoration {
  final Color color;

  const HighlightDecoration({required this.color});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _HighlightDecorationPainter(this, onChanged);
  }
}

class _HighlightDecorationPainter extends BoxPainter {
  final HighlightDecoration decoration;

  _HighlightDecorationPainter(this.decoration, VoidCallback? onChanged)
    : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final paint = Paint()..color = decoration.color;
    canvas.drawRect(offset & (configuration.size ?? Size.zero), paint);
  }
}

class MimeTypes {
  static const String csv = 'text/csv';
  static const String json = 'application/json';
}

class MimeUtils {
  static String displayType(String mimeType) => mimeType;
}

class Themes {
  static Color firstLayerColor(BuildContext context) =>
      Theme.of(context).colorScheme.surface;
}

class AppLocalizations {
  String get settingsActionExport => 'Export';
  String get exportEntryDialogFormat => 'Format';
  String get entryActionCopyToClipboard => 'Copy to clipboard';
  String get saveTooltip => 'Save';
}

class AvesColorsData {
  const AvesColorsData();

  Color fromString(String string) => Colors.blueGrey;
}

class Settings {
  const Settings();

  AvesThemeColorMode get themeColorMode => AvesThemeColorMode.monochrome;
}

bool canHaveLetterSpacing(Locale locale) => true;

extension ExportableEntryFieldExt on ExportableEntryField {
  String getText(BuildContext context) => name;
}

extension ThemeDataDarkExt on ThemeData {
  bool get isDark => brightness == Brightness.dark;
}

extension BuildContextL10nExt on BuildContext {
  AppLocalizations get l10n => AppLocalizations();

  Locale get locale => Localizations.maybeLocaleOf(this) ?? const Locale('en');

  T watch<T>() {
    if (T == AvesColorsData) {
      return const AvesColorsData() as T;
    }
    throw UnimplementedError('watch<$T>() is not provided');
  }

  R select<T, R>(R Function(T value) selector) {
    if (T == Settings) {
      return selector(const Settings() as T);
    }
    throw UnimplementedError('select<$T, $R>() is not provided');
  }
}
