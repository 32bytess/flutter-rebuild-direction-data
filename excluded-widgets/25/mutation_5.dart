// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class _LoadingIndicator extends StatelessWidget {
  const _LoadingIndicator();

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      strokeWidth: 3.2,
      color: Color(0xff707177),
      semanticsValue: 'Loading logs, please wait...',
    );
  }
}

class _LoadingMessage extends StatelessWidget {
  const _LoadingMessage();

  @override
  Widget build(BuildContext context) {
    return const Padding(
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
    );
  }
}

class _LoadingSpacer extends StatelessWidget {
  const _LoadingSpacer();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(width: double.infinity, height: 80);
  }
}

class _LoadingColumn extends StatelessWidget {
  const _LoadingColumn();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _LoadingIndicator(),
          _LoadingMessage(),
          _LoadingSpacer(),
        ],
      ),
    );
  }
}

class _LoadingOverlay extends StatelessWidget {
  const _LoadingOverlay({required this.offstage});

  final bool offstage;

  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: offstage,
      child: Container(
        constraints: const BoxConstraints.expand(),
        color: const Color(0xffffffff).withValues(alpha: 0.8),
        child: const _LoadingColumn(),
      ),
    );
  }
}

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
          child: _LoadingOverlay(offstage: !controller.loading.value),
        ),
      ],
    );
  }
}