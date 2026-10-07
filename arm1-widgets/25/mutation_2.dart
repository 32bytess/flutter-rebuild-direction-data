// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late bool queryEnabled;
  late Widget child;

  late bool enabled;

  @override
  void initState() {
    super.initState();
    queryEnabled = fixtureQueryEnabled;
    child = fixtureChild;
    enabled = fixtureEnabled;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: CaptionedButtonText(
        text: queryEnabled
            ? context.l10n.collectionActionHideTitleSearch
            : context.l10n.collectionActionShowTitleSearch,
        enabled: enabled,
      ),
    );
  }
}
class CaptionedButtonText extends StatelessWidget {
  final String text;
  final bool enabled;

  static const int maxLines = 2;

  const CaptionedButtonText({
    super.key,
    required this.text,
    required this.enabled,
  });

  @override
  Widget build(BuildContext context) {
    var style = DefaultTextStyle.of(context).style;
    if (!enabled) {
      style = style.copyWith(color: style.color!.withValues(alpha: .2));
    }

    return Padding(
      padding: const EdgeInsets.all(0),
      child: Text(
        text,
        style: style,
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        maxLines: maxLines,
      ),
    );
  }

  static TextStyle _textStyle(BuildContext context) {
    // specify `height` for accurate paragraph height measurement
    final defaultTextHeight = DefaultTextStyle.of(context).style.height;
    return Theme.of(
      context,
    ).textTheme.bodySmall!.copyWith(height: defaultTextHeight);
  }
}