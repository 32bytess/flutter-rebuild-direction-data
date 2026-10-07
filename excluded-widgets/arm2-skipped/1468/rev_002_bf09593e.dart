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
  @override
  void initState() {
    super.initState();
    _logs = fixtureLogs;
  }

  late List<String> _logs;

  Future<void> _refreshLogs() async {
    /* spm: non-rebuild body erased */
  }

  Future<void> _clearLogs() async {
    /* spm: non-rebuild body erased */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.statusTitle),
        actions: [
          IconButton(icon: const Icon(Icons.refresh), onPressed: _refreshLogs),
          IconButton(icon: const Icon(Icons.delete), onPressed: _clearLogs),
        ],
      ),
      body: ListView.builder(
        reverse: true,
        itemCount: _logs.length,
        itemBuilder: (_, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            _logs[index],
            style: TextStyle(fontSize: 10, fontFamily: 'monospace'),
          ),
        ),
      ),
    );
  }
}
