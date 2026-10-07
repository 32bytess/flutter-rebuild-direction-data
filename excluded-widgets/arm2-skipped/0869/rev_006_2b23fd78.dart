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
  late WidgetRef ref;

  @override
  void initState() {
    super.initState();
    t = tValue;
    ref = fixtureRef;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(t.settings.generalSettings.generalSettings)),
      body: ListView(
        children: [
          SectionLabel(label: t.settings.generalSettings.bookmarks),
          SwitchListTile(
            title: Text(t.settings.generalSettings.showFavicon),
            subtitle: Text(t.settings.generalSettings.showFaviconDescription),
            value: ref.watch(appStatusProvider).showFavicon,
            onChanged: ref.read(appStatusProvider.notifier).setShowFavicon,
          ),
          SwitchListTile(
            title: Text(t.settings.generalSettings.useInAppBrowser),
            subtitle: Text(
              t.settings.generalSettings.useInAppBrowserDescription,
            ),
            value: ref.watch(appStatusProvider).useInAppBrowser,
            onChanged: ref.read(appStatusProvider.notifier).setUseInAppBrowser,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Divider(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton.icon(
                onPressed: () {
                  /* spm: non-rebuild body erased */
                },
                icon: const Icon(Icons.clear_rounded),
                label: Text(t.settings.generalSettings.disconnectFromServer),
                style: const ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  backgroundColor: MaterialStatePropertyAll(Colors.red),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SectionLabel extends StatelessWidget {
  final String label;
  final EdgeInsets? padding;

  const SectionLabel({Key? key, required this.label, this.padding})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: padding ?? const EdgeInsets.all(16),
          child: Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}























// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
