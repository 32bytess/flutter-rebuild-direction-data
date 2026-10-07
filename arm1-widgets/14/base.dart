// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({Key? key}) : super(key: key);

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late Map node;

  @override
  void initState() {
    super.initState();
    node = fixtureNode();
  }

  @override
  Widget build(BuildContext context) {
    Map _node = node;
    FixedExtentScrollController _startController = FixedExtentScrollController(
      initialItem: _node['startTime'],
    );
    FixedExtentScrollController _endController = FixedExtentScrollController(
      initialItem: _node['endTime'],
    );
    return MDialog(
      S.of(context).choose_class_time_dialog_title,
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 96,
            child: Flex(
              // mainAxisSize: MainAxisSize.min,
              direction: Axis.horizontal,
              children: <Widget>[
                Flexible(
                  flex: 5,
                  child: CupertinoPicker(
                    scrollController: FixedExtentScrollController(
                      initialItem: _node['weekTime'],
                    ),
                    itemExtent: 32.0,
                    // backgroundColor: Colors.white,
                    onSelectedItemChanged: (int index) {
                      setState(() {
                        _node['weekTime'] = index;
                      });
                    },
                    children: List<Widget>.generate(
                      Constant.WEEK_WITHOUT_BIAS.length,
                      (int index) {
                        return Center(
                          child: Text(
                            Constant.WEEK_WITHOUT_BIAS[index],
                            style: TextStyle(
                              fontSize: 16,
                              color:
                                  Theme.of(context).brightness ==
                                      Brightness.light
                                  ? Colors.black
                                  : Colors.white,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                // Flexible(
                //   flex: 1,
                //   child: Container(),
                // ),
                Flexible(
                  flex: 5,
                  child: CupertinoPicker(
                    scrollController: _startController,
                    itemExtent: 32.0,

                    // backgroundColor: Colors.white,
                    onSelectedItemChanged: (int index) {
                      if (_endController.selectedItem < index) {
                        _node['endTime'] = index;
                        _endController.jumpToItem(_node['endTime']);
                      }
                      setState(() {
                        _node['startTime'] = index;
                      });
                    },
                    children: List<Widget>.generate(Config.MAX_CLASSES, (
                      int index,
                    ) {
                      return Center(
                        child: Text(
                          S.of(context).class_single((index + 1).toString()),
                          style: TextStyle(
                            fontSize: 14,
                            color:
                                Theme.of(context).brightness == Brightness.light
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                Flexible(flex: 1, child: Center(child: Text(S.of(context).to))),
                Flexible(
                  flex: 5,
                  child: CupertinoPicker(
                    scrollController: _endController,
                    itemExtent: 32.0,
                    // backgroundColor: Colors.white,
                    onSelectedItemChanged: (int index) {
                      if (index < _startController.selectedItem) {
                        _node['startTime'] = index;
                        _startController.jumpToItem(_node['startTime']);
                      }
                      setState(() {
                        _node['endTime'] = index;
                      });
                    },
                    children: List<Widget>.generate(
                      Config.MAX_CLASSES,
                      //                              - _node['startTime'],
                      (int index) {
                        return Center(
                          child: Text(
                            S.of(context).class_single((index + 1).toString()),
                            style: TextStyle(
                              fontSize: 14,
                              color:
                                  Theme.of(context).brightness ==
                                      Brightness.light
                                  ? Colors.black
                                  : Colors.white,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      widgetOK: Text(S.of(context).ok),
      widgetOKAction: () {
        Navigator.of(context).pop(_node);
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
