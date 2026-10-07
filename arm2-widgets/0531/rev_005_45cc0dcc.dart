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
  Widget build(BuildContext context) {
    var l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.autofill, style: AllpassTextUI.titleBarStyle),
        centerTitle: true,
      ),
      backgroundColor: context.watch<ThemeProvider>().specialBackgroundColor,
      body: ListView(
        children: <Widget>[
          Padding(padding: AllpassEdgeInsets.smallTopInsets),
          Card(
            margin: AllpassEdgeInsets.settingCardInset,
            elevation: 0,
            child: InkWell(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Align(
                  child: Consumer<AutofillProvider>(
                    builder: (_, provider, __) => Text(
                      provider.autofillEnable
                          ? l10n.autofillEnableAllpass
                          : l10n.autofillDisableAllpass,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: provider.autofillEnable ? Colors.grey : null,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              onTap: context.read<AutofillProvider>().gotoAutofillSetting,
            ),
          ),
          Padding(
            padding: AllpassEdgeInsets.settingCardInset,
            child: Text(
              l10n.autofillHelp,
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 12, height: 1.5, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}

















// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
