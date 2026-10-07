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

  Widget buildContent(BuildContext context) {
    return Builder(
      builder: (context) {
        final mediaPadding = controller.mediaPadding;
        final mediaTopBar = controller.mediaTopBar;
        final mediaTop = mediaPadding.value.top;

        final header = max(40.0, mediaTopBar.value);
        final offset = max(mediaTop, 20.0);
        final height = MediaQuery.of(context).size.height - offset - header;

        return SizedBox(
          width: 640.0,
          height: height,
          child: InteractiveViewer(
            minScale: 1.0,
            maxScale: 5.0,
            constrained: false,
            child: Container(
              padding: const EdgeInsets.only(
                top: 5.0,
                left: 5.0,
                right: 5.0,
                bottom: 20.0,
              ),
              child: TextSelectionTheme(
                data: TextSelectionThemeData(
                  selectionColor: Color(0xff6750a4).withValues(alpha: 0.28),
                  selectionHandleColor: Color(
                    0xff6750a4,
                  ).withValues(alpha: 0.28),
                ),
                child: SelectableText(
                  controller.string.value,
                  style: const TextStyle(
                    color: Color(0xff303133),
                    fontWeight: FontWeight.w400,
                    fontSize: 11.0,
                    height: 1.4,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget buildLoading(BuildContext context) {
    return Builder(
      builder: (context) => Positioned(
        child: Offstage(
          offstage: !controller.loading.value,
          child: Container(
            constraints: const BoxConstraints.expand(),
            color: const Color(0xffffffff).withValues(alpha: 0.8),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
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
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaPadding = controller.mediaPadding;
    final mediaTopBar = controller.mediaTopBar;
    final mediaTop = mediaPadding.value.top;
    final header = max(40.0, mediaTopBar.value);
    final offset = max(mediaTop, 20.0);
    final height = MediaQuery.of(context).size.height - offset - header;

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - height - offset,
      alignment: Alignment.center,
      child: Stack(
        fit: StackFit.expand,
        children: [buildContent(context), buildLoading(context)],
      ),
    );
  }
}