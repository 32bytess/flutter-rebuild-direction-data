// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

class S {
  const S();

  static const S _instance = S();

  static S of(BuildContext context) => _instance;

  String get add_class_table_dialog_title => 'Add Class Table';
  String get cancel => 'Cancel';
  String get ok => 'OK';
}

class UmengCommonSdk {
  static void onEvent(String event, Map<String, dynamic> params) {}
}

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

// Frozen runtime fixtures (shared by base and all mutations).
TextEditingController makeTextController() => TextEditingController();
