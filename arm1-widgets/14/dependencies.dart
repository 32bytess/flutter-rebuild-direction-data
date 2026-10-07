// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'base.dart';

// Frozen state fixture — shared by base and all mutations. Returned fresh
// (factory) to avoid sharing a mutable map across runs.
Map<String, int> fixtureNode() => {'weekTime': 0, 'startTime': 0, 'endTime': 0};

class TransBgTextButton extends TextButton {
  TransBgTextButton({
    Key? key,
    required Color color,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget child,
  }) : super(
         key: key,
         onPressed: onPressed,
         onLongPress: onLongPress,
         onHover: onHover,
         onFocusChange: onFocusChange,
         style: TextButton.styleFrom(
           foregroundColor: color,
           backgroundColor: Colors.transparent,
         ),
         focusNode: focusNode,
         autofocus: autofocus,
         clipBehavior: clipBehavior,
         child: child,
       );
}

class S {
  S._();
  static final S _instance = S._();
  static S of(BuildContext context) => _instance;
  String get choose_class_time_dialog_title => 'Choose Class Time';
  String get to => 'to';
  String get ok => 'OK';
  String get cancel => 'Cancel';
  String class_single(String num) => 'Class $num';
}

class Config {
  static const int MAX_CLASSES = 12;
}

class Constant {
  static const List<String> WEEK_WITHOUT_BIAS = [
    'Every Week',
    'Odd Weeks',
    'Even Weeks',
  ];
}
