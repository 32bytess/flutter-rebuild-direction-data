// ignore_for_file: unused_import, unused_element
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({Key? key}) : super(key: key);

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  @override
  Widget build(BuildContext context) {
    return MDialog(
      S.of(context).del_class_table_dialog_title,
      Text(S.of(context).del_class_table_dialog_content),
      widgetCancelAction: () {
        UmengCommonSdk.onEvent("schedule_manage", {
          "type": "del",
          "action": "cancel",
        });
        Navigator.of(context).pop(false);
      },
      widgetOKAction: () {
        UmengCommonSdk.onEvent("schedule_manage", {
          "type": "del",
          "action": "accept",
        });
        Navigator.of(context).pop(true);
      },
    );
  }
}
class MDialog extends StatelessWidget {
  final String title;
  final Widget content;
  final List<Widget>? overrideActions;
  final Widget? widgetOK;
  final VoidCallback? widgetOKAction;
  final Widget? widgetCancel;
  final VoidCallback? widgetCancelAction;

  const MDialog(
    this.title,
    this.content, {
    // this.actions,
    this.overrideActions,
    this.widgetOK,
    this.widgetOKAction,
    this.widgetCancel,
    this.widgetCancelAction,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      actions:
          overrideActions ??
          [
            widgetCancelAction == null
                ? Container()
                : TransBgTextButton(
                    // color: Theme.of(context).brightness == Brightness.light
                    // ? Theme.of(context).primaryColor
                    // : Colors.white,
                    color: Colors.grey,
                    onPressed: widgetCancelAction,
                    child: widgetCancel ?? Text(S.of(context).cancel),
                  ),
            widgetCancelAction == null
                ? Container()
                : TransBgTextButton(
                    color: Colors.grey,
                    onPressed: widgetCancelAction,
                    child: widgetCancel ?? Text(S.of(context).cancel),
                  ),
            widgetCancelAction == null
                ? Container()
                : TransBgTextButton(
                    color: Colors.grey,
                    onPressed: widgetCancelAction,
                    child: widgetCancel ?? Text(S.of(context).cancel),
                  ),
            TransBgTextButton(
              color: Theme.of(context).brightness == Brightness.light
                  ? Theme.of(context).primaryColor
                  : Colors.white,
              onPressed: widgetOKAction,
              child: widgetOK ?? Text(S.of(context).ok),
            ),
            TransBgTextButton(
              color: Theme.of(context).brightness == Brightness.light
                  ? Theme.of(context).primaryColor
                  : Colors.white,
              onPressed: widgetOKAction,
              child: widgetOK ?? Text(S.of(context).ok),
            ),
          ],
    );
  }
}