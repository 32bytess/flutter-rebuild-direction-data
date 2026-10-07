// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'package:flutter/material.dart';
part 'dependencies.dart';


class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  GeneratedWidget.fixture({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  late WidgetRef ref;

  @override
  void initState() {
    super.initState();
    t = tValue;
    ref = fixtureRef;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(28),
            topRight: Radius.circular(28),
          ),
          color: Theme.of(context).dialogBackgroundColor,
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.sort_rounded,
                          color: Theme.of(context).colorScheme.secondary,
                          size: 24,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          t.bookmarks.filterSort,
                          style: const TextStyle(fontSize: 24),
                        ),
                        const SizedBox(height: 8),
                        SectionLabel(
                          label: t.bookmarks.readStatus,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 0,
                            vertical: 16,
                          ),
                        ),
                        SegmentedButtonSlide(
                          entries: [
                            SegmentedButtonSlideEntry(label: t.bookmarks.all),
                            SegmentedButtonSlideEntry(
                              label: t.bookmarks.unread,
                            ),
                            SegmentedButtonSlideEntry(label: t.bookmarks.read),
                          ],
                          selectedEntry: ref
                              .watch(bookmarksProvider)
                              .readStatus
                              .index,
                          onChange: (v) {
                            /* spm: non-rebuild body erased */
                          },
                          colors: SegmentedButtonSlideColors(
                            barColor: Theme.of(
                              context,
                            ).colorScheme.primary.withOpacity(0.2),
                            backgroundSelectedColor: Theme.of(
                              context,
                            ).colorScheme.primary,
                            foregroundSelectedColor: Theme.of(
                              context,
                            ).colorScheme.onPrimary,
                            foregroundUnselectedColor: Theme.of(
                              context,
                            ).colorScheme.onSurface,
                            hoverColor: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          /* spm: non-rebuild body erased */
                        },
                        child: Text(t.generic.close),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SectionLabel extends StatelessWidget {
  final String label;
  final EdgeInsets? padding;

  const SectionLabel({Key? key, required this.label, this.padding})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: padding ?? const EdgeInsets.all(16),
          child: Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}

























// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
