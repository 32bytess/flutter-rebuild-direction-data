// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'package:flutter/material.dart';
import 'dart:math';
part 'dependencies.dart';


class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  late final String path;
  late final void Function(int) popLocations;

  @override
  void initState() {
    super.initState();
    path = fixturePath;
    popLocations = fixturePopLocations;
    _scrollController = fixtureScrollController;
  }

  late ScrollController _scrollController;

  List<String> _getSegments() {
    return [
      "All",
    ].followedBy(splitPath(path).where((s) => s.isNotEmpty)).toList();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> segments = _getSegments();
    final breadcrumbs = segments.asMap().entries.map((entry) {
      final int index = entry.key;
      final String value = entry.value;
      final style = index == segments.length - 1
          ? TextStyle(color: Theme.of(context).colorScheme.primary)
          : null;
      return Breadcrumb(
        name: value,
        style: style,
        onTap: () {
          /* spm: non-rebuild body erased */
        },
      );
    });
    List<Widget> children = breadcrumbs
        .expand((breadcrumb) => [const Chevron(), breadcrumb])
        .skip(1)
        .toList();
    return SizedBox(
      height: 24,
      child: ScrollConfiguration(
        behavior: BreadcrumbsScrollBehavior(),
        child: SingleChildScrollView(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          child: Row(children: children),
        ),
      ),
    );
  }
}

class Breadcrumb extends StatelessWidget {
  final String name;
  final TextStyle? style;
  final void Function() onTap;

  const Breadcrumb({
    Key? key,
    required this.name,
    required this.onTap,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(name, style: style),
    );
  }
}

class Chevron extends StatelessWidget {
  const Chevron({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color? chevronColor = Theme.of(context).textTheme.bodySmall?.color;
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 2, 4, 0),
      child: Icon(Icons.chevron_right, color: chevronColor, size: 16),
    );
  }
}

class BreadcrumbsScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return child;
  }
}
