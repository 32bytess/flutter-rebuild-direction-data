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

  Widget _buildIconWidget(ItemState state) {
    switch (state) {
      case ItemState.none:
        return const Icon(Icons.arrow_forward_ios);
      case ItemState.running:
        return const Icon(Icons.more_horiz);
      case ItemState.success:
        return const Icon(Icons.check, color: Colors.green);
      case ItemState.failure:
        return const Icon(Icons.close, color: Colors.red);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // isThreeLine: _summary != null,
      leading: SizedBox(
        child: IconButton(
          icon: _buildIconWidget(_item.state),

          onPressed: null, // null disables the button
        ),
      ),
      title: Text(_item.name),
      subtitle: _summary != null ? Text(_summary!) : null,
      onTap: _onTap,
    );
  }
}