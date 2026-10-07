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
      title: const Text('Add a tag'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            controller: _controller,
            onChanged: _validate,
            decoration: InputDecoration(
              errorText: _errorText,
              prefixIcon: const Icon(Icons.label),
              labelText: 'Tag',
            ),
            style: theme.inputTextStyle,
          ),
          const SizedBox(height: 20),
          if (_errorText != 'Tag already exists')
            Center(
              child: OutlinedButton(
                onPressed: () {
                  /* spm: non-rebuild body erased */
                },
                child: const Text('ADD'),
              ),
            ),
        ],
      ),
    );
  }
}






// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
