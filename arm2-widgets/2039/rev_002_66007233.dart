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
  late final String font;
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
    font = fixtureFont;
    syntax = fixtureSyntax;
    withZoom = fixtureWithZoom;
    withLinesCount = fixtureWithLinesCount;
    syntaxTheme = fixtureSyntaxTheme;
    fontSize = fixtureFontSize;
    expanded = fixtureExpanded;
    selectable = fixtureSelectable;
    _fontScaleFactor = fixtureFontScaleFactor;
  }

  /// For Zooming Controls
  static const double MAX_FONT_SCALE_FACTOR = 3.0;

  static const double MIN_FONT_SCALE_FACTOR = 0.5;

  late double _fontScaleFactor;

  /// Build code view with line number bar
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
                textScaleFactor: _fontScaleFactor,
                text: TextSpan(
                  style: TextStyle(
                    fontFamily: font,
                    fontSize: fontSize,
                    color: syntaxTheme!.linesCountColor,
                  ),
                  text: i.toString(),
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

  /// Create code view without line number bar
  Widget buildCode() {
    return selectable
        ? SelectableText.rich(
            TextSpan(
              style: TextStyle(
                fontFamily: font,
                fontSize: fontSize,
              ),
              children: <TextSpan>[
                getSyntax(
                  syntax,
                  syntaxTheme,
                ).format(code),
              ],
            ),
            textScaleFactor: _fontScaleFactor,
          )
        : RichText(
            textScaleFactor: _fontScaleFactor,
            text: TextSpan(
              style: TextStyle(
                fontFamily: font,
                fontSize: fontSize,
              ),
              children: <TextSpan>[
                getSyntax(
                  syntax,
                  syntaxTheme,
                ).format(code),
              ],
            ),
          );
  }

  /// Create zoom in+out buttons.
  Widget zoomControls() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        // Zoom out
        IconButton(
          icon: Icon(Icons.zoom_out, color: syntaxTheme!.zoomIconColor),
          onPressed: () {
            /* spm: non-rebuild body erased */
          },
        ),
        // Zoom in
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
            child: SingleChildScrollView(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: withLinesCount
                    ? buildCodeWithLinesCount() // Syntax view with line number to the left
                    : buildCode(), // Syntax view
              ),
            ),
          ),
        ),
        if (withZoom) zoomControls(), // Zoom controls
      ],
    );
  }
}

/// Supported Syntaxes Enum
enum Syntax { C, CPP, DART, JAVA, JAVASCRIPT, KOTLIN, PYTHON, SWIFT, YAML }

abstract class SyntaxBase {
  SyntaxTheme? get syntaxTheme;
  TextSpan format(String src);
  Syntax get type;
}







// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
