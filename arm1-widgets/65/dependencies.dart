// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

enum PressType { longPress, singleClick }

class Get {
  static double get width => 375.0;
}

class PopupMenuRoute extends PopupRoute<dynamic> {
  PopupMenuRoute(
    this.context,
    this.actions,
    this.pageMaxChildCount,
    this.backgroundColor,
    this.menuWidth,
    this.menuHeight,
  );

  final BuildContext context;
  final List<String> actions;
  final int pageMaxChildCount;
  final Color backgroundColor;
  final double menuWidth;
  final double menuHeight;

  @override
  Color? get barrierColor => null;

  @override
  bool get barrierDismissible => true;

  @override
  String? get barrierLabel => null;

  @override
  Duration get transitionDuration => Duration.zero;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return Center(
      child: Material(
        color: backgroundColor,
        child: SizedBox(
          width: menuWidth,
          height: menuHeight,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < actions.length; i++)
                TextButton(
                  onPressed: () => Navigator.pop(context, i),
                  child: Text(actions[i]),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

// Frozen runtime fixtures (shared by base and all mutations).
const Widget fixtureChild = Text('消息内容');
