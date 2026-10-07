// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'base.dart';

const Color appBarColor = Color(0xFFFFFFFF);

class GlobalModel {
  String currentLanguage = 'English';
  List<String> currentLanguageCode = ['en', 'US'];
  Locale currentLocale = const Locale('en', 'US');
  String appName = 'Wechat-flutter';

  void refresh() {}
}

class Provider {
  static final GlobalModel _model = GlobalModel();

  static T of<T>(BuildContext context) {
    return _model as T;
  }
}

class SharedUtil {
  static final SharedUtil instance = SharedUtil._();
  SharedUtil._();

  void saveStringList(String key, List<String> value) {}
  void saveString(String key, String value) {}
}

class Keys {
  static const String currentLanguageCode = 'currentLanguageCode';
  static const String currentLanguage = 'currentLanguage';
  static const String appName = 'appName';
}

class _SDelegate {
  String get multiLanguage => 'Multi Language';
}

class S {
  static _SDelegate of(BuildContext context) => _SDelegate();
}

class LanguageData {
  String language;
  String languageCode;
  String countryCode;
  String appName;

  LanguageData(
    this.language,
    this.languageCode,
    this.countryCode,
    this.appName,
  );
}
