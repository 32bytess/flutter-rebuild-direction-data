// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late Controller controller;

  @override
  void initState() {
    super.initState();
    controller = Controller();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Offstage(
            offstage: !controller.loading.value,
            child: Container(
              constraints: const BoxConstraints.expand(),
              color: const Color(0xffffffff).withValues(alpha: 0.8),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      strokeWidth: 3.2,
                      color: Color(0xff707177),
                      semanticsValue: 'Loading logs, please wait...',
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 20, 30, 80),
                      child: Text(
                        'Loading logs, please wait...',
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
          ),
        ),
      ],
    );
  }
}