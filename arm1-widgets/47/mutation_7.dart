// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late final ValueNotifier<bool> _isFavouriteNotifier;
  late final Set<AvesEntry> entries;
  late final bool enabled;

  @override
  void initState() {
    super.initState();
    favourites = favouritesValue;
    _isFavouriteNotifier = makeBoolNotifier();
    entries = fixtureEntries();
    enabled = fixtureEnabled;
    favourites.addListener(_onChanged);
    _onChanged();
  }

  @override
  void didUpdateWidget(covariant GeneratedWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    _onChanged();
  }

  @override
  void dispose() {
    favourites.removeListener(_onChanged);
    _isFavouriteNotifier.dispose();
    super.dispose();
  }

  void _onChanged() {
    _isFavouriteNotifier.value =
        entries.isNotEmpty && entries.every((entry) => entry.isFavourite);
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _isFavouriteNotifier,
      builder: (context, isFavourite, child) {
        final text = isFavourite
            ? context.l10n.entryActionRemoveFavourite
            : context.l10n.entryActionAddFavourite;
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CaptionedButtonText(text: text, enabled: enabled),
            CaptionedButtonText(text: text, enabled: enabled),
            CaptionedButtonText(text: text, enabled: enabled),
            CaptionedButtonText(text: text, enabled: enabled),
          ],
        );
      },
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

    return Text(
      text,
      style: style,
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
    );
  }
}