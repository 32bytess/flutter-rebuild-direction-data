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
  late bool showAddForm;

  @override
  void initState() {
    super.initState();
    showAddForm = fixtureShowAddForm;
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(showAddForm ? Icons.close : Icons.add, size: 24),
      onPressed: () {
        /* spm: non-rebuild body erased */
      },
    );
  }
}
