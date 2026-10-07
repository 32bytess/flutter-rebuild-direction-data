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
    return ListTile(
      // isThreeLine: _summary != null,
      leading: SizedBox(
        child: IconButton(
          icon: Icon(
            _item.state == ItemState.none
                ? Icons.arrow_forward_ios
                : _item.state == ItemState.running
                    ? Icons.more_horiz
                    : _item.state == ItemState.success
                        ? Icons.check
                        : Icons.close,
            color: _item.state == ItemState.success
                ? Colors.green
                : _item.state == ItemState.failure
                    ? Colors.red
                    : null,
          ),
          onPressed: null, // null disables the button
        ),
      ),
      title: Text(_item.name),
      subtitle: _summary != null ? Text(_summary!) : null,
      onTap: _onTap,
    );
  }
}