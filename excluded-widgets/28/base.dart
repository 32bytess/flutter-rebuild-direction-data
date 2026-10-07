// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late bool _loading;

  @override
  void initState() {
    super.initState();
    _loading = fixtureLoading;
  }

  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: !_loading,
      child: Container(
        constraints: const BoxConstraints.expand(),
        color: const Color(0xffffffff).withValues(alpha: 0.8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                strokeWidth: 3.2,
                color: const Color(0xff707177),
                semanticsValue: 'Webview_Loading',
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 20, 30, 80),
                child: Text(
                  'Webview_Loading',
                  style: TextStyle(
                    color: Color(0xff707177),
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.5,
                    fontSize: 14.0,
                  ),
                ),
              ),
              SizedBox(width: double.infinity, height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
