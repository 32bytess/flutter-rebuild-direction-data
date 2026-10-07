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
    dbRef = fixtureDbRef;
    allproject = fixtureAllproject;
  }

  late List<Map<String, dynamic>> allproject;

  late DbHandler? dbRef;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Projects")),

      /// Display list of projects or a message if empty
      body: allproject.isNotEmpty
          ? ListView.builder(
              itemCount: allproject.length,
              itemBuilder: (_, index) {
                return ListTile(
                  leading: Text(
                    allproject[index][DbHandler.COLUMN_PROJECT_ID].toString(),
                  ),
                  title: Text(allproject[index][DbHandler.COLUMN_APP_NAME]),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(allproject[index][DbHandler.COLUMN_PROJECT_NAME]),
                      Text(
                        allproject[index][DbHandler.COLUMN_APP_PACKAGE_NAME],
                      ),
                    ],
                  ),
                );
              },
            )
          : const Center(child: Text("No Projects Yet")),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          /* spm: non-rebuild body erased */
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}






// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
