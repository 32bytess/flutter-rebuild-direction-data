// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

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
    passwordController = fixturePasswordController;
  }

  late TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    var l10n = context.l10n;
    var children = <Widget>[
      ListTile(
        title: Text(l10n.modifyMainPassword),
        leading: Icon(Icons.password, color: AllpassColorUI.allColor[0]),
        onTap: () {
          /* spm: non-rebuild body erased */
        },
      ),
    ];
    if (Config.enabledBiometrics) {
      children.add(
        ListTile(
          title: Text(l10n.inputMainPasswordTiming),
          trailing: Text(
            Config.timingInMainPassword.l10n(context),
            style: AllpassTextUI.settingTrailing,
          ),
          leading: Icon(Icons.timer, color: AllpassColorUI.allColor[1]),
          onTap: () {
            /* spm: non-rebuild body erased */
          },
        ),
      );
    }
    children.addAll([
      ListTile(
        title: Text(l10n.secretKeyUpdate),
        leading: Icon(Icons.security, color: AllpassColorUI.allColor[4]),
        onTap: () {
          /* spm: non-rebuild body erased */
        },
      ),
      ListTile(
        title: Text(l10n.clearAllData),
        leading: Icon(Icons.clear_all, color: Colors.red),
        onTap: () {
          /* spm: non-rebuild body erased */
        },
      ),
      ListTile(
        title: Text(l10n.lockAllpass),
        leading: Icon(Icons.lock, color: AllpassColorUI.allColor[7]),
        onTap: () {
          /* spm: non-rebuild body erased */
        },
      ),
    ]);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.mainPasswordManager,
          style: AllpassTextUI.titleBarStyle,
        ),
        centerTitle: true,
      ),
      backgroundColor: context.watch<ThemeProvider>().specialBackgroundColor,
      body: ListView(
        children: <Widget>[
          Padding(padding: AllpassEdgeInsets.smallTopInsets),
          Card(
            margin: AllpassEdgeInsets.settingCardInset,
            elevation: 0,
            child: Column(children: children),
          ),
        ],
      ),
    );
  }
}





















// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
