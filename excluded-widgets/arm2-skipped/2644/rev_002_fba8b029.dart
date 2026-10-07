// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'package:flutter/material.dart';
part 'dependencies.dart';


class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({Key? key}) : super(key: key);

  GeneratedWidget.fixture({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  @override
  void initState() {
    super.initState();
    header = headerValue;
    _controller = fixtureController;
    _formKey = fixtureFormKey;
    indicator = fixtureIndicator;
  }

  late BetterPlayerController _controller;

  late GlobalKey<FormState> _formKey;

  late SpinKitSquareCircle indicator;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        /* spm: non-rebuild body erased */
        throw UnimplementedError();
      },
      child: Scaffold(
        key: _formKey,
        backgroundColor: Colors.black,
        body: BetterPlayer(controller: _controller),
      ),
    );
  }
}















// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
