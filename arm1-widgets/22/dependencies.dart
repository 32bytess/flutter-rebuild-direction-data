// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dart:math';
import 'base.dart';

class _Rx<T> {
  T value;
  _Rx(this.value);
}

class _Money {
  // ignore: non_constant_identifier_names
  final String USD;
  // ignore: non_constant_identifier_names
  _Money({required this.USD});
}

class _Operate {
  final String from;
  final String to;
  _Operate({required this.from, required this.to});
}

class _Option {
  final dynamic id;
  final String from;
  final String to;
  _Option({required this.id, required this.from, required this.to});
}

class _AvatarData {
  final bool bv;
  _AvatarData({required this.bv});
}

class _LoginUser {
  final _Rx<_AvatarData> avatar;
  _LoginUser({required this.avatar});
}

class _MediaPadding {
  final double top;
  final double bottom;
  _MediaPadding({required this.top, required this.bottom});
}

class Controller {
  final _Rx<_Money> money;
  final _Rx<List<_Option>> options;
  final _Rx<_Operate> operate;
  final String type;
  final _LoginUser loginUser;
  final _Rx<_MediaPadding> mediaPadding;
  final _Rx<double> mediaTopBar;

  Controller()
    : money = _Rx<_Money>(_Money(USD: '0.00')),
      options = _Rx<List<_Option>>([
        _Option(id: 1, from: 'Me', to: 'Bank'),
        _Option(id: 2, from: 'Bank', to: 'Me'),
      ]),
      operate = _Rx<_Operate>(_Operate(from: 'Me', to: 'Bank')),
      type = 'Top up',
      loginUser = _LoginUser(avatar: _Rx<_AvatarData>(_AvatarData(bv: true))),
      mediaPadding = _Rx<_MediaPadding>(_MediaPadding(top: 0, bottom: 0)),
      mediaTopBar = _Rx<double>(0);

  void addition(String text) {}
  void delete(dynamic _) {}
  void clear(dynamic _) {}
  void find(dynamic id) {}
  void pay() {}
}

class GetNavigate {
  static void back() {}
}

extension NumExt on num {
  double get vp => toDouble();
  double get fp => toDouble();
  double get wmax => toDouble();
  double get vh => toDouble();
}

extension StringExt on String {
  String get tr => this;
}
