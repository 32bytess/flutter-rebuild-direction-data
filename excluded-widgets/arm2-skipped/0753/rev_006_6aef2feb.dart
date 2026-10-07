// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'dart:async';
import 'package:flutter/material.dart';
part 'dependencies.dart';


class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget();

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
    _controller = fixtureController;
  }

  late TextEditingController _controller;

  Future<void> _speak() async {
    /* spm: non-rebuild body erased */
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.test_tts_section_title,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _controller,
          maxLines: 6,
          minLines: 4,
          decoration: InputDecoration(
            hintText: l10n.test_tts_hint,
            filled: true,
            fillColor: isDark
                ? const Color(0xFF1A1A1A)
                : const Color(0xFFF5F5F5),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: ShadButton(
                onPressed: _speak,
                leading: const Icon(Icons.volume_up),
                child: Text(l10n.test_speak_button),
              ),
            ),
            const SizedBox(width: 8),
            ShadButton.outline(
              onPressed: () {
                /* spm: non-rebuild body erased */
              },
              leading: const Icon(Icons.stop),
              child: Text(l10n.stop),
            ),
          ],
        ),
      ],
    );
  }
}












// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
