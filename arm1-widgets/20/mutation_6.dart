// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late bool isShadow;
  late double top;

  @override
  void initState() {
    super.initState();
    isShadow = fixtureIsShadow;
    top = fixtureTop;
  }

  @override
  Widget build(BuildContext context) {
    List<BoxShadow>? boxShadow;
    if (isShadow) {
      boxShadow = [
        BoxShadow(
          color: const Color(0x0c000000),
          offset: const Offset(0, 1.2),
          spreadRadius: 0,
          blurRadius: 10,
        ),
      ];
    }
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: BoxDecoration(color: Colors.white, boxShadow: boxShadow),
      padding: EdgeInsets.only(top: top),
      child: Container(
        alignment: Alignment.center,
        constraints: const BoxConstraints.expand(),
        padding: EdgeInsets.only(left: 32, right: 32),
        child: Text(
          'Language',
          style: TextStyle(
            color: const Color(0xff130138),
            fontWeight: FontWeight.bold,
            fontSize: 20,
            letterSpacing: 3,
            height: 1,
          ),
        ),
      ),
    );
  }
}