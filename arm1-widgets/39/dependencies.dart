// ignore_for_file: unused_import, unused_element
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'base.dart';

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
  static S of(BuildContext context) => S();
  String get del_class_table_dialog_title => 'Delete class';
  String get del_class_table_dialog_content => 'Are you sure?';
  String get cancel => 'Cancel';
  String get ok => 'OK';
}

class UmengCommonSdk {
  static void onEvent(String event, Map<String, String> params) {}
}
