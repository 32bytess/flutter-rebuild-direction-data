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

class _ActionsListView extends StatelessWidget {
  final List<String> actions;
  final int curPage;
  final int pageMaxChildCount;
  final int curPageChildCount;
  final double curPageWidth;
  final double curArrowWidth;
  final int curArrowCount;
  final double separatorWidth;
  final double menuHeight;
  final ValueChanged<int> onSelect;

  const _ActionsListView({
    required this.actions,
    required this.curPage,
    required this.pageMaxChildCount,
    required this.curPageChildCount,
    required this.curPageWidth,
    required this.curArrowWidth,
    required this.curArrowCount,
    required this.separatorWidth,
    required this.menuHeight,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: curPageChildCount,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            onSelect(curPage * pageMaxChildCount + index);
          },
          child: SizedBox(
            width:
                (curPageWidth -
                    curArrowWidth -
                    (curPageChildCount - 1 + curArrowCount) * separatorWidth) /
                curPageChildCount,
            height: menuHeight,
            child: Center(
              child: Text(
                actions[curPage * pageMaxChildCount + index],
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Container(width: 1, height: menuHeight, color: Colors.grey);
      },
    );
  }
}

class _PopupTriangle extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final RelativeRect position;
  final Size buttonSize;
  final bool isInverted;

  const _PopupTriangle({
    required this.width,
    required this.height,
    required this.color,
    required this.position,
    required this.buttonSize,
    this.isInverted = false,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, height),
      painter: TrianglePainter(
        color: color,
        position: position,
        isInverted: isInverted,
        size: buttonSize,
      ),
    );
  }
}

class _NavArrow extends StatelessWidget {
  final double width;
  final double height;
  final VoidCallback onTap;

  const _NavArrow({
    required this.width,
    required this.height,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        child: Container(color: Colors.grey.shade300, width: 80, height: 80),
      ),
    );
  }
}

class _PopupRow extends StatelessWidget {
  final int curPage;
  final double menuHeight;
  final double arrowWidth;
  final int curArrowCount;
  final int pageMaxChildCount;
  final int actionsLength;
  final Widget actionsList;
  final VoidCallback onPrev;
  final VoidCallback onNext;

  const _PopupRow({
    required this.curPage,
    required this.menuHeight,
    required this.arrowWidth,
    required this.curArrowCount,
    required this.pageMaxChildCount,
    required this.actionsLength,
    required this.actionsList,
    required this.onPrev,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        curPage == 0
            ? Container(height: menuHeight)
            : _NavArrow(width: arrowWidth, height: menuHeight, onTap: onPrev),
        curPage == 0
            ? Container(height: menuHeight)
            : Container(width: 1, height: menuHeight, color: Colors.grey),
        actionsList,
        curArrowCount > 0
            ? Container(width: 1, color: Colors.grey, height: menuHeight)
            : Container(height: menuHeight),
        curArrowCount > 0
            ? _NavArrow(width: arrowWidth, height: menuHeight, onTap: onNext)
            : Container(height: menuHeight),
      ],
    );
  }
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

      var pain = _PopupTriangle(
        width: _curPageWidth,
        height: _triangleHeight,
        color: backgroundColor,
        position: position,
        buttonSize: buttonSize,
        isInverted: true,
      );

      var row = _PopupRow(
        curPage: _curPage,
        menuHeight: menuHeight,
        arrowWidth: _arrowWidth,
        curArrowCount: _curArrowCount,
        pageMaxChildCount: _pageMaxChildCount,
        actionsLength: actions.length,
        actionsList: _ActionsListView(
          actions: actions,
          curPage: _curPage,
          pageMaxChildCount: _pageMaxChildCount,
          curPageChildCount: _curPageChildCount,
          curPageWidth: _curPageWidth,
          curArrowWidth: _curArrowWidth,
          curArrowCount: _curArrowCount,
          separatorWidth: _separatorWidth,
          menuHeight: menuHeight,
          onSelect: (index) {
            Navigator.pop(context, index);
          },
        ),
        onPrev: () {
          setState(() {
            _curPage--;
          });
        },
        onNext: () {
          if ((_curPage + 1) * _pageMaxChildCount <
              actions.length)
            setState(() {
              _curPage++;
            });
        },
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
                : _PopupTriangle(
                    width: _curPageWidth,
                    height: _triangleHeight,
                    color: backgroundColor,
                    position: position,
                    buttonSize: buttonSize,
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
              child: view(),
            ),
          );
        },
      ),
    );
  }
}