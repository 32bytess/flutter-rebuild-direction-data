// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late EntryBackground _value;

  @override
  void initState() {
    super.initState();
    _value = EntryBackground.white;
  }

  List<DropdownMenuItem<EntryBackground>> _buildItems(BuildContext context) {
    return [
      EntryBackground.white,
      EntryBackground.black,
      EntryBackground.checkered,
    ].map((selected) {
      return DropdownMenuItem<EntryBackground>(
        value: selected,
        child: ColorIndicator(
          value: selected.isColor ? selected.color : null,
          child: selected == EntryBackground.checkered
              ? ClipOval(
                  child: CustomPaint(
                    painter: CheckeredPainter(checkSize: ColorIndicator.radius),
                  ),
                )
              : null,
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<EntryBackground>(
        items: _buildItems(context),
        value: _value,
        onChanged: (selected) {
          if (selected != null) {
            _value = selected;
            setState(() {});
          }
        },
      ),
    );
  }
}
class ColorIndicator extends StatelessWidget {
  final Color? value;
  final Color? alternate;
  final Widget? child;

  static const double radius = 16;

  const ColorIndicator({
    super.key,
    required this.value,
    this.alternate,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    const dimension = radius * 2;

    Gradient? gradient;
    final _value = value;
    final _alternate = alternate;
    if (_value != null && _alternate != null && _alternate != _value) {
      gradient = LinearGradient(
        begin: AlignmentDirectional.topStart,
        end: AlignmentDirectional.bottomEnd,
        colors: [_value, _value, _alternate, _alternate],
        stops: const [0, .5, .5, 1],
      );
    }

    return Container(
      height: dimension,
      width: dimension,
      decoration: BoxDecoration(
        color: _value,
        border: AvesBorder.border(context),
        gradient: gradient,
        shape: BoxShape.circle,
      ),
      child: child,
    );
  }
}
