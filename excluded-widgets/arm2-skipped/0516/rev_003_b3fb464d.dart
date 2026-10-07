// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:ui';
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
    var l10n = context.l10n;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            child: Text(
              l10n.unlockAllpass,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            padding: AllpassEdgeInsets.smallTBPadding,
          ),
          Padding(padding: AllpassEdgeInsets.smallTBPadding),
          TextButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.transparent),
            ),
            autofocus: true,
            onPressed: () {
              /* spm: non-rebuild body erased */
            },
            child: Column(
              children: <Widget>[
                Icon(Icons.fingerprint, size: AllpassScreenUtil.setWidth(150)),
                Padding(
                  padding: EdgeInsets.only(
                    top: AllpassScreenUtil.setHeight(40),
                  ),
                ),
                Text(l10n.clickToUseBiometrics),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: AllpassScreenUtil.setHeight(200)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                child: Text(l10n.usePassword),
                onPressed: () async {
                  /* spm: non-rebuild body erased */
                },
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: AllpassScreenUtil.setHeight(80)),
          ),
        ],
      ),
    );
  }
}













// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
