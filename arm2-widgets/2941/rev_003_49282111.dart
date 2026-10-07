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
  late final Share? editor;
  late final int? index;

  @override
  void initState() {
    super.initState();
    editor = fixtureEditor;
    index = fixtureIndex;
    cursor = fixtureCursor;
    _formKey = fixtureFormKey;
    _switchValue = fixtureSwitchValue;
  }

  late Share cursor;

  late GlobalKey<FormState> _formKey;

  late bool _switchValue;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SizedBox(
        height:
            MediaQuery.of(context).size.height -
            Scaffold.of(context).appBarMaxHeight!.toInt() -
            1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "The URL to upload to.",
                      labelText: "Upload URL *",
                    ),
                    validator: (value) {
                      /* spm: non-rebuild body erased */
                      throw UnimplementedError();
                    },
                    initialValue: cursor.uploaderUrl,
                    onSaved: (value) {
                      /* spm: non-rebuild body erased */
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "The name of the form data field.",
                      labelText: "Form Data Name *",
                    ),
                    validator: (value) {
                      /* spm: non-rebuild body erased */
                      throw UnimplementedError();
                    },
                    initialValue: cursor.formDataName,
                    onSaved: (value) {
                      /* spm: non-rebuild body erased */
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Switch(
                  value: _switchValue,
                  onChanged: (value) {
                    /* spm: non-rebuild body erased */
                  },
                ),
                const Text("Use file encoding"),
              ],
            ),
            const Spacer(),
            const Text(
              "Tip: If you need to supply arguments to an uploader, try the advanced view",
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        /* spm: non-rebuild body erased */
                      },
                      child: const Text('Save'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        /* spm: non-rebuild body erased */
                      },
                      child: const Text('Cancel'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
