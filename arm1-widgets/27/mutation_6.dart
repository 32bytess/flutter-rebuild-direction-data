// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({Key? key}) : super(key: key);

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = makeTextController();
  }

  @override
  Widget build(BuildContext context) {
    final String title = S.of(context).add_class_table_dialog_title;
    final Widget content = Row(
      children: <Widget>[
        Expanded(child: TextField(autofocus: false, controller: _controller)),
      ],
    );
    final VoidCallback widgetCancelAction = () {
      UmengCommonSdk.onEvent("schedule_manage", {
        "type": "add",
        "action": "cancel",
      });
      Navigator.of(context).pop('');
    };
    final VoidCallback widgetOKAction = () {
      UmengCommonSdk.onEvent("schedule_manage", {
        "type": "add",
        "action": "accept",
      });
      Navigator.of(context).pop(_controller.text);
    };

    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          (title.length <= 15) ? title : '${title.substring(0, 15)}...',
        ),
      ),
      content: content,
      actions: [
        TransBgTextButton(
          color: Colors.grey,
          onPressed: widgetCancelAction,
          child: Text(S.of(context).cancel),
        ),
        TransBgTextButton(
          color: Theme.of(context).brightness == Brightness.light
              ? Theme.of(context).primaryColor
              : Colors.white,
          onPressed: widgetOKAction,
          child: Text(S.of(context).ok),
        ),
      ],
    );
  }
}