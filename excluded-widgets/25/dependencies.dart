// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

class _Rx<T> {
  T value;
  _Rx(this.value);
}

class Controller {
  final loading = _Rx<bool>(false);
}
