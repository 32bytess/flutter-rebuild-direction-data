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
    return SizedBox(
      width: 640.wmax,
      height: height,
      child: _ViewerWrapper(
        child: _PaddedContent(
          child: _SelectableTextContent(text: controller.string.value),
        ),
      ),
    );
  }
}

class _ViewerWrapper extends StatelessWidget {
  final Widget child;

  const _ViewerWrapper({required this.child});

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      minScale: 1.0,
      maxScale: 5.0,
      constrained: false,
      child: child,
    );
  }
}

class _PaddedContent extends StatelessWidget {
  final Widget child;

  const _PaddedContent({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 5.vp,
        left: 5.vp,
        right: 5.vp,
        bottom: 20.vp,
      ),
      child: child,
    );
  }
}

class _SelectableTextContent extends StatelessWidget {
  final String text;

  const _SelectableTextContent({required this.text});

  @override
  Widget build(BuildContext context) {
    return TextSelectionTheme(
      data: TextSelectionThemeData(
        selectionColor: Color(0xff6750a4).withValues(alpha: 0.28),
        selectionHandleColor: Color(0xff6750a4).withValues(alpha: 0.28),
      ),
      child: SelectableText(
        text,
        style: GoogleFonts.robotoMono(
          color: Color(0xff303133),
          fontWeight: FontWeight.w400,
          fontSize: 11.fp,
          height: 1.4,
        ),
      ),
    );
  }
}