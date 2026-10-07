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
    return _LoadingOverlay(offstage: !_loading);
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
        child: const Center(
          child: _LoadingColumn(),
        ),
      ),
    );
  }
}

class _LoadingColumn extends StatelessWidget {
  const _LoadingColumn();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        _LoadingIndicator(),
        _LoadingLabel(),
        _LoadingSpacer(),
      ],
    );
  }
}

class _LoadingIndicator extends StatelessWidget {
  const _LoadingIndicator();

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      strokeWidth: 3.2,
      color: const Color(0xff707177),
      semanticsValue: 'Webview_Loading',
    );
  }
}

class _LoadingLabel extends StatelessWidget {
  const _LoadingLabel();

  @override
  Widget build(BuildContext context) {
    return const Padding(
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