// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';
import 'package:flutter/gestures.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late List<String> _expandedKeys;
  late Map<String, String> _keyValues;
  late int _maxValueLength;
  late Map<String, InfoValueSpanBuilder> _spanBuilders;

  Map<String, String> get keyValues => _keyValues;
  int get maxValueLength => _maxValueLength;
  Map<String, InfoValueSpanBuilder> get spanBuilders => _spanBuilders;

  @override
  void initState() {
    super.initState();
    _expandedKeys = makeExpandedKeys();
    _keyValues = fixtureKeyValues();
    _maxValueLength = fixtureMaxValueLength;
    _spanBuilders = makeSpanBuilders();
  }

  double _getSpanWidth(TextSpan span, TextScaler textScaler) {
    final paragraph = RenderParagraph(
      span,
      textDirection: TextDirection.ltr,
      textScaler: textScaler,
    )..layout(const BoxConstraints(), parentUsesSize: true);
    final width = paragraph.getMaxIntrinsicWidth(double.infinity);
    paragraph.dispose();

    return width;
  }

  List<InlineSpan> _buildTextValueSpans(
    BuildContext context,
    String key,
    String value,
  ) {
    GestureRecognizer? recognizer;

    // long values are clipped, and made expandable by tapping them
    final showPreviewOnly =
        maxValueLength > 0 &&
        value.length > maxValueLength &&
        !_expandedKeys.contains(key);
    if (showPreviewOnly) {
      value = '${value.substring(0, maxValueLength)}…';
      // show full value on tap
      recognizer = TapGestureRecognizer()
        ..onTap = () => setState(() => _expandedKeys.add(key));
    }

    return [TextSpan(text: _buildTextValue(value), recognizer: recognizer)];
  }

  String _buildTextValue(String value) => '${Unicode.fsi}$value${Unicode.pdi}';

  @override
  Widget build(BuildContext context) {
    if (keyValues.isEmpty) return const SizedBox();
    final keyStyle = InfoRowGroup.keyStyle(context);
    final textScaler = MediaQuery.textScalerOf(context);
    final keySizes = Map.fromEntries(
      keyValues.keys.map(
        (key) => MapEntry(
          key,
          _getSpanWidth(
            TextSpan(text: _buildTextValue(key), style: keyStyle),
            textScaler,
          ),
        ),
      ),
    );
    final lastKey = keyValues.keys.last;
    return _KeyValueRichText(
      keyValues: keyValues,
      spanBuilders: spanBuilders,
      keySizes: keySizes,
      lastKey: lastKey,
      keyStyle: keyStyle,
      textScaler: textScaler,
      buildTextValue: _buildTextValue,
      defaultSpanBuilder: _buildTextValueSpans,
      getSpanWidth: _getSpanWidth,
    );
  }
}

class _KeyValueRichText extends StatelessWidget {
  const _KeyValueRichText({
    required this.keyValues,
    required this.spanBuilders,
    required this.keySizes,
    required this.lastKey,
    required this.keyStyle,
    required this.textScaler,
    required this.buildTextValue,
    required this.defaultSpanBuilder,
    required this.getSpanWidth,
  });

  final Map<String, String> keyValues;
  final Map<String, InfoValueSpanBuilder> spanBuilders;
  final Map<String, double> keySizes;
  final String lastKey;
  final TextStyle keyStyle;
  final TextScaler textScaler;
  final String Function(String) buildTextValue;
  final InfoValueSpanBuilder defaultSpanBuilder;
  final double Function(TextSpan, TextScaler) getSpanWidth;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // find longest key below threshold
        final maxBaseValueX = constraints.maxWidth / 3;
        final baseValueX = keySizes.values
            .where((size) => size < maxBaseValueX)
            .fold(0.0, max);

        return SelectableText.rich(
          TextSpan(
            children: keyValues.entries.expand((kv) {
              final key = kv.key;
              final value = kv.value;
              final customSpanBuilder = spanBuilders[key];
              final spanBuilder = customSpanBuilder ?? defaultSpanBuilder;
              final thisSpaceSize =
                  max(0.0, (baseValueX - keySizes[key]!)) +
                  InfoRowGroup.keyValuePadding;

              InlineSpan paddingSpan;
              if (customSpanBuilder != null) {
                // add padding using hair spaces instead of a straightforward `SizedBox` in a `WidgetSpan`,
                // because ordering of multiple `WidgetSpan`s (e.g. with owner app icon) in Bidi context is tricky
                final baseSpaceWidth = getSpanWidth(
                  TextSpan(text: ' ' * 100, style: keyStyle),
                  textScaler,
                );
                final spaceCount = (100 * thisSpaceSize / baseSpaceWidth)
                    .round();
                paddingSpan = TextSpan(text: ' ' * spaceCount);
              } else {
                final textScaleFactor =
                    textScaler.scale(thisSpaceSize) / thisSpaceSize;
                paddingSpan = WidgetSpan(
                  child: SizedBox(
                    width: thisSpaceSize / textScaleFactor,
                    // as of Flutter v3.0.0, the underline decoration from the following `TextSpan`
                    // is applied to the `WidgetSpan` too, so we add a dummy `Text` as a workaround
                    child: const Text(''),
                  ),
                );
              }

              return [
                TextSpan(text: buildTextValue(key), style: keyStyle),
                paddingSpan,
                ...spanBuilder(context, key, value),
                if (key != lastKey) const TextSpan(text: '\n'),
              ];
            }).toList(),
          ),
          style: InfoRowGroup.valueStyle,
        );
      },
    );
  }
}