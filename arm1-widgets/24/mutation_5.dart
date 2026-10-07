// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late EntryBackground current;
  late Widget child;

  @override
  void initState() {
    super.initState();
    settings = settingsValue;
    current = fixtureCurrentBackground;
    child = fixtureChild;
  }

  String title(BuildContext context) => context.l10n.settingsImageBackground;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title(context)),
      trailing: EntryBackgroundSelector(
        getter: () => current,
        setter: (value) => settings.imageBackground = value,
      ),
    );
  }
}
class EntryBackgroundSelector extends StatefulWidget {
  final ValueGetter<EntryBackground> getter;
  final ValueSetter<EntryBackground> setter;

  const EntryBackgroundSelector({
    super.key,
    required this.getter,
    required this.setter,
  });

  @override
  State<EntryBackgroundSelector> createState() =>
      _EntryBackgroundSelectorState();
}
class _EntryBackgroundSelectorState extends State<EntryBackgroundSelector> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<EntryBackground>(
        items: [
          EntryBackground.white,
          EntryBackground.black,
          EntryBackground.checkered,
        ].map((selected) {
          return DropdownMenuItem<EntryBackground>(
            value: selected,
            child: _EntryBackgroundOption(value: selected),
          );
        }).toList(),
        value: widget.getter(),
        onChanged: (selected) {
          if (selected != null) {
            widget.setter(selected);
            setState(() {});
          }
        },
      ),
    );
  }
}
class _EntryBackgroundOption extends StatelessWidget {
  final EntryBackground value;

  const _EntryBackgroundOption({required this.value});

  @override
  Widget build(BuildContext context) {
    return ColorIndicator(
      value: value.isColor ? value.color : null,
      child: value == EntryBackground.checkered
          ? const _CheckeredIndicator()
          : null,
    );
  }
}
class _CheckeredIndicator extends StatelessWidget {
  const _CheckeredIndicator();

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: CustomPaint(
        painter: CheckeredPainter(checkSize: ColorIndicator.radius),
      ),
    );
  }
}
class ColorIndicator extends StatelessWidget {
  static const double radius = 12.0;
  final Color? value;
  final Widget? child;

  const ColorIndicator({super.key, this.value, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        color: value,
        shape: BoxShape.circle,
      ),
      child: child,
    );
  }
}