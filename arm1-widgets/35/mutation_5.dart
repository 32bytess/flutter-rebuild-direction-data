// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new ComMomBar(title: '选择群聊'),
      body: const _EmptyGroupBody(),
    );
  }
}

class _EmptyGroupBody extends StatelessWidget {
  const _EmptyGroupBody();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('暂无群聊', style: TextStyle(color: mainTextColor)),
    );
  }
}

class _ComMomBarLeading extends StatelessWidget {
  const _ComMomBarLeading({
    required this.mainColor,
    required this.leadingImg,
  });

  final Color mainColor;
  final String leadingImg;

  @override
  Widget build(BuildContext context) {
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
  }
}

class _ShadowedAppBarContent extends StatelessWidget {
  const _ShadowedAppBarContent({
    required this.title,
    required this.titleW,
    required this.mainColor,
    required this.leadingW,
    required this.rightDMActions,
    required this.bottom,
  });

  final String title;
  final Widget? titleW;
  final Color mainColor;
  final Widget? leadingW;
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
        leading: leadingW,
        centerTitle: true,
        actions: rightDMActions ?? [Center()],
        bottom: bottom,
      ),
    );
  }
}

class _PlainAppBarContent extends StatelessWidget {
  const _PlainAppBarContent({
    required this.title,
    required this.titleW,
    required this.backgroundColor,
    required this.mainColor,
    required this.leadingW,
    required this.rightDMActions,
    required this.bottom,
  });

  final String title;
  final Widget? titleW;
  final Color backgroundColor;
  final Color mainColor;
  final Widget? leadingW;
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
      leading: leadingW,
      centerTitle: false,
      bottom: bottom,
      actions: rightDMActions ?? [Center()],
    );
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
      return _ComMomBarLeading(mainColor: mainColor, leadingImg: leadingImg);
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return showShadow
        ? _ShadowedAppBarContent(
            title: title,
            titleW: titleW,
            mainColor: mainColor,
            leadingW: leadingW ?? leading(context),
            rightDMActions: rightDMActions,
            bottom: bottom,
          )
        : _PlainAppBarContent(
            title: title,
            titleW: titleW,
            backgroundColor: backgroundColor,
            mainColor: mainColor,
            leadingW: leadingW ?? leading(context),
            rightDMActions: rightDMActions,
            bottom: bottom,
          );
  }
}