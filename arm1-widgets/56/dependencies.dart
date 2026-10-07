// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'base.dart';

enum FeeType { fastest, economic, slow, custom }

class FeeEntity {
  final FeeType type;
  final double feeRate;

  FeeEntity({required this.type, required this.feeRate});
}

// Frozen runtime fixtures (shared by base and all mutations).
FeeEntity makeFastestFee() => FeeEntity(type: FeeType.fastest, feeRate: 5.0);
