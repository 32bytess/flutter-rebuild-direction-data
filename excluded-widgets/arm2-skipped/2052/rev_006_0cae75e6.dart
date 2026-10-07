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
    final s = ref.watch(settingsControllerProvider);
    final ctrl = ref.read(settingsControllerProvider.notifier);
    return PopupMenuButton<String>(
      icon: const Icon(Icons.more_vert_rounded),
      tooltip: 'Display',
      onSelected: (v) {
        /* spm: non-rebuild body erased */
      },
      itemBuilder: (_) => [
        for (final d in PostDisplay.values)
          PopupMenuItem(
            value: d.name,
            child: Row(
              children: [
                Icon(d.icon, size: 20),
                const SizedBox(width: 12),
                Text(d.label),
                if (d == s.postDisplay) ...[
                  const Spacer(),
                  const Icon(Icons.check_rounded, size: 18),
                ],
              ],
            ),
          ),
        const PopupMenuDivider(),
        PopupMenuItem(
          value: 'autoplay',
          child: Row(
            children: [
              const Icon(Icons.play_circle_outline_rounded, size: 20),
              const SizedBox(width: 12),
              const Text('Autoplay media'),
              const Spacer(),
              if (s.autoplayMedia) const Icon(Icons.check_rounded, size: 18),
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
