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
    return MDialog(
      S.of(context).add_class_table_dialog_title,
      _AddClassField(controller: _controller),
      widgetCancelAction: () {
        UmengCommonSdk.onEvent("schedule_manage", {
          "type": "add",
          "action": "cancel",
        });
        Navigator.of(context).pop('');
      },
      widgetOKAction: () {
        UmengCommonSdk.onEvent("schedule_manage", {
          "type": "add",
          "action": "accept",
        });
        Navigator.of(context).pop(_controller.text);
      },
    );
  }
}

class _AddClassField extends StatelessWidget {
  final TextEditingController controller;

  const _AddClassField({Key? key, required this.controller})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(child: TextField(autofocus: false, controller: controller)),
      ],
    );
  }
}

class _DialogTitle extends StatelessWidget {
  final String title;

  const _DialogTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: Alignment.centerLeft,
      child: Text(
        (title.length <= 15) ? title : '${title.substring(0, 15)}...',
      ),
    );
  }
}

class _DialogActions extends StatelessWidget {
  final Widget? widgetCancel;
  final VoidCallback? widgetCancelAction;
  final Widget? widgetOK;
  final VoidCallback? widgetOKAction;

  const _DialogActions({
    Key? key,
    this.widgetCancel,
    this.widgetCancelAction,
    this.widgetOK,
    this.widgetOKAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return widgetCancelAction == null
        ? Container()
        : TransBgTextButton(
            color: Colors.grey,
            onPressed: widgetCancelAction,
            child: widgetCancel ?? Text(S.of(context).cancel),
          );
  }
}

class _DialogOkAction extends StatelessWidget {
  final Widget? widgetOK;
  final VoidCallback? widgetOKAction;

  const _DialogOkAction({Key? key, this.widgetOK, this.widgetOKAction})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TransBgTextButton(
      color: Theme.of(context).brightness == Brightness.light
          ? Theme.of(context).primaryColor
          : Colors.white,
      onPressed: widgetOKAction,
      child: widgetOK ?? Text(S.of(context).ok),
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
      title: _DialogTitle(title: title),
      content: content,
      actions:
          overrideActions ??
          [
            _DialogActions(
              widgetCancel: widgetCancel,
              widgetCancelAction: widgetCancelAction,
            ),
            _DialogOkAction(widgetOK: widgetOK, widgetOKAction: widgetOKAction),
          ],
    );
  }
}