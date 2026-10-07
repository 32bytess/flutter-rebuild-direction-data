// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  final GroupInfoType groupInfoType = GroupInfoType.remark;
  final String text = '';
  final String groupId = '';

  GeneratedWidget();

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  late TextEditingController _textController;

  handle() {
    if (!strNoEmpty(_textController.text)) {
      showToast('请输入内容');
      return;
    }
    if (widget.groupInfoType == GroupInfoType.name) {
      DimGroup.modifyGroupNameModel(
        widget.groupId,
        _textController.text,
        callback: (_) {},
      );
      Navigator.pop(context, _textController.text);
    } else {
      showToast('敬请期待');
    }
  }

  @override
  void initState() {
    super.initState();
    _textController = makeTextController();
    _textController.text = widget.text;
  }

  String get label {
    if (widget.groupInfoType == GroupInfoType.name) {
      return '修改群聊名称';
    } else if (widget.groupInfoType == GroupInfoType.cardName) {
      return '我在本群的昵称';
    } else {
      return '备注';
    }
  }

  String get des {
    if (widget.groupInfoType == GroupInfoType.name) {
      return '修改群聊名称后，将在群内通知其他成员';
    } else if (widget.groupInfoType == GroupInfoType.cardName) {
      return '昵称修改后，只会在此群内显示，群内成员都可以看见。';
    } else {
      return '群聊的备注仅自己可见';
    }
  }

  @override
  Widget build(BuildContext context) {
    return new MainInputBody(
      child: new Scaffold(
        appBar: new ComMomBar(backgroundColor: Colors.white),
        body: new Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new SizedBox(height: 30),
              new Text(
                '$label',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              new Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: new Text('$des', textAlign: TextAlign.center),
              ),
              new Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey, width: 0.2),
                    bottom: BorderSide(color: Colors.grey, width: 0.2),
                  ),
                ),
                child: new Row(
                  children: <Widget>[
                    Container(
                      color: Colors.grey.shade300,
                      width: 80,
                      height: 80,
                    ),
                    new Space(),
                    new Expanded(
                      child: new TextField(
                        controller: _textController,
                        decoration: InputDecoration(
                          hintText:
                              '${widget.groupInfoType == GroupInfoType.name ? '群聊名称' : '备注'}',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              new Space(),
              new Visibility(
                visible: widget.groupInfoType == GroupInfoType.remark,
                child: new Row(
                  children: <Widget>[
                    new Text(
                      '群聊名称：wechat_flutter 106号群',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    new Space(),
                    new InkWell(
                      child: new Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2),
                        child: new Text(
                          '填入',
                          style: TextStyle(color: mainTextColor, fontSize: 14),
                        ),
                      ),
                      onTap: () {
                        _textController.text = 'wechat_flutter 106号群';
                      },
                    ),
                  ],
                ),
              ),
              new Spacer(),
              new ComMomButton(
                text: '完成',
                onTap: () => handle(),
                width: Get.width / 2,
              ),
              new SizedBox(height: winKeyHeight(context) > 1 ? 15 : 50),
            ],
          ),
        ),
      ),
    );
  }
}

class MainInputBody extends StatefulWidget {
  final Widget? child;
  final Color color;
  final Decoration? decoration;
  final GestureTapCallback? onTap;

  MainInputBody({
    this.child,
    this.color = const Color(0xfff4f4f4),
    this.decoration,
    this.onTap,
  });

  @override
  State<StatefulWidget> createState() => MainInputBodyState();
}

class MainInputBodyState extends State<MainInputBody> {
  @override
  Widget build(BuildContext context) {
    return widget.decoration != null
        ? Container(
            decoration: widget.decoration,
            height: double.infinity,
            width: double.infinity,
            child: GestureDetector(
              child: widget.child,
              behavior: HitTestBehavior.translucent,
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
                if (widget.onTap != null) {
                  widget.onTap!();
                }
              },
            ),
          )
        : Container(
            color: widget.color,
            height: double.infinity,
            width: double.infinity,
            child: GestureDetector(
              child: widget.child,
              behavior: HitTestBehavior.translucent,
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
                if (widget.onTap != null) {
                  widget.onTap!();
                }
              },
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

class Space extends StatelessWidget {
  final double width;
  final double height;

  Space({this.width = 10.0, this.height = 10.0});

  @override
  Widget build(BuildContext context) {
    return new Container(width: width, height: height);
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
