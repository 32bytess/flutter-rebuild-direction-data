// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'base.dart';

// ---- Stub types ----

enum ResolutionPreset { low, medium, high, veryHigh, ultraHigh, max }

class BBQROptions {
  final int total;
  const BBQROptions({this.total = 3});
}

class BBQRState {
  final List<String> parts;
  final bool isScanningBbqr;
  final BBQROptions? options;
  const BBQRState({
    this.parts = const ['part1', 'part2'],
    this.isScanningBbqr = true,
    this.options = const BBQROptions(),
  });
}

class BroadcastSignedTxState {
  final BBQRState bbqr;
  const BroadcastSignedTxState({this.bbqr = const BBQRState()});
}

// Frozen state fixture — shared by base and all mutations.
const BroadcastSignedTxState fixtureBroadcastSignedTxState =
    BroadcastSignedTxState();

class BroadcastSignedTxCubit {
  void onQrScanned(String data) {}
}

class ScanResult {
  final bool isValid;
  final String? text;
  const ScanResult({this.isValid = false, this.text});
}

class UrQrReader {
  int? expectedParts;
  double progress = 0.0;
  int processedParts = 0;
  bool isComplete = false;
  dynamic decoded;
  void receive(String data) {}
}

class _Zx {
  const _Zx();

  void stopCameraProcessing() {}
}

const _Zx zxValue = _Zx();
late _Zx zx;

class _Log {
  const _Log();

  void severe({String? message, Object? error, StackTrace? trace}) {}
}

const _Log logValue = _Log();
late _Log log;

class _AppColors {
  Color get onPrimary => Colors.white;
  Color get secondary => Colors.grey.shade800;
  Color get onSecondary => Colors.white;
}

class _Font {
  TextStyle get labelMedium => const TextStyle(fontSize: 14);
}

extension BuildContextStubExtensions on BuildContext {
  _AppColors get appColors => _AppColors();
  _Font get font => _Font();
  void pop() => Navigator.of(this).pop();
}

extension BuildContextReadStub on BuildContext {
  T read<T>() {
    if (T == BroadcastSignedTxCubit) return BroadcastSignedTxCubit() as T;
    throw UnimplementedError('No stub for $T');
  }
}
