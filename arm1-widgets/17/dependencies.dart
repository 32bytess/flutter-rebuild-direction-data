// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dart:math';
import 'base.dart';

extension NumExt on num {
  double get vp => toDouble();
  double get fp => toDouble();
  double get wmax => toDouble();
}

extension StringExt on String {
  String get tr => this;
}

class _RxValue<T> {
  T value;
  _RxValue(this.value);
}

class Controller {
  final ScrollController scrollController = ScrollController();
  final _RxValue<EdgeInsets> mediaPadding = _RxValue<EdgeInsets>(
    EdgeInsets.zero,
  );
  final _RxValue<double> mediaTopBar = _RxValue<double>(40.0);
  final _RxValue<bool> isShadow = _RxValue<bool>(false);

  void logout() {}
}

class WebviewMeta {
  final String title;
  final String url;
  WebviewMeta({required this.title, required this.url});
}

class GetRoutes {
  static const String settings = '/settings';
  static const String profile = '/profile';
  static const String notification = '/notification';
  static const String card = '/card';
  static const String langs = '/langs';
  static const String logger = '/logger';
  static const String webview = '/webview';

  static String join(List<String> parts) => parts.join('/');
}

class GetNavigate {
  static void toNamed(String route, {Object? arguments}) {}
  static void back() {}
}
