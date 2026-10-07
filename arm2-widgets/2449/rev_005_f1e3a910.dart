// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'dart:async';
import 'package:flutter/material.dart';
part 'dependencies.dart';


class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  GeneratedWidget.fixture({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  Future<void> onDeleteButtonPressed() async {
    /* spm: non-rebuild body erased */
  }

  Widget _deleteButton(ThemeData theme) {
    return OutlinedButton(
      onPressed: onDeleteButtonPressed,
      style: theme.destructiveButtonStyle,
      child: const Text('DELETE'),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AlertDialog(
      title: const Text('Are you sure?'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'This action cannot be undone!',
            style: theme.textTheme.bodyLarge?.copyWith(
              color: theme.colorScheme.tertiary,
            ),
          ),
          const SizedBox(height: 20),
          Center(child: _deleteButton(theme)),
        ],
      ),
    );
  }
}



// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
