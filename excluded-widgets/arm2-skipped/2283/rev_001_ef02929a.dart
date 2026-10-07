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
  late AppProvider appProvider;
  late Widget child;

  @override
  void initState() {
    super.initState();
    appProvider = fixtureAppProvider;
    child = fixtureChild;
  }

  @override
  Widget build(BuildContext context) {
    if (appProvider.appInfo != null) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: AppConstants.smallPadding),
          Text(
            '服务器: ${appProvider.serverUrl}',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Text(
            '主机: ${appProvider.appInfo!.hostname}',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      );
    }
    return const SizedBox.shrink();
  }
}










// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
