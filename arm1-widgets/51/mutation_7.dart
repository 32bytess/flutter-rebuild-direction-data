// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dart:ui';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  static const routeName = '/collection/stats/export';

  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  static const List<ExportableEntryField> _entryFieldOptions =
      ExportableEntryField.values;

  final Set<ExportableEntryField> _selectedFields = {};

  static const List<String> _exportMimeTypeOptions = [
    MimeTypes.csv,
    MimeTypes.json,
  ];

  late String _exportMimeType;

  final ValueNotifier<bool> _isValidNotifier = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    _exportMimeType = MimeTypes.csv;
    _validate();
  }

  @override
  void dispose() {
    _isValidNotifier.dispose();
    super.dispose();
  }

  String previewer(ExportableEntryField field) => '';

  Widget _toTile(ExportableEntryField field) {
    final preview = previewer(field);
    return SwitchListTile(
      value: _selectedFields.contains(field),
      subtitle: preview.isNotEmpty ? Text(preview) : null,
      onChanged: (selected) {
        selected ? _selectedFields.add(field) : _selectedFields.remove(field);
        setState(_validate);
      },
      title: Align(
        alignment: Alignment.centerLeft,
        child: OutlinedText(
          textSpans: [
            TextSpan(
              text: field.getText(context),
              style: TextStyle(shadows: HighlightTitle.shadows(context)),
            ),
          ],
          outlineColor: Themes.firstLayerColor(context),
        ),
      ),
    );
  }

  void _validate() => _isValidNotifier.value = _selectedFields.isNotEmpty;

  void _submit(BuildContext context, ExportTarget target) => Navigator.maybeOf(
    context,
  )?.pop((_exportMimeType, _selectedFields, target));

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AvesScaffold(
      appBar: AppBar(title: Text(l10n.settingsActionExport)),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView(
                children: _entryFieldOptions.map(_toTile).toList(),
              ),
            ),
            const Divider(height: 0),
            const Divider(height: 0),
            const Divider(height: 0),
            const Divider(height: 0),
            const Divider(height: 0),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(l10n.exportEntryDialogFormat),
                  const SizedBox(width: 16),
                  TextDropdownButton<String>(
                    values: _exportMimeTypeOptions,
                    valueText: MimeUtils.displayType,
                    value: _exportMimeType,
                    onChanged: (v) {
                      _exportMimeType = v!;
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: ValueListenableBuilder<bool>(
                valueListenable: _isValidNotifier,
                builder: (context, isValid, child) {
                  return Wrap(
                    alignment: WrapAlignment.end,
                    spacing: 16,
                    children: [
                      AvesOutlinedButton(
                        label: context.l10n.entryActionCopyToClipboard,
                        onPressed: isValid
                            ? () => _submit(context, ExportTarget.clipboard)
                            : null,
                      ),
                      AvesOutlinedButton(
                        label: context.l10n.saveTooltip,
                        onPressed: isValid
                            ? () => _submit(context, ExportTarget.file)
                            : null,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class AvesScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? floatingActionButton;
  final Widget? drawer;
  final Widget? bottomNavigationBar;
  final Color? backgroundColor;
  final bool? resizeToAvoidBottomInset;
  final bool extendBody;

  const AvesScaffold({
    super.key,
    this.appBar,
    this.body,
    this.floatingActionButton,
    this.drawer,
    this.bottomNavigationBar,
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
    this.extendBody = false,
  });

  @override
  Widget build(BuildContext context) {
    // prevent conflict between drawer drag gesture and Android navigation gestures
    final drawerEnableOpenDragGesture =
        MediaQuery.systemGestureInsetsOf(context).horizontal == 0;

    return Scaffold(
      appBar: appBar,
      body: body,
      floatingActionButton: floatingActionButton,
      drawer: drawer,
      bottomNavigationBar: bottomNavigationBar,
      backgroundColor: backgroundColor,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      extendBody: extendBody,
      drawerEnableOpenDragGesture: drawerEnableOpenDragGesture,
    );
  }
}
class TextDropdownButton<T> extends StatefulWidget {
  final List<T> values;
  final String Function(T value) valueText;
  final IconData Function(T value)? valueIcon;
  final T? value;
  final Widget? underline;
  final bool isExpanded;
  final double? itemHeight;
  final Color? dropdownColor;
  final EdgeInsetsGeometry? padding;
  final ValueChanged<T?>? onChanged;

  const TextDropdownButton({
    super.key,
    required this.values,
    required this.valueText,
    this.valueIcon,
    this.value,
    this.underline,
    this.isExpanded = false,
    this.itemHeight = kMinInteractiveDimension,
    this.dropdownColor,
    this.padding,
    required this.onChanged,
  });

  @override
  State<TextDropdownButton<T>> createState() => _TextDropdownButtonState<T>();
}
class AvesOutlinedButton extends StatelessWidget {
  final Widget? icon;
  final String label;
  final VoidCallback? onPressed;

  const AvesOutlinedButton({
    super.key,
    this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final foreground = WidgetStateProperty.resolveWith<Color>((states) {
      return states.contains(WidgetState.disabled)
          ? theme.disabledColor
          : theme.colorScheme.onSurface;
    });
    final style = ButtonStyle(
      foregroundColor: foreground,
      iconColor: foreground,
      side: WidgetStateProperty.resolveWith<BorderSide>((states) {
        return BorderSide(
          color: states.contains(WidgetState.disabled)
              ? theme.disabledColor
              : theme.colorScheme.primary,
        );
      }),
    );
    return icon != null
        ? OutlinedButton.icon(
            onPressed: onPressed,
            style: style,
            icon: icon!,
            label: Text(label),
          )
        : OutlinedButton(
            onPressed: onPressed,
            style: style,
            child: Text(label),
          );
  }
}
class OutlinedText extends StatelessWidget {
  final List<TextSpan> textSpans;
  final double outlineWidth;
  final Color outlineColor;
  final double outlineBlurSigma;
  final TextAlign? textAlign;
  final bool? softWrap;
  final TextOverflow? overflow;
  final int? maxLines;

  static const widgetSpanAlignment = PlaceholderAlignment.middle;

  const OutlinedText({
    super.key,
    required this.textSpans,
    double? outlineWidth,
    Color? outlineColor,
    double? outlineBlurSigma,
    this.textAlign,
    this.softWrap,
    this.overflow,
    this.maxLines,
  }) : outlineWidth = outlineWidth ?? 1,
       outlineColor = outlineColor ?? Colors.black,
       outlineBlurSigma = outlineBlurSigma ?? 0;

  @override
  Widget build(BuildContext context) {
    // TODO TLAD [subtitles] fix background area for mixed alphabetic-ideographic text
    // as of Flutter v3.10.0, the area computed for `backgroundColor` has inconsistent height
    // in case .
    // Possible workarounds would be to use metrics from:
    // - `TextPainter.getBoxesForSelection`
    // - `Paragraph.getBoxesForRange`
    // and paint the background at the bottom of the `Stack`

    final hasOutline = outlineWidth > 0;

    Widget? outline;
    if (hasOutline) {
      outline = Text.rich(
        TextSpan(children: textSpans.map(_toStrokeSpan).toList()),
        textAlign: textAlign,
        softWrap: softWrap,
        overflow: overflow,
        maxLines: maxLines,
      );
      if (outlineBlurSigma > 0) {
        outline = ImageFiltered(
          imageFilter: ImageFilter.blur(
            sigmaX: outlineBlurSigma,
            sigmaY: outlineBlurSigma,
          ),
          child: outline,
        );
      }
    }

    final fill = Text.rich(
      TextSpan(
        children: hasOutline ? textSpans.map(_toFillSpan).toList() : textSpans,
      ),
      textAlign: textAlign,
      softWrap: softWrap,
      overflow: overflow,
      maxLines: maxLines,
    );

    return Stack(children: [?outline, fill]);
  }

  TextSpan _toStrokeSpan(TextSpan span) => TextSpan(
    text: span.text,
    children: span.children,
    style: (span.style ?? const TextStyle()).copyWith(
      foreground: Paint()
        ..style = PaintingStyle.stroke
        ..color = outlineColor
        ..strokeWidth = outlineWidth,
    ),
  );

  TextSpan _toFillSpan(TextSpan span) => TextSpan(
    text: span.text,
    children: span.children,
    style: (span.style ?? const TextStyle()).copyWith(
      backgroundColor: Colors.transparent,
      shadows: [],
    ),
  );
}
class HighlightTitle extends StatelessWidget {
  final String title;
  final Color? color;
  final double fontSize;
  final bool enabled;
  final bool showHighlight;

  const HighlightTitle({
    super.key,
    required this.title,
    this.color,
    this.fontSize = 18,
    this.enabled = true,
    this.showHighlight = true,
  });

  static const disabledColor = Colors.grey;

  static List<Shadow> shadows(BuildContext context) => [
    Shadow(
      color: Theme.of(context).isDark ? Colors.black : Colors.white,
      offset: const Offset(0, 1),
      blurRadius: 2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      shadows: shadows(context),
      fontSize: fontSize,
      letterSpacing: canHaveLetterSpacing(context.locale) ? 1 : 0,
      fontFeatures: const [FontFeature.enable('smcp')],
    );

    final colors = context.watch<AvesColorsData>();
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        decoration:
            showHighlight &&
                context.select<Settings, bool>(
                  (v) => v.themeColorMode == AvesThemeColorMode.polychrome,
                )
            ? HighlightDecoration(
                color: enabled
                    ? color ?? colors.fromString(title)
                    : disabledColor,
              )
            : null,
        margin: const EdgeInsets.symmetric(vertical: 4.0),
        child: OutlinedText(
          textSpans: [TextSpan(text: title, style: style)],
          outlineColor: Themes.firstLayerColor(context),
          softWrap: false,
          overflow: TextOverflow.fade,
          maxLines: 1,
        ),
      ),
    );
  }
}
class _TextDropdownButtonState<T> extends State<TextDropdownButton<T>> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<T>(
      isExpanded: widget.isExpanded,
      itemHeight: widget.itemHeight,
      dropdownColor: widget.dropdownColor,
      padding: widget.padding,
      underline: widget.underline,
      value: widget.value,
      onChanged: widget.onChanged,
      items: widget.values.map((value) {
        return DropdownMenuItem<T>(
          value: value,
          child: Text(widget.valueText(value)),
        );
      }).toList(),
    );
  }
}