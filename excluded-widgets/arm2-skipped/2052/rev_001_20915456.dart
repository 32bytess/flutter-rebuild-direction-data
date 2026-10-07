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
    ref = fixtureRef;
  }

  @override
  Widget build(BuildContext context) {
    final current = ref.watch(settingsControllerProvider).postDisplay;
    return PopupMenuButton<PostDisplay>(
      icon: const Icon(Icons.more_vert_rounded),
      tooltip: 'Display',
      onSelected: (d) {
        /* spm: non-rebuild body erased */
      },
      itemBuilder: (_) => [
        for (final d in PostDisplay.values)
          PopupMenuItem(
            value: d,
            child: Row(
              children: [
                Icon(d.icon, size: 20),
                const SizedBox(width: 12),
                Text(d.label),
                if (d == current) ...[
                  const Spacer(),
                  const Icon(Icons.check_rounded, size: 18),
                ],
              ],
            ),
          ),
      ],
    );
  }
}

/// How posts are laid out in feeds.
enum PostDisplay { large, card, mini }













// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
