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
  late String groupOwner;
  late String groupNotice;
  late String groupId;
  late Callback<String?> callback;

  late bool inputState;

  late FocusNode _focusNode;

  late TextEditingController _textController;

  String? _publishTime;

  late TextStyle styleLabel;

  @override
  void initState() {
    super.initState();
    groupOwner = fixtureGroupOwner;
    groupNotice = fixtureGroupNotice;
    groupId = fixtureGroupId;
    callback = (String? value) {};
    inputState = fixtureInputState;
    _focusNode = makeFocusNode();
    _textController = makeTextController();
    _publishTime = null;
    styleLabel = fixtureStyleLabel;
    _textController.text = groupNotice;
  }

  onChange() {
    if (inputState) {
      final now = DateTime(2025, 1, 1, 0, 0);
      _publishTime =
          '${now.year}-' +
          '${now.month}-' +
          '${now.day} ' +
          '${now.hour}:' +
          '${now.minute}';
      debugPrint('发布时间>>>>> $_publishTime');
      DimGroup.modifyGroupNotificationModel(
        groupId,
        _textController.text,
        _publishTime!,
      );
      callback(_publishTime);
      Navigator.pop(context, _textController.text);
      inputState = false;
    } else {
      inputState = true;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new ComMomBar(
        title: '群公告',
        rightDMActions: <Widget>[
          new ComMomButton(
            text: '确定',
            style: TextStyle(color: Colors.white),
            width: 45.0,
            margin: EdgeInsets.all(10.0),
            radius: 4.0,
            onTap: () => onChange(),
          ),
        ],
      ),
      body: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: '请编辑群公告',
        ),
        autofocus: false,
        focusNode: _focusNode,
        maxLines: null,
        expands: true,
        controller: _textController,
        style: TextStyle(fontSize: 15.0),
      ),
    );
  }
}
class ComMomButton extends StatelessWidget {
  final double? width;
  final double height;
  final List<BoxShadow>? boxShadow;
  final double radius;
  final String text;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry? margin;
  final TextStyle? style;
  final Color? color;
  final bool isBorder;
  final int borderColor;
  final Gradient gradient;
  final bool enable;

  ComMomButton({
    this.width,
    this.height = 40.0,
    this.boxShadow,
    this.radius = 5.0,
    this.text = 'button',
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: 5.0),
    this.margin,
    this.style,
    this.color,
    this.isBorder = false,
    this.gradient = const LinearGradient(
      colors: [
        Color.fromRGBO(8, 191, 98, 1.0),
        Color.fromRGBO(8, 191, 98, 1.0),
      ],
    ),
    this.enable = true,
    this.borderColor = 0xffFC6973,
  });

  @override
  Widget build(BuildContext context) {
    Color _color = Color.fromRGBO(225, 225, 225, enable ? 1 : 0.3);

    return Container(
      margin: margin,
      child: InkWell(
        child: Container(
          alignment: Alignment.center,
          padding: padding,
          width: width,
          height: height,
          decoration: color == null
              ? BoxDecoration(
                  gradient: gradient,
                  boxShadow: boxShadow,
                  border: isBorder
                      ? Border.all(width: 0.5, color: Color(borderColor))
                      : null,
                  borderRadius: BorderRadius.all(Radius.circular(radius)),
                )
              : BoxDecoration(
                  color: color,
                  boxShadow: boxShadow,
                  border: isBorder
                      ? Border.all(width: 0.5, color: Color(borderColor))
                      : null,
                  borderRadius: BorderRadius.all(Radius.circular(radius)),
                ),
          child: Text(
            text,
            style: style ?? TextStyle(fontSize: 15.0, color: _color),
          ),
        ),
        onTap: enable ? onTap : null,
      ),
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
        ? Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: showShadow ? 0.5 : 0.0,
                ),
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
              // brightness: Brightness.light,
              leading: leadingW ?? leading(context),
              centerTitle: true,
              actions: rightDMActions ?? [Center()],
              bottom: bottom,
            ),
          )
        : AppBar(
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
            // brightness: Brightness.light,
            leading: leadingW ?? leading(context),
            centerTitle: false,
            bottom: bottom,
            actions: rightDMActions ?? [Center()],
          );
  }
}