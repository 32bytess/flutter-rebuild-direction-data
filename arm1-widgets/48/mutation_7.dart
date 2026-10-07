// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late String _label;
  late String _value;
  late bool _isVisible;

  @override
  void initState() {
    super.initState();
    _label = fixtureLabel;
    _value = fixtureValue;
    _isVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BBText(
          _label,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: 4),
        Wrap(
          spacing: 4,
          runSpacing: 4,
          children: [
            BBText(
              _isVisible ? _value : '••••••••••••••••••••••••••••••••',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
                fontFamily: _isVisible ? null : 'monospace',
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _isVisible = !_isVisible;
                });
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  BBText(
                    _isVisible ? 'Hide' : 'Show',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Icon(
                    _isVisible ? Icons.visibility_off : Icons.visibility,
                    size: 16,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Clipboard.setData(ClipboardData(text: _value));
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Copied $_label'),
                    duration: const Duration(seconds: 2),
                  ),
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  BBText(
                    'Copy',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Icon(
                    Icons.copy,
                    size: 16,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        BBText(
          _label,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: 4),
        BBText(
          _isVisible ? _value : '••••••••••••••••••••••••••••••••',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
            fontFamily: _isVisible ? null : 'monospace',
          ),
        ),
      ],
    );
  }
}
class BBText extends StatelessWidget {
  const BBText(
    this.text, {
    super.key,
    required this.style,
    this.maxLines,
    this.color,
    this.textAlign,
    this.overflow,
  });

  final String text;
  final int? maxLines;
  final TextStyle? style;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    final effectiveStyle = style?.copyWith(color: color);

    if (maxLines == null) {
      return Text(
        text,
        style: effectiveStyle,
        textAlign: textAlign,
        softWrap: true,
        overflow: overflow,
      );
    }

    return Text(
      text,
      style: effectiveStyle,
      maxLines: maxLines,
      textAlign: textAlign,
      softWrap: true,
      overflow: overflow,
    );
  }
}