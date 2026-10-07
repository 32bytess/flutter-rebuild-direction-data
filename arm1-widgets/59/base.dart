// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late int _maxShowClasses;

  late double _classTitleHeight;

  late double _classTitleWidth;

  late bool _isShowWeekTime;

  late bool? _isWhiteMode;

  late List<Map> classTimeList;

  @override
  void initState() {
    super.initState();
    _maxShowClasses = fixtureMaxShowClasses;
    _classTitleHeight = fixtureClassTitleHeight;
    _classTitleWidth = fixtureClassTitleWidth;
    _isShowWeekTime = fixtureIsShowWeekTime;
    _isWhiteMode = fixtureIsWhiteMode;
    classTimeList = fixtureClassTimeList;
  }

  Color? getColor() {
    if (_isWhiteMode == null) {
      return null;
    } else {
      return _isWhiteMode! ? Colors.white : Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _classTitle = List.generate(
      _maxShowClasses,
      (int i) => SizedBox(
        height: _classTitleHeight,
        width: _classTitleWidth,
        child: Center(
          child: _isShowWeekTime
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      (i + 1).toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: getColor(),
                      ),
                    ),
                    Text(
                      classTimeList[i]['start'] +
                          '\n' +
                          classTimeList[i]['end'],
                      style: TextStyle(fontSize: 10, color: getColor()),
                    ),
                  ],
                )
              : Text(
                  (i + 1).toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: getColor()),
                ),
        ),
      ),
    );
    return Column(children: _classTitle);
  }
}
