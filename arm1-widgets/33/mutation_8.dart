// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  int currentMoreIndex = 0;

  double size = 5.0;

  Widget itemView(int index) {
    return Container(
      height: size,
      width: size,
      margin: EdgeInsets.symmetric(horizontal: size),
      decoration: BoxDecoration(
        color: currentMoreIndex == index
            ? Colors.black
            : Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.all(Radius.circular(size / 2)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return GestureDetector(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              ScrollConfiguration(
                behavior: MyBehavior(),
                child: PageView(
                  controller: fixturePageC,
                  onPageChanged: (v) {
                    setState(() => currentMoreIndex = v);
                  },
                  children: fixturePages,
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(fixturePages.length, itemView),
                ),
              ),
            ],
          ),
          onTap: () {},
        );
      },
    );
  }
}