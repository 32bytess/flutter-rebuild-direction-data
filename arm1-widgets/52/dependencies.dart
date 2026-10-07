// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

class PopRoute extends PopupRoute {
  final Duration _duration = Duration(milliseconds: 300);
  final Widget child;

  PopRoute({required this.child});

  @override
  Color? get barrierColor => null;

  @override
  bool get barrierDismissible => true;

  @override
  String? get barrierLabel => null;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return child;
  }

  @override
  Duration get transitionDuration => _duration;
}
