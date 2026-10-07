// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late RelativeRect position;

  @override
  void initState() {
    super.initState();
    position = fixturePosition;
  }

  TextStyle style = TextStyle(color: Colors.red);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: GestureDetector(
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.transparent,
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.cyan.withOpacity(0.5),
                    margin: EdgeInsets.only(top: 80),
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'position.bottom:: ${position.bottom}',
                          style: style,
                        ),
                        Text('position.top:: ${position.top}', style: style),
                        Text('position.left:: ${position.left}', style: style),
                        Text(
                          'position.right:: ${position.right}',
                          style: style,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              child: GestureDetector(
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  color: Colors.amber,
                  child: Text('child', style: style),
                ),
                onTap: () {
                  // Click event for child
                  Navigator.of(context).pop();
                },
              ),
              top: position.top,
              right: position.right,
            ),
          ],
        ),
        onTap: () {
          // Click event for empty space
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
