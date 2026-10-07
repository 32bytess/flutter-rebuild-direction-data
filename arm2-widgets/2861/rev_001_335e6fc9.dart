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
  @override
  void initState() {
    super.initState();
    _appNameController = fixtureAppNameController;
    _projectNameController = fixtureProjectNameController;
    _packageNameController = fixturePackageNameController;
    _appLogo = fixtureAppLogo;
  }

  late TextEditingController _appNameController;

  late TextEditingController _projectNameController;

  late TextEditingController _packageNameController;

  late String? _appLogo;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Create New Project"),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _appNameController,
              decoration: InputDecoration(labelText: "Enter App Name"),
            ),
            TextField(
              controller: _projectNameController,
              decoration: InputDecoration(labelText: "Enter Project Name"),
            ),
            TextField(
              controller: _packageNameController,
              decoration: InputDecoration(labelText: "Enter App Package Name"),
            ),
            TextButton(
              onPressed: () async {
                /* spm: non-rebuild body erased */
              },
              child: Text("Select App Logo"),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            /* spm: non-rebuild body erased */
          },
          child: Text("Cancel"),
        ),
        TextButton(
          onPressed: () {
            /* spm: non-rebuild body erased */
          },
          child: Text("Create"),
        ),
      ],
    );
  }
}
