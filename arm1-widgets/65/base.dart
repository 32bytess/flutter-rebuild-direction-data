// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  GeneratedWidget();

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late Widget child;
  double? height;

  @override
  void initState() {
    super.initState();
    child = fixtureChild;
    height = null;
  }

  @override
  Widget build(BuildContext context) {
    return MagicPop(
      onValueChanged: (int value) {
        switch (value) {
          case 0:
            print('复制消息到剪贴板');
            break;
          case 3:
            print('删除消息');
            break;
        }
      },
      pressType: PressType.longPress,
      actions: ['转发', '收藏', '撤回', '删除'],
      child: Container(
        height: height,
        constraints: BoxConstraints(
          maxWidth: (Get.width - 66) - 100,
          maxHeight: 250,
        ),
        padding: EdgeInsets.all(5.0),
        width: (Get.width - 66) - 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        child: child,
      ),
    );
  }
}
class MagicPop extends StatefulWidget {
  MagicPop({
    required this.onValueChanged,
    required this.actions,
    required this.child,
    this.pressType = PressType.longPress,
    this.pageMaxChildCount = 5,
    this.backgroundColor = Colors.black,
    this.menuWidth = 250,
    this.menuHeight = 42,
  });

  final ValueChanged<int> onValueChanged;
  final List<String> actions;
  final Widget child;
  final PressType pressType;
  final int pageMaxChildCount;
  final Color backgroundColor;
  final double menuWidth;
  final double menuHeight;

  @override
  State<MagicPop> createState() => _WPopupMenuState();
}
class _WPopupMenuState extends State<MagicPop> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: widget.child,
      onTap: () {
        if (widget.pressType == PressType.singleClick) {
          onTap();
        }
      },
      onLongPress: () {
        if (widget.pressType == PressType.longPress) {
          onTap();
        }
      },
    );
  }

  void onTap() {
    Navigator.push(
      context,
      PopupMenuRoute(
        context,
        widget.actions,
        widget.pageMaxChildCount,
        widget.backgroundColor,
        widget.menuWidth,
        widget.menuHeight,
      ),
    ).then((index) {
      if (index != null && index is int) {
        widget.onValueChanged(index);
      }
    });
  }
}
