// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
part 'dependencies.dart';


class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  GeneratedWidget.fixture({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  @override
  void initState() {
    super.initState();
    _localAuthService = fixtureLocalAuthService;
  }

  late AuthService _localAuthService;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

abstract class AbstractLoginState extends State<AbstractLoginPage> {
  @override
  void initState() {
    super.initState();

    var themeProvider = context.read<ThemeProvider>();
    WidgetsBinding.instance.addPostFrameCallback((callback) {
      /* spm: non-rebuild body erased */
    });

    PlatformDispatcher.instance.onPlatformBrightnessChanged = () {
      themeProvider.setExtraColor(
        PlatformDispatcher.instance.platformBrightness,
      );
    };
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      child: buildRoot(context),
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        /* spm: non-rebuild body erased */
      },
    );
  }

  void login() async {
    var valid = await onPreLogin();
    if (!valid) {
      return;
    }

    if (widget.arguments.fromAutoLock) {
      AutoLockHandler.unlock();
      Navigator.pop(context, true);
    } else {
      AllpassNavigator.goHomePage(context);
    }
  }

  Widget buildRoot(BuildContext context);

  /// return true 表示校验成功
  Future<bool> onPreLogin();
}

abstract class AbstractLoginPage extends StatefulWidget {
  final LoginArguments arguments;

  const AbstractLoginPage({super.key, required this.arguments});
}



















// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
