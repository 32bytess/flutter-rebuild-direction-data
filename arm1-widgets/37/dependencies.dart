// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';
import 'package:flutter/gestures.dart';
import 'base.dart';

typedef InfoValueSpanBuilder =
    List<InlineSpan> Function(BuildContext context, String key, String value);

class Unicode {
  static const String fsi = '\u2068';
  static const String pdi = '\u2069';
}

// Frozen state fixtures \u2014 shared by base and all mutations. Map returned fresh
// (factory) to avoid sharing a mutable instance across runs.
Map<String, String> fixtureKeyValues() => {
  'Name': 'John Doe',
  'Location': 'Earth',
  'Status': 'Active',
};
const int fixtureMaxValueLength = 140;

class InfoRowGroup {
  static const double keyValuePadding = 16;
  static const double fontSize = 13;
  static const TextStyle valueStyle = TextStyle(fontSize: fontSize);

  static TextStyle keyStyle(BuildContext context) =>
      valueStyle.copyWith(height: 2.0);
}

// Frozen runtime fixtures (shared by base and all mutations).
List<String> makeExpandedKeys() => [];
Map<String, InfoValueSpanBuilder> makeSpanBuilders() => {};
