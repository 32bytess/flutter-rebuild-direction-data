// ignore_for_file: unused_import, unused_element, unused_field
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'package:flutter/painting.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  int _curPage = 0;

  final double _arrowWidth = 40;

  final double _separatorWidth = 1;

  final double _triangleHeight = 10;

  late double _height;

  late double _width;

  late List<String> actions;

  late int _pageMaxChildCount;

  late Color backgroundColor;

  late double menuWidth;

  late double menuHeight;

  late Size buttonSize;

  late RelativeRect position;

  @override
  void initState() {
    super.initState();
    _height = fixtureHeight;
    _width = fixtureWidth;
    actions = fixtureActions;
    _pageMaxChildCount = fixturePageMaxChildCount;
    backgroundColor = fixtureBackgroundColor;
    menuWidth = fixtureMenuWidth;
    menuHeight = fixtureMenuHeight;
    buttonSize = fixtureButtonSize;
    position = fixturePosition;
  }

  Widget _buildList(
    int _curPageChildCount,
    double _curPageWidth,
    double _curArrowWidth,
    int _curArrowCount,
  ) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: _curPageChildCount,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Navigator.pop(
              context,
              _curPage * _pageMaxChildCount + index,
            );
          },
          child: SizedBox(
            width:
                (_curPageWidth -
                    _curArrowWidth -
                    (_curPageChildCount - 1 + _curArrowCount) *
                        _separatorWidth) /
                _curPageChildCount,
            height: menuHeight,
            child: Center(
              child: Text(
                actions[_curPage * _pageMaxChildCount + index],
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Container(
          width: 1,
          height: menuHeight,
          color: Colors.grey,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    int _curPageChildCount =
        (_curPage + 1) * _pageMaxChildCount > actions.length
        ? actions.length % _pageMaxChildCount
        : _pageMaxChildCount;
    double _curArrowWidth = 0;
    int _curArrowCount = 0;
    if (actions.length > _pageMaxChildCount) {
      if (_curPage == 0) {
        _curArrowWidth = _arrowWidth;
        _curArrowCount = 1;
      } else {
        _curArrowWidth = _arrowWidth * 2;
        _curArrowCount = 2;
      }
    }
    double _curPageWidth =
        menuWidth +
        (_curPageChildCount - 1 + _curArrowCount) * _separatorWidth +
        _curArrowWidth;
    Widget view() {
      var isInverted =
          (position.top +
              (MediaQuery.of(context).size.height -
                      position.top -
                      position.bottom) /
                  2.0 -
              (menuHeight + _triangleHeight)) <
          (menuHeight + _triangleHeight) * 2;

      var pain = CustomPaint(
        size: Size(_curPageWidth, _triangleHeight),
        painter: TrianglePainter(
          color: backgroundColor,
          position: position,
          isInverted: true,
          size: buttonSize,
        ),
      );

      var row = Padding(
        padding: const EdgeInsets.all(0),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  _curPage == 0
                      ? Container(height: menuHeight)
                      : InkWell(
                          onTap: () {
                            setState(() {
                              _curPage--;
                            });
                          },
                          child: Container(
                            width: _arrowWidth,
                            height: menuHeight,
                            child: Container(color: Colors.grey.shade300, width: 80, height: 80),
                          ),
                        ),
                  _curPage == 0
                      ? Container(height: menuHeight)
                      : Container(
                          width: 1,
                          height: menuHeight,
                          color: Colors.grey,
                        ),
                  _buildList(
                    _curPageChildCount,
                    _curPageWidth,
                    _curArrowWidth,
                    _curArrowCount,
                  ),
                  _curArrowCount > 0
                      ? Container(
                          width: 1,
                          color: Colors.grey,
                          height: menuHeight,
                        )
                      : Container(height: menuHeight),
                  _curArrowCount > 0
                      ? InkWell(
                          onTap: () {
                            if ((_curPage + 1) * _pageMaxChildCount <
                                actions.length)
                              setState(() {
                                _curPage++;
                              });
                          },
                          child: Container(
                            width: _arrowWidth,
                            height: menuHeight,
                            child: Container(color: Colors.grey.shade300, width: 80, height: 80),
                          ),
                        )
                      : Container(height: menuHeight),
                ],
              ),
            ],
          ),
        ),
      );

      return Material(
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            isInverted ? pain : Container(),
            Expanded(
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    child: Container(
                      color: backgroundColor,
                      height: menuHeight,
                    ),
                  ),
                  row,
                ],
              ),
            ),
            isInverted
                ? Container()
                : CustomPaint(
                    size: Size(_curPageWidth, _triangleHeight),
                    painter: TrianglePainter(
                      color: backgroundColor,
                      position: position,
                      size: buttonSize,
                    ),
                  ),
          ],
        ),
      );
    }

    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      removeBottom: true,
      removeLeft: true,
      removeRight: true,
      child: Builder(
        builder: (BuildContext context) {
          return CustomSingleChildLayout(
            delegate: PopupMenuRouteLayout(
              position,
              menuHeight + _triangleHeight,
              Directionality.of(context),
              _width,
              menuWidth,
            ),
            child: SizedBox(
              height: menuHeight + _triangleHeight,
              width: _curPageWidth,
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                  child: view(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}