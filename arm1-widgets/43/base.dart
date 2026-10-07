// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late WidgetOutline _outline;
  late Device device;
  late Map<Brightness, Map<WidgetOutline, Color?>> outlineColorsByBrightness;

  @override
  void initState() {
    super.initState();
    _outline = WidgetOutline.none;
    device = Device();
    outlineColorsByBrightness = fixtureOutlineColorsByBrightness();
  }

  List<DropdownMenuItem<WidgetOutline>> _buildItems(BuildContext context) {
    return supportedWidgetOutlines.map((selected) {
      final lightColors = outlineColorsByBrightness[Brightness.light];
      final darkColors = outlineColorsByBrightness[Brightness.dark];
      return DropdownMenuItem<WidgetOutline>(
        value: selected,
        child: ColorIndicator(
          value: lightColors?[selected],
          alternate: darkColors?[selected],
          child: lightColors?[selected] == null
              ? const Icon(AIcons.clear)
              : null,
        ),
      );
    }).toList();
  }

  List<WidgetOutline> get supportedWidgetOutlines => [
    WidgetOutline.none,
    WidgetOutline.black,
    WidgetOutline.white,
    WidgetOutline.systemBlackAndWhite,
    WidgetOutline.systemBlackAndWhiteHighContrast,
    if (device.isDynamicColorAvailable) ...[
      WidgetOutline.systemDynamicLowContrast,
      WidgetOutline.systemDynamic,
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<WidgetOutline>(
        items: _buildItems(context),
        value: _outline,
        onChanged: (selected) {
          _outline = selected ?? WidgetOutline.none;
          setState(() {});
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
