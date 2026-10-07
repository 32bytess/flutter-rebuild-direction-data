// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dart:math';
import 'base.dart';

class _Rx<T> {
  T value;
  _Rx(this.value);
}

class _AvatarData {
  final bool bv;
  _AvatarData({required this.bv});
}

class _LoginUser {
  final _Rx<_AvatarData> avatar;
  final _Rx<String> email;
  final _Rx<DateTime> createDate;
  final _Rx<String> activate;
  _LoginUser({
    required this.avatar,
    required this.email,
    required this.createDate,
    required this.activate,
  });
}

class Controller {
  final TextEditingController nameController;
  final FocusNode nameFocusNode;
  final _LoginUser loginUser;
  final _Rx<bool> readonly;
  final _Rx<_AvatarData> avatar;
  final _Rx<EdgeInsets> mediaPadding;
  final _Rx<double> mediaTopBar;

  Controller()
    : nameController = TextEditingController(text: 'User'),
      nameFocusNode = FocusNode(),
      loginUser = _LoginUser(
        avatar: _Rx<_AvatarData>(_AvatarData(bv: true)),
        email: _Rx<String>('user@example.com'),
        createDate: _Rx<DateTime>(DateTime(2024, 1, 1)),
        activate: _Rx<String>('Y'),
      ),
      readonly = _Rx<bool>(false),
      avatar = _Rx<_AvatarData>(_AvatarData(bv: true)),
      mediaPadding = _Rx<EdgeInsets>(
        const EdgeInsets.only(top: 24, bottom: 24),
      ),
      mediaTopBar = _Rx<double>(44);

  void pickAvatar() {}
  void changeName() {}
  void updateUser() {}
}

class GetNavigate {
  static void back() {}
}

extension NumExt on num {
  double get vp => toDouble();
  double get fp => toDouble();
  double get vh => toDouble();
  double get wmax => toDouble();
}

extension StringExt on String {
  String get tr => this;
}

extension DateExt on DateTime {
  String yMMMd() => '$year-$month-$day';
}
