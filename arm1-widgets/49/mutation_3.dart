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

  IconData? _iconFor(ItemState state) {
    switch (state) {
      case ItemState.none:
        return Icons.arrow_forward_ios;
      case ItemState.running:
        return Icons.more_horiz;
      case ItemState.success:
        return Icons.check;
      case ItemState.failure:
        return Icons.close;
    }
  }

  Color? _colorFor(ItemState state) {
    switch (state) {
      case ItemState.success:
        return Colors.green;
      case ItemState.failure:
        return Colors.red;
      default:
        return null;
    }
  }

  Widget _buildLeading() {
    return SizedBox(
      child: IconButton(
        icon: Icon(_iconFor(_item.state), color: _colorFor(_item.state)),
        onPressed: null, // null disables the button
      ),
    );
  }

  Widget _buildTitle() {
    return Text(_item.name);
  }

  Widget? _buildSubtitle() {
    return _summary != null ? Text(_summary!) : null;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // isThreeLine: _summary != null,
      leading: _buildLeading(),
      title: _buildTitle(),
      subtitle: _buildSubtitle(),
      onTap: _onTap,
    );
  }
}