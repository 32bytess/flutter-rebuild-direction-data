// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late bool isDrag;

  Offset? _startPoint;

  Offset? _preFocalPoint;

  late Offset _curDeltaOffset;

  late Offset _totDeltaOffset;

  late double _totDeltaScale;

  @override
  void initState() {
    super.initState();
    isDrag = fixtureIsDrag;
    _startPoint = null;
    _preFocalPoint = null;
    _curDeltaOffset = fixtureZeroOffset;
    _totDeltaOffset = fixtureZeroOffset;
    _totDeltaScale = fixtureTotDeltaScale;
    onRefreshArguments();
  }

  void onRefreshArguments() {}

  void _handleOnScaleStart(ScaleStartDetails details) {
    isDrag = false;

    _startPoint = details.focalPoint;
    _preFocalPoint = _startPoint;
    _curDeltaOffset = Offset(0.0, 0.0);
    _totDeltaOffset = Offset(0.0, 0.0);
    _totDeltaScale = 1.0;
  }

  void _handleOnScaleUpdate(ScaleUpdateDetails details) {
    // pre focus point
    Offset? preFocalPoint = _preFocalPoint ?? _startPoint;
    if (preFocalPoint == null) {
      _preFocalPoint = details.focalPoint;
      return;
    }
    if (_totDeltaOffset.dy < 0) return;
    // current offset
    _curDeltaOffset = details.focalPoint - preFocalPoint;
    if ((_totDeltaScale == 1) &&
        ((_curDeltaOffset.dx.abs() >= 2) ||
            ((_curDeltaOffset.dy >= -5) && (_curDeltaOffset.dy <= 5)))) {
      return;
    }
    if ((_curDeltaOffset.dy >= -2) && (_curDeltaOffset.dy <= 2)) return;
    // drag start
    isDrag = true;
    // total scale
    if (_curDeltaOffset.dy < -2) {
      _totDeltaScale += 0.005;
    } else {
      _totDeltaScale -= 0.005;
    }
    if (_totDeltaScale < 0.3) _totDeltaScale = 0.3;
    if (_totDeltaScale > 1) _totDeltaScale = 1;
    // total offset
    _totDeltaOffset += _curDeltaOffset;
    // refresh view
    setState(() {});
    // save pre focus focus
    _preFocalPoint = details.focalPoint;
  }

  void _handleOnScaleEnd(ScaleEndDetails details) {
    if (_totDeltaOffset.dy >= 100.0) {
      return;
    }
    _startPoint = null;
    _preFocalPoint = null;
    _curDeltaOffset = Offset(0.0, 0.0);
    _totDeltaOffset = Offset(0.0, 0.0);
    _totDeltaScale = 1.0;
    setState(() {});
    isDrag = false;
  }

  Widget _transform() {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(0),
            child: Transform.translate(
              offset: _totDeltaOffset,
              child: Transform.scale(
                scale: _totDeltaScale,
                origin: _totDeltaOffset,
                child: SizedBox.shrink(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {},
                onScaleStart: _handleOnScaleStart,
                onScaleUpdate: _handleOnScaleUpdate,
                onScaleEnd: _handleOnScaleEnd,
                child: _transform(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
abstract class BaseStateFulWidgetState<T extends StatefulWidget>
    extends State<T> {
  // will rebuild views after onRefreshArguments call
  @protected
  void onRefreshArguments();

  // @override
  // State createState() {
  //   return super.createState();
  // }

  @override
  void initState() {
    super.initState();
    onRefreshArguments();
  }

  // @override
  // Widget build(BuildContext context) {
  //   return super.build(context);
  // }

  @override
  void didUpdateWidget(covariant T oldWidget) {
    super.didUpdateWidget(oldWidget);
    onRefreshArguments();
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  void activate() {
    super.activate();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) super.setState(fn);
  }
}