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
    final List<_ActionSpec> actionSpecs = [
      _ActionSpec(
        onPressed: widgetCancelAction,
        child: widgetCancel ?? Text(S.of(context).cancel),
        color: Colors.grey,
      ),
      _ActionSpec(
        onPressed: widgetOKAction,
        child: widgetOK ?? Text(S.of(context).ok),
        color: Theme.of(context).brightness == Brightness.light
            ? Theme.of(context).primaryColor
            : Colors.white,
      ),
    ];

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
          actionSpecs
              .map(
                (spec) => spec.onPressed == null && spec == actionSpecs.first
                    ? Container()
                    : TransBgTextButton(
                        color: spec.color,
                        onPressed: spec.onPressed,
                        child: spec.child,
                      ),
              )
              .toList(),
    );
  }
}

class _ActionSpec {
  final VoidCallback? onPressed;
  final Widget child;
  final Color color;

  const _ActionSpec({
    required this.onPressed,
    required this.child,
    required this.color,
  });
}