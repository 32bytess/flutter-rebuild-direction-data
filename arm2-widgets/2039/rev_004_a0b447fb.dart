// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'package:flutter/material.dart';
part 'dependencies.dart';


class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  late final String code;
  late final Syntax syntax;
  late final bool withZoom;
  late final bool withLinesCount;
  late final SyntaxTheme? syntaxTheme;
  late final double fontSize;
  late final bool expanded;
  late final bool selectable;

  @override
  void initState() {
    super.initState();
    code = fixtureCode;
    syntax = fixtureSyntax;
    withZoom = fixtureWithZoom;
    withLinesCount = fixtureWithLinesCount;
    syntaxTheme = fixtureSyntaxTheme;
    fontSize = fixtureFontSize;
    expanded = fixtureExpanded;
    selectable = fixtureSelectable;
    _verticalScrollController = fixtureVerticalScrollController;
    _fontScaleFactor = fixtureFontScaleFactor;
  }

  /// For Zooming Controls
  static const double MAX_FONT_SCALE_FACTOR = 3.0;

  static const double MIN_FONT_SCALE_FACTOR = 0.5;

  late double _fontScaleFactor;

  late ScrollController _verticalScrollController;

  Widget buildCodeWithLinesCount() {
    final int numLines = '\n'.allMatches(code).length + 1;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            for (int i = 1; i <= numLines; i++)
              RichText(
                textScaler: TextScaler.linear(_fontScaleFactor),
                text: TextSpan(
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontSize: fontSize,
                    color: syntaxTheme!.linesCountColor,
                  ),
                  text: "$i",
                ),
              ),
          ],
        ),
        VerticalDivider(width: 5),
        buildCode(),
        //Expanded(child: buildCode()),
      ],
    );
  }

  Widget buildCode() {
    if (selectable) {
      return SelectableText.rich(
        /* formatted text */
        TextSpan(
          style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
          children: <TextSpan>[
            getSyntax(syntax, syntaxTheme).format(code),
          ],
        ),
        textScaler: TextScaler.linear(_fontScaleFactor),
      );
    } else {
      return RichText(
        textScaler: TextScaler.linear(_fontScaleFactor),
        text: /* formatted text */ TextSpan(
          style: TextStyle(fontFamily: 'monospace', fontSize: fontSize),
          children: <TextSpan>[
            getSyntax(syntax, syntaxTheme).format(code),
          ],
        ),
      );
    }
  }

  Widget zoomControls() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.zoom_out, color: syntaxTheme!.zoomIconColor),
          onPressed: () {
            /* spm: non-rebuild body erased */
          },
        ),
        IconButton(
          icon: Icon(Icons.zoom_in, color: syntaxTheme!.zoomIconColor),
          onPressed: () {
            /* spm: non-rebuild body erased */
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: <Widget>[
        Container(
          padding: withLinesCount
              ? const EdgeInsets.only(left: 5, top: 10, right: 10, bottom: 10)
              : const EdgeInsets.all(10),
          color: syntaxTheme!.backgroundColor,
          constraints: expanded ? BoxConstraints.expand() : null,
          child: Scrollbar(
            controller: _verticalScrollController,
            child: SingleChildScrollView(
              controller: _verticalScrollController,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: withLinesCount
                    ? buildCodeWithLinesCount() // Syntax view with line number to the left
                    : buildCode(), // Syntax view
              ),
            ),
          ),
        ),
        if (withZoom) zoomControls(), // Zoom control icons
      ],
    );
  }
}

/// Supported Syntaxes Enum
enum Syntax { DART, C, CPP, JAVASCRIPT, KOTLIN, JAVA, SWIFT, YAML }

abstract class SyntaxBase {
  SyntaxTheme? get syntaxTheme;
  TextSpan format(String src);
  Syntax get type;
}








// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
