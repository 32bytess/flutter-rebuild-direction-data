// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late final ValueNotifier<TapDownDetails?> doubleTapDetails;
  late final EdgeHitDetector _hitDetector;
  late final void Function(ScaleStartDetails details, bool doubleTap)?
  _onScaleStart;
  late final GestureScaleUpdateCallback? _onScaleUpdate;
  late final GestureScaleEndCallback? _onScaleEnd;
  late final GestureTapDownCallback? _onTapDown;
  late final GestureTapUpCallback? _onTapUp;
  late final GestureLongPressCallback? _onLongPress;
  late final GestureTapDownCallback? _onDoubleTap;
  late final MagnifierDoubleTapPredicate? _allowDoubleTap;
  late final HitTestBehavior? _behavior;
  late final Widget? _child;

  @override
  void initState() {
    super.initState();
    doubleTapDetails = makeDoubleTapNotifier();
    _hitDetector = makeHitDetector();
    _onScaleStart = (details, doubleTap) {};
    _onScaleUpdate = (details) {};
    _onScaleEnd = (details) {};
    _onTapDown = (details) {};
    _onTapUp = (details) {};
    _onLongPress = () {};
    _onDoubleTap = (details) {};
    _allowDoubleTap = (localPosition) => true;
    _behavior = HitTestBehavior.translucent;
    _child = fixtureMagnifierChild;
  }

  @override
  void dispose() {
    doubleTapDetails.dispose();
    super.dispose();
  }

  void _onDoubleTapCancel() => doubleTapDetails.value = null;

  void _onDoubleTapDown(TapDownDetails details) {
    if (_allowDoubleTap?.call(details.localPosition) ?? true) {
      doubleTapDetails.value = details;
    }
  }

  @override
  Widget build(BuildContext context) {
    final gestureSettings = MediaQuery.gestureSettingsOf(context);
    final gestures = <Type, GestureRecognizerFactory>{};
    if (_onTapDown != null || _onTapUp != null) {
      gestures[TapGestureRecognizer] =
          GestureRecognizerFactoryWithHandlers<TapGestureRecognizer>(
            () => TapGestureRecognizer(debugOwner: this),
            (instance) {
              instance
                ..onTapDown = _onTapDown
                ..onTapUp = _onTapUp;
            },
          );
    }
    if (_onLongPress != null) {
      gestures[LongPressGestureRecognizer] =
          GestureRecognizerFactoryWithHandlers<LongPressGestureRecognizer>(
            () => LongPressGestureRecognizer(debugOwner: this),
            (instance) {
              instance.onLongPress = _onLongPress;
            },
          );
    }
    final scope = MagnifierGestureDetectorScope.maybeOf(context);
    if (scope != null) {
      gestures[MagnifierGestureRecognizer] =
          GestureRecognizerFactoryWithHandlers<MagnifierGestureRecognizer>(
            () => MagnifierGestureRecognizer(
              debugOwner: this,
              scope: scope,
              doubleTapDetails: doubleTapDetails,
            ),
            (instance) {
              instance
                ..hitDetector = _hitDetector
                ..onStart = _onScaleStart != null
                    ? (details) =>
                          _onScaleStart(details, doubleTapDetails.value != null)
                    : null
                ..onUpdate = _onScaleUpdate
                ..onEnd = _onScaleEnd
                ..gestureSettings = gestureSettings;
            },
          );
    }
    gestures[MagnifierDoubleTapGestureRecognizer] =
        GestureRecognizerFactoryWithHandlers<
          MagnifierDoubleTapGestureRecognizer
        >(
          () => MagnifierDoubleTapGestureRecognizer(
            debugOwner: this,
            allowDoubleTap: _allowDoubleTap ?? (_) => true,
          ),
          (instance) {
            final onDoubleTap = _onDoubleTap;
            instance
              ..onDoubleTapCancel = _onDoubleTapCancel
              ..onDoubleTapDown = _onDoubleTapDown
              ..onDoubleTap = onDoubleTap != null
                  ? () {
                      final details = doubleTapDetails.value;
                      if (details != null) {
                        onDoubleTap(details);
                        doubleTapDetails.value = null;
                      }
                    }
                  : null;
          },
        );
    return RawGestureDetector(
      gestures: gestures,
      behavior: _behavior ?? HitTestBehavior.translucent,
      child: _child,
    );
  }
}
/// When a `Magnifier` is wrapped in this inherited widget,
/// it will check whether the zoomed content has hit edges,
/// and if so, will let parent gesture detectors win the gesture arena
///
/// Useful when placing Magnifier inside a gesture sensitive context,
/// such as [PageView], [Dismissible], [BottomSheet].
class MagnifierGestureDetectorScope extends InheritedWidget {
  final List<Axis> axis;

  // in [0, 1[
  // 0: most reactive but will not let tap recognizers accept gestures
  // <1: less reactive but gives the most leeway to other recognizers
  // 1: will not be able to compete with a `HorizontalDragGestureRecognizer` up the widget tree
  final double touchSlopFactor;

  // when zoomed in and hitting an edge, allow using a fling gesture to go to the previous/next page,
  // instead of yielding to the outer scrollable right away
  final bool escapeByFling;

  final bool? Function(Offset move)? acceptPointerEvent;

  const MagnifierGestureDetectorScope({
    super.key,
    required this.axis,
    this.touchSlopFactor = .8,
    this.escapeByFling = true,
    this.acceptPointerEvent,
    required super.child,
  });

  static MagnifierGestureDetectorScope? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<MagnifierGestureDetectorScope>();
  }

  MagnifierGestureDetectorScope copyWith({
    List<Axis>? axis,
    double? touchSlopFactor,
    bool? Function(Offset move)? acceptPointerEvent,
    required Widget child,
  }) {
    return MagnifierGestureDetectorScope(
      axis: axis ?? this.axis,
      touchSlopFactor: touchSlopFactor ?? this.touchSlopFactor,
      acceptPointerEvent: acceptPointerEvent ?? this.acceptPointerEvent,
      child: child,
    );
  }

  @override
  bool updateShouldNotify(MagnifierGestureDetectorScope oldWidget) {
    return axis != oldWidget.axis ||
        touchSlopFactor != oldWidget.touchSlopFactor ||
        acceptPointerEvent != oldWidget.acceptPointerEvent;
  }
}
