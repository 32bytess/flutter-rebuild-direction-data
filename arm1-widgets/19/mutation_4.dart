// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dart:math';
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
    final mediaPadding = controller.mediaPadding;
    final mediaTopBar = controller.mediaTopBar;
    final mediaTop = mediaPadding.value.top;
    final header = max(40.vp, mediaTopBar.value);
    final offset = max(mediaTop, 20.vp);
    final height = 100.vh - offset - header;
    final items = <String>[controller.string.value];
    return SizedBox(
      width: 640.wmax,
      height: height,
      child: InteractiveViewer(
        minScale: 1.0,
        maxScale: 5.0,
        constrained: false,
        child: Container(
          padding: EdgeInsets.only(
            top: 5.vp,
            left: 5.vp,
            right: 5.vp,
            bottom: 20.vp,
          ),
          child: TextSelectionTheme(
            data: TextSelectionThemeData(
              selectionColor: Color(0xff6750a4).withValues(alpha: 0.28),
              selectionHandleColor: Color(0xff6750a4).withValues(alpha: 0.28),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: items
                  .map(
                    (text) => SelectableText(
                      text,
                      style: GoogleFonts.robotoMono(
                        color: Color(0xff303133),
                        fontWeight: FontWeight.w400,
                        fontSize: 11.fp,
                        height: 1.4,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}