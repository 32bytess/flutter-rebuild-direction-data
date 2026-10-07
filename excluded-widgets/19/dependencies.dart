// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:math';
import 'base.dart';

extension NumLayoutExt on num {
  double get vp => toDouble();
  double get fp => toDouble();
  double get vw => toDouble();
  double get vh => toDouble();
  double get wmax => toDouble();
}

extension StringTrExt on String {
  String get tr => this;
}

class Rx<T> {
  T value;
  Rx(this.value);
}

class _MediaQueryController {
  final Rx<Orientation> orientation = Rx<Orientation>(Orientation.portrait);
}

class Controller {
  late _MediaQueryController mediaQueryController;
  late FocusNode nameFocusNode;
  late FocusNode emailFocusNode;
  late FocusNode passwordFocusNode1;
  late FocusNode passwordFocusNode2;
  late TextEditingController passwordController1;
  late TextEditingController passwordController2;
  late TextEditingController emailController;
  late TextEditingController nameController;
  late Rx<bool> passwordError1;
  late Rx<bool> passwordError2;
  late Rx<bool> emailError;
  late Rx<bool> nameError;
  late Rx<EdgeInsets> mediaPadding;
  late Rx<bool> loading;

  void initialize() {
    mediaQueryController = _MediaQueryController();
    nameFocusNode = FocusNode();
    emailFocusNode = FocusNode();
    passwordFocusNode1 = FocusNode();
    passwordFocusNode2 = FocusNode();
    passwordController1 = TextEditingController();
    passwordController2 = TextEditingController();
    emailController = TextEditingController();
    nameController = TextEditingController();
    passwordError1 = Rx<bool>(false);
    passwordError2 = Rx<bool>(false);
    emailError = Rx<bool>(false);
    nameError = Rx<bool>(false);
    mediaPadding = Rx<EdgeInsets>(EdgeInsets.zero);
    loading = Rx<bool>(false);
  }

  void loginTimeout(Object? action, Duration duration) {}
  Object? signInWithGoogle() => null;
  Object? signInWithGithub() => null;
  Object? signUpWithAccount() => null;
}

class GetNavigate {
  static void back() {}
}
