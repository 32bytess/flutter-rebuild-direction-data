// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'base.dart';

typedef MagnifierDoubleTapPredicate = bool Function(Offset localPosition);

class EdgeHitDetector {}

class MagnifierGestureRecognizer extends ScaleGestureRecognizer {
  final MagnifierGestureDetectorScope scope;
  final ValueNotifier<TapDownDetails?> doubleTapDetails;

  EdgeHitDetector? hitDetector;

  MagnifierGestureRecognizer({
    super.debugOwner,
    required this.scope,
    required this.doubleTapDetails,
  });
}

class MagnifierDoubleTapGestureRecognizer extends DoubleTapGestureRecognizer {
  final MagnifierDoubleTapPredicate allowDoubleTap;

  MagnifierDoubleTapGestureRecognizer({
    super.debugOwner,
    super.supportedDevices,
    super.allowedButtonsFilter,
    required this.allowDoubleTap,
  });

  @override
  bool isPointerAllowed(PointerDownEvent event) {
    if (!allowDoubleTap(event.localPosition)) {
      return false;
    }
    return super.isPointerAllowed(event);
  }
}

// Frozen runtime fixtures (shared by base and all mutations).
ValueNotifier<TapDownDetails?> makeDoubleTapNotifier() => ValueNotifier(null);
EdgeHitDetector makeHitDetector() => EdgeHitDetector();
const Widget fixtureMagnifierChild = Text('Magnifier Gesture Detector');
