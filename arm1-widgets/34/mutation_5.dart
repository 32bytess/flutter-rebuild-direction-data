// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  GeneratedWidget({Key? key}) : super(key: key);

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(appBar: new ComMomBar(title: '等待编写'));
  }
}

class ComMomBar extends StatelessWidget implements PreferredSizeWidget {
  const ComMomBar({
    Key? key,
    this.title = '',
    this.showShadow = false,
    this.rightDMActions,
    this.backgroundColor = appBarColor,
    this.mainColor = Colors.black,
    this.titleW,
    this.bottom,
    this.leadingImg = '',
    this.leadingW,
  }) : super(key: key);

  final String title;
  final bool showShadow;
  final List<Widget>? rightDMActions;
  final Color backgroundColor;
  final Color mainColor;
  final Widget? titleW;
  final Widget? leadingW;
  final PreferredSizeWidget? bottom;
  final String leadingImg;

  @override
  Size get preferredSize => const Size.fromHeight(50.0);

  Widget? leading(BuildContext context) {
    final bool isShow = Navigator.canPop(context);
    if (isShow) {
      return InkWell(
        child: Container(
          width: 15,
          height: 28,
          child: leadingImg.isNotEmpty
              ? Container(color: Colors.grey.shade300, width: 80, height: 80)
              : Icon(CupertinoIcons.back, color: mainColor),
        ),
        onTap: () {
          if (Navigator.canPop(context)) {
            FocusScope.of(context).requestFocus(FocusNode());
            Navigator.pop(context);
          }
        },
      );
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return showShadow
        ? _ShadowAppBar(
            title: title,
            mainColor: mainColor,
            titleW: titleW,
            leadingW: leadingW,
            leading: leading(context),
            rightDMActions: rightDMActions,
            bottom: bottom,
          )
        : _PlainAppBar(
            title: title,
            mainColor: mainColor,
            backgroundColor: backgroundColor,
            titleW: titleW,
            leadingW: leadingW,
            leading: leading(context),
            rightDMActions: rightDMActions,
            bottom: bottom,
          );
  }
}

class _ShadowAppBar extends StatelessWidget {
  const _ShadowAppBar({
    Key? key,
    required this.title,
    required this.mainColor,
    this.titleW,
    this.leadingW,
    this.leading,
    this.rightDMActions,
    this.bottom,
  }) : super(key: key);

  final String title;
  final Color mainColor;
  final Widget? titleW;
  final Widget? leadingW;
  final Widget? leading;
  final List<Widget>? rightDMActions;
  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),
      child: AppBar(
        title:
            titleW ??
            Text(
              title,
              style: TextStyle(
                color: mainColor,
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
              ),
            ),
        backgroundColor: mainColor,
        elevation: 0.0,
        leading: leadingW ?? leading,
        centerTitle: true,
        actions: rightDMActions ?? [Center()],
        bottom: bottom,
      ),
    );
  }
}

class _PlainAppBar extends StatelessWidget {
  const _PlainAppBar({
    Key? key,
    required this.title,
    required this.mainColor,
    required this.backgroundColor,
    this.titleW,
    this.leadingW,
    this.leading,
    this.rightDMActions,
    this.bottom,
  }) : super(key: key);

  final String title;
  final Color mainColor;
  final Color backgroundColor;
  final Widget? titleW;
  final Widget? leadingW;
  final Widget? leading;
  final List<Widget>? rightDMActions;
  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title:
          titleW ??
          Text(
            title,
            style: TextStyle(
              color: mainColor,
              fontSize: 17.0,
              fontWeight: FontWeight.w600,
            ),
          ),
      backgroundColor: backgroundColor,
      elevation: 0.0,
      leading: leadingW ?? leading,
      centerTitle: false,
      bottom: bottom,
      actions: rightDMActions ?? [Center()],
    );
  }
}