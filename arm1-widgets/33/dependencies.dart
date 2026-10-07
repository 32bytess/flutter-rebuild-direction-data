// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui';
import 'base.dart';

class MyBehavior extends ScrollBehavior {}

final PageController fixturePageC = PageController();

final List<Widget> fixturePages = List<Widget>.generate(
  2,
  (int index) => Center(child: Text('page $index')),
);
