// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dart:math';
import 'base.dart';

class _Rx<T> {
  T value;
  _Rx(this.value);
}

class Controller {
  final mediaPadding = _Rx<EdgeInsets>(EdgeInsets.zero);
  final mediaTopBar = _Rx<double>(0.0);
  final loading = _Rx<bool>(false);
  final string = _Rx<String>('Sample log content');
}
