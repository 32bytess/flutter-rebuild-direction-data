// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  final List<String> items;
  final Set<String> visibleItems;
  final ItemWidgetBuilder leading;
  final ItemWidgetBuilder title;

  GeneratedWidget({super.key})
    : items = fixtureItems(),
      visibleItems = fixtureVisibleItems(),
      leading = _defaultLeading,
      title = _defaultTitle;

  static Widget _defaultLeading(String item) => Icon(Icons.label);
  static Widget _defaultTitle(String item) => Text(item);

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _ItemRow extends StatelessWidget {
  final String filter;
  final bool visible;
  final Widget leading;
  final Widget title;
  final bool useTvLayout;
  final VoidCallback onPressed;
  final String hideTooltip;
  final String showTooltip;

  _ItemRow({
    required this.filter,
    required this.visible,
    required this.leading,
    required this.title,
    required this.useTvLayout,
    required this.onPressed,
    required this.hideTooltip,
    required this.showTooltip,
  }) : super(key: ValueKey(filter));

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: visible ? 1 : .4,
      child: ListTile(
        leading: leading,
        title: title,
        trailing: IconButton(
          icon: Icon(visible ? AIcons.hide : AIcons.show),
          onPressed: onPressed,
          tooltip: visible ? hideTooltip : showTooltip,
        ),
        onTap: useTvLayout ? onPressed : null,
      ),
    );
  }
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  late double mqPaddingBottom;
  late Widget child;

  Set<String> get visibleItems => widget.visibleItems;

  @override
  void initState() {
    super.initState();
    settings = settingsValue;
    mqPaddingBottom = fixtureMqPaddingBottom;
    child = fixtureChild;
  }

  @override
  Widget build(BuildContext context) {
    return ReorderableListView.builder(
      padding: EdgeInsets.only(bottom: mqPaddingBottom),
      itemBuilder: (context, index) {
        final filter = widget.items[index];
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

        return _ItemRow(
          filter: filter,
          visible: visible,
          leading: widget.leading(filter),
          title: widget.title(filter),
          useTvLayout: settings.useTvLayout,
          onPressed: onPressed,
          hideTooltip: context.l10n.hideTooltip,
          showTooltip: context.l10n.showTooltip,
        );
      },
      itemCount: widget.items.length,
      onReorder: (oldIndex, newIndex) {
        setState(() {
          if (oldIndex < newIndex) newIndex -= 1;
          widget.items.insert(newIndex, widget.items.removeAt(oldIndex));
        });
      },
    );
  }
}