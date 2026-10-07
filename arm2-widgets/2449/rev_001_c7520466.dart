import 'dart:async';
import 'package:flutter/material.dart';

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
      style: OutlinedButton.styleFrom(
        elevation: 0.0,
        side: BorderSide(color: theme.colorScheme.primary, width: 2.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
      ),
      child: Text(
        'DELETE',
        style: theme.textTheme.bodyLarge?.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: theme.colorScheme.inverseSurface,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AlertDialog(
      title: Text(
        'Are you sure?',
        style: theme.textTheme.bodyLarge?.copyWith(
          color: theme.colorScheme.inverseSurface,
          fontSize: 30,
        ),
      ),
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
