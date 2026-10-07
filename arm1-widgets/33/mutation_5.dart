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

class _ItemDot extends StatelessWidget {
  final double size;
  final bool active;

  const _ItemDot({required this.size, required this.active});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      margin: EdgeInsets.symmetric(horizontal: size),
      decoration: BoxDecoration(
        color: active ? Colors.black : Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.all(Radius.circular(size / 2)),
      ),
    );
  }
}

class _IndicatorRow extends StatelessWidget {
  final int count;
  final int currentMoreIndex;
  final double size;

  const _IndicatorRow({
    required this.count,
    required this.currentMoreIndex,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          count,
          (index) => _ItemDot(size: size, active: currentMoreIndex == index),
        ),
      ),
    );
  }
}

class _PagesView extends StatelessWidget {
  final PageController controller;
  final List<Widget> pages;
  final ValueChanged<int> onPageChanged;

  const _PagesView({
    required this.controller,
    required this.pages,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MyBehavior(),
      child: PageView(
        controller: controller,
        onPageChanged: onPageChanged,
        children: pages,
      ),
    );
  }
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
    return GestureDetector(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          _PagesView(
            controller: fixturePageC,
            pages: fixturePages,
            onPageChanged: (v) {
              setState(() => currentMoreIndex = v);
            },
          ),
          _IndicatorRow(
            count: fixturePages.length,
            currentMoreIndex: currentMoreIndex,
            size: size,
          ),
        ],
      ),
      onTap: () {},
    );
  }
}