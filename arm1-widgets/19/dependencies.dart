// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dart:math';
import 'base.dart';

class _Rx<T> {
  T value;
  _Rx(T initial) : value = initial;
}

class Controller {
  final mediaPadding = _Rx<EdgeInsets>(EdgeInsets.zero);
  final mediaTopBar = _Rx<double>(0.0);
  final string = _Rx<String>('Sample text');
}

class GoogleFonts {
  static TextStyle robotoMono({
    Color? color,
    FontWeight? fontWeight,
    double? fontSize,
    double? height,
  }) {
    return TextStyle(
      fontFamily: 'RobotoMono',
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
    );
  }
}

extension NumExt on num {
  double get vp => toDouble();
  double get vh => toDouble();
  double get wmax => toDouble();
  double get fp => toDouble();
}
