// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dart:math';
import 'base.dart';

extension NumExtensions on num {
  double get vp => toDouble();
  double get fp => toDouble();
  double get vh => toDouble();
  double get vw => toDouble();
  double get wmax => toDouble();
}

extension StringExtensions on String {
  String get tr => this;
}

class _Rx<T> {
  T value;
  _Rx(this.value);
}

class Controller {
  final mediaPadding = _Rx<EdgeInsets>(EdgeInsets.zero);
  final mediaTopBar = _Rx<double>(40.0);
  final isShadow = _Rx<bool>(false);
  final loading = _Rx<bool>(false);
  final string = _Rx<String>('Sample log output');
}

class GetNavigate {
  static void back() {}
}

class GoogleFonts {
  static TextStyle robotoMono({
    Color? color,
    FontWeight? fontWeight,
    double? fontSize,
    double? height,
  }) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
    );
  }
}
