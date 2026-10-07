// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late Color itemBgColor;

  @override
  void initState() {
    super.initState();
    itemBgColor = Colors.grey;
  }

  Widget _buildExit() {
    TextStyle labelStyle = TextStyle(color: Colors.white);
    return Container(
      width: 200,
      height: 36,
      decoration: BoxDecoration(
        color: itemBgColor,
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new TextButton(
              onPressed: () {},
              child: new Text('赞', style: labelStyle),
            ),
          ),
          new Expanded(
            child: new TextButton(
              onPressed: () {},
              child: new Text('评论', style: labelStyle),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return IconButton(
          icon: Icon(Icons.more_horiz, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              PopRoute(
                child: Popup(
                  btnContext: context,
                  child: _buildExit(),
                  onClick: () {
                    print("exit");
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}
class Popup extends StatefulWidget {
  final BuildContext btnContext;
  final Widget child;
  final VoidCallback? onClick; // Click event for child

  Popup({required this.btnContext, required this.child, this.onClick});

  @override
  PopupState createState() => PopupState();
}
class PopupState extends State<Popup> {
  late RenderBox button;
  late RenderBox overlay;
  late RelativeRect position;

  @override
  void initState() {
    super.initState();
    button = widget.btnContext.findRenderObject() as RenderBox;
    overlay =
        Overlay.of(widget.btnContext).context.findRenderObject() as RenderBox;
    position = RelativeRect.fromRect(
      Rect.fromPoints(
        button.localToGlobal(Offset.zero, ancestor: overlay),
        button.localToGlobal(Offset.zero, ancestor: overlay),
      ),
      Offset.zero & overlay.size,
    );
  }

  TextStyle style = TextStyle(color: Colors.red);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: GestureDetector(
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.transparent,
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.cyan.withOpacity(0.5),
                    margin: EdgeInsets.only(top: 80),
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'position.bottom:: ${position.bottom}',
                          style: style,
                        ),
                        Text('position.top:: ${position.top}', style: style),
                        Text('position.left:: ${position.left}', style: style),
                        Text(
                          'position.right:: ${position.right}',
                          style: style,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              child: GestureDetector(
                child: widget.child,
                onTap: () {
                  // Click event for child
                  if (widget.onClick != null) {
                    Navigator.of(context).pop();
                    widget.onClick!();
                  }
                },
              ),
              top: position.top,
              right: position.right,
            ),
          ],
        ),
        onTap: () {
          // Click event for empty space
          Navigator.of(context).pop();
        },
      ),
    );
  }
}