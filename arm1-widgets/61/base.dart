// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class Selector<A, S> extends StatelessWidget {
  final S Function(BuildContext, A) selector;
  final Widget Function(BuildContext, S, Widget?) builder;

  const Selector({super.key, required this.selector, required this.builder});

  @override
  Widget build(BuildContext context) {
    final S value = 0.0 as S;
    return builder(context, value, null);
  }
}
class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late List<String> _items;
  late Set<String> _visibleItems;

  Set<String> get visibleItems => _visibleItems;

  @override
  void initState() {
    super.initState();
    settings = settingsValue;
    _items = fixtureItems();
    _visibleItems = fixtureVisibleItems();
  }

  Widget _leading(String item) => const Icon(Icons.label);
  Widget _title(String item) => Text(item);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (!settings.useTvLayout) ...[
          const DrawerEditorBanner(),
          const Divider(height: 0),
        ],
        Flexible(
          child: Selector<MediaQueryData, double>(
            selector: (context, mq) => mq.effectiveBottomPadding,
            builder: (context, mqPaddingBottom, child) {
              // `ReorderableListView` does not automatically pad
              // for `MediaQuery` insets, like regular `ListView`
              return ReorderableListView.builder(
                padding: EdgeInsets.only(bottom: mqPaddingBottom),
                itemBuilder: (context, index) {
                  final filter = _items[index];
                  final visible = visibleItems.contains(filter);
                  void onPressed() {
                    setState(() {
                      if (visible) {
                        visibleItems.remove(filter);
                      } else {
                        visibleItems.add(filter);
                      }
                    });
                  }

                  return Opacity(
                    key: ValueKey(filter),
                    opacity: visible ? 1 : .4,
                    child: ListTile(
                      leading: _leading(filter),
                      title: _title(filter),
                      trailing: IconButton(
                        icon: Icon(visible ? AIcons.hide : AIcons.show),
                        onPressed: onPressed,
                        tooltip: visible
                            ? context.l10n.hideTooltip
                            : context.l10n.showTooltip,
                      ),
                      onTap: settings.useTvLayout ? onPressed : null,
                    ),
                  );
                },
                itemCount: _items.length,
                onReorder: (oldIndex, newIndex) {
                  setState(() {
                    if (oldIndex < newIndex) newIndex -= 1;
                    _items.insert(newIndex, _items.removeAt(oldIndex));
                  });
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
class DrawerFixedListTab<T> extends StatefulWidget {
  final List<T> items;
  final Set<T> visibleItems;
  final ItemWidgetBuilder<T> leading;
  final ItemWidgetBuilder<T> title;

  const DrawerFixedListTab({
    super.key,
    required this.items,
    required this.visibleItems,
    required this.leading,
    required this.title,
  });

  @override
  State<DrawerFixedListTab<T>> createState() => _DrawerFixedListTabState<T>();
}
class _DrawerFixedListTabState<T> extends State<DrawerFixedListTab<T>> {
  @override
  Widget build(BuildContext context) => const SizedBox.shrink();
}
class DrawerEditorBanner extends StatelessWidget {
  const DrawerEditorBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const FontSizeIconTheme(child: Icon(AIcons.info)),
          const SizedBox(width: 16),
          Expanded(child: Text(context.l10n.settingsNavigationDrawerBanner)),
        ],
      ),
    );
  }
}
class FontSizeIconTheme extends StatelessWidget {
  final Widget child;

  const FontSizeIconTheme({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final textScaler = MediaQuery.textScalerOf(context);
    final iconTheme = IconTheme.of(context);
    return IconTheme(
      data: iconTheme.copyWith(size: textScaler.scale(iconTheme.size!)),
      child: child,
    );
  }
}
