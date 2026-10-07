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
  late final List<String> existingTags;

  @override
  void initState() {
    super.initState();
    existingTags = fixtureExistingTags;
    _errorText = fixtureErrorText;
    _controller = fixtureController;
  }

  late TextEditingController _controller;

  late String? _errorText;

  void _validate(String value) {
    /* spm: non-rebuild body erased */
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AlertDialog(
      title: Text(
        'Add a tag',
        style: theme.textTheme.bodyLarge?.copyWith(
          color: theme.colorScheme.inverseSurface,
          fontSize: 30,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            controller: _controller,
            onChanged: _validate,
            decoration: InputDecoration(
              errorText: _errorText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(width: 2.0),
              ),
              focusColor: theme.colorScheme.primary,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: theme.colorScheme.primary),
                borderRadius: BorderRadius.circular(10),
              ),
              labelStyle: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.secondary,
              ),
              prefixIcon: Icon(Icons.label, color: theme.colorScheme.secondary),
              labelText: 'Tag',
            ),
            style: theme.textTheme.bodyLarge?.copyWith(
              color: theme.colorScheme.tertiary,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          if (_errorText != 'Tag already exists')
            Center(
              child: OutlinedButton(
                onPressed: () {
                  /* spm: non-rebuild body erased */
                },
                style: OutlinedButton.styleFrom(
                  elevation: 0.0,
                  side: BorderSide(
                    color: theme.colorScheme.primary,
                    width: 2.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                ),
                child: Text(
                  'ADD',
                  style: theme.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: theme.colorScheme.tertiary,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
