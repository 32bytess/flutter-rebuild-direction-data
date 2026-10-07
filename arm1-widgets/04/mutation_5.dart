// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late ReviewBatchState state;

  @override
  void initState() {
    super.initState();
    state = fixtureReviewBatchState;
  }

  @override
  Widget build(BuildContext context) {
    return _ReviewPadding(state: state);
  }
}

class _ReviewPadding extends StatelessWidget {
  final ReviewBatchState state;
  const _ReviewPadding({required this.state});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: _ReviewCenter(state: state),
    );
  }
}

class _ReviewCenter extends StatelessWidget {
  final ReviewBatchState state;
  const _ReviewCenter({required this.state});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _ReviewIndexLabel(state: state),
    );
  }
}

class _ReviewIndexLabel extends StatelessWidget {
  final ReviewBatchState state;
  const _ReviewIndexLabel({required this.state});

  @override
  Widget build(BuildContext context) {
    return Text(
      '${state.currentIndex + 1}/${state.walls.length}',
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}