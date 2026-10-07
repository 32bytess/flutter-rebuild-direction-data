// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({Key? key}) : super(key: key);

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late Item _item;
  late String? _summary;

  @override
  void initState() {
    super.initState();
    _item = fixtureItem;
    _summary = fixtureSummary;
  }

  void _onTap() {
    //print(_item.route);
    //Navigator.pushNamed(context, _item.route);
  }

  @override
  Widget build(BuildContext context) {
    IconData? icon;
    Color? color;
    switch (_item.state) {
      case ItemState.none:
        icon = Icons.arrow_forward_ios;
        break;
      case ItemState.running:
        icon = Icons.more_horiz;
        break;
      case ItemState.success:
        icon = Icons.check;
        color = Colors.green;
        break;
      case ItemState.failure:
        icon = Icons.close;
        color = Colors.red;
        break;
    }
    return ListTile(
      // isThreeLine: _summary != null,
      leading: _LeadingIcon(icon: icon, color: color),
      title: _ItemTitle(name: _item.name),
      subtitle: _summary != null ? _ItemSubtitle(summary: _summary!) : null,
      onTap: _onTap,
    );
  }
}

class _LeadingIcon extends StatelessWidget {
  final IconData? icon;
  final Color? color;

  const _LeadingIcon({this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: IconButton(
        icon: Icon(icon, color: color),
        onPressed: null, // null disables the button
      ),
    );
  }
}

class _ItemTitle extends StatelessWidget {
  final String name;

  const _ItemTitle({required this.name});

  @override
  Widget build(BuildContext context) => Text(name);
}

class _ItemSubtitle extends StatelessWidget {
  final String summary;

  const _ItemSubtitle({required this.summary});

  @override
  Widget build(BuildContext context) => Text(summary);
}