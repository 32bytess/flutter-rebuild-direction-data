// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'package:flutter/material.dart';
part 'dependencies.dart';


class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  late final double initialFontSize;
  late final  Function(double) onFontSizeChanged;

  @override
  void initState() {
    super.initState();
    initialFontSize = fixtureInitialFontSize;
    onFontSizeChanged = fixtureOnFontSizeChanged;
    _currentFontSize = fixtureCurrentFontSize;
  }

  late double _currentFontSize;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: .only(bottom: MediaQuery.of(context).viewInsets.bottom),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: const .vertical(top: .circular(20)),
      ),
      child: Column(
        mainAxisSize: .min,
        children: [
          Container(
            margin: const .only(top: 12, bottom: 8),
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.4),
              borderRadius: .circular(2),
            ),
          ),

          Padding(
            padding: const .symmetric(horizontal: 24, vertical: 16),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(
                  'Font Size',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: .bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    /* spm: non-rebuild body erased */
                  },
                ),
              ],
            ),
          ),

          Padding(
            padding: const .symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(
                  'Size: ${_currentFontSize.toInt()}px',
                  style: theme.textTheme.bodyLarge?.copyWith(fontWeight: .w500),
                ),
                TextButton.icon(
                  onPressed: () {
                    /* spm: non-rebuild body erased */
                  },
                  icon: const Icon(Icons.refresh, size: 18),
                  label: const Text('Reset'),
                ),
              ],
            ),
          ),

          Padding(
            padding: const .symmetric(horizontal: 24),
            child: Row(
              children: [
                const Icon(Icons.text_fields, size: 16),
                Expanded(
                  child: Slider(
                    value: _currentFontSize,
                    min: 14,
                    max: 28,
                    divisions: 14,
                    label: '${_currentFontSize.toInt()}px',
                    onChanged: (value) {
                      /* spm: non-rebuild body erased */
                    },
                  ),
                ),
                const Icon(Icons.text_fields, size: 28),
              ],
            ),
          ),

          const SizedBox(height: 32),
        ],
      ),
    );
  }
}





// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
