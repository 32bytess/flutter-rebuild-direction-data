// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

class _Rx<T> {
  T value;
  _Rx(this.value);
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

class Controller {
  final _Rx<List<_Option>> options;
  final _Rx<_Operate> operate;
  final String type;
  final _LoginUser loginUser;

  Controller()
    : options = _Rx<List<_Option>>([
        _Option(id: 1, from: 'Me', to: 'Bank'),
        _Option(id: 2, from: 'Bank', to: 'Me'),
      ]),
      operate = _Rx<_Operate>(_Operate(from: 'Me', to: 'Bank')),
      type = 'Top up',
      loginUser = _LoginUser(avatar: _Rx<_AvatarData>(_AvatarData(bv: true)));

  void find(dynamic id) {}
}

extension NumExt on num {
  double get vp => toDouble();
  double get fp => toDouble();
}

extension StringExt on String {
  String get tr => this;
}
