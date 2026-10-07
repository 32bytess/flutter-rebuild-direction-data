// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'base.dart';

class S {
  const S();

  static const S _instance = S();

  static S of(BuildContext context) => _instance;

  String get cancel => 'Cancel';
  String get ok => 'OK';
}

class UmengCommonSdk {
  static void onEvent(String event, Map<String, dynamic> params) {}
}

class HexColor extends Color {
  HexColor(String hex) : super(_parse(hex));

  static int _parse(String hex) {
    var h = hex.replaceFirst('#', '');
    if (h.length == 6) h = 'FF$h';
    return int.parse(h, radix: 16);
  }
}

class MainStateModel {
  bool material3ColorForLight = true;
  bool material3ColorForDark = true;
  void changeCustomTheme(String hex) {}
  void changeTheme(int index) {}
}

class ScopedModel {
  static T of<T>(BuildContext context, {bool rebuildOnChange = false}) {
    if (T == MainStateModel) return MainStateModel() as T;
    throw UnimplementedError('No stub registered for type $T');
  }
}

final List<ThemeData> themeDataListValue = [ThemeData.light()];
late List<ThemeData> themeDataList;

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}

const String defaultColor = '#0095F9';

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
