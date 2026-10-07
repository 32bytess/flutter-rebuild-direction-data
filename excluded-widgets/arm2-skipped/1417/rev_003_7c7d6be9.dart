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
  late final Project project;

  @override
  void initState() {
    super.initState();
    project = fixtureProject;
  }

  Widget buildSubProjectSelector() {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ...?project.subprojects?.map(
            (elem) => InkWell(
              onTap: () {
                /* spm: non-rebuild body erased */
              },
              child: Container(
                alignment: Alignment.center,
                height: 20,
                width: 100,
                child: Text(
                  elem.title,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [buildSubProjectSelector()]),
      appBar: AppBar(title: Text(project.title)),
    );
  }
}
