// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'base.dart';

class Currency {
  final String code;
  final int decimals;
  const Currency({required this.code, required this.decimals});
}

class BitcoinUnit {
  final String code;
  final int decimals;
  const BitcoinUnit({required this.code, required this.decimals});
}

// Frozen state fixtures — shared by base and all mutations. Balances map is
// returned fresh (factory) to avoid sharing a mutable instance across runs.
const Currency fixtureCurrency = Currency(code: 'USD', decimals: 2);
const BitcoinUnit fixtureBitcoinUnit = BitcoinUnit(code: 'BTC', decimals: 8);
const double fixtureBalance = 1000.0;
const bool fixtureIsFiatCurrencyInput = true;
Map<String, double> fixtureBalances() => {'USD': 1000.0, 'EUR': 900.0};

class _AppFont {
  TextStyle? get bodyMedium => const TextStyle(fontSize: 14);
  TextStyle? get displaySmall => const TextStyle(fontSize: 24);
  TextStyle? get headlineSmall => const TextStyle(fontSize: 20);
}

class _AppColors {
  Color get primary => Colors.blue;
  Color get onSurface => Colors.black87;
  Color get onSurfaceVariant => Colors.grey;
  Color get surface => Colors.white;
  Color get outline => Colors.grey;
  Color get secondary => Colors.teal;
  Color get shimmerBase => Colors.grey.shade300;
  Color get shimmerHighlight => Colors.grey.shade100;
}

class _AppLoc {
  String get buyEnterAmount => 'Enter Amount';
  String get buyPaymentMethod => 'Payment Method';
  String get buyMax => 'Max';
}

extension AppContextExt on BuildContext {
  _AppFont get font => _AppFont();
  _AppColors get appColors => _AppColors();
  _AppLoc get loc => _AppLoc();
}

class Shimmer {
  static Widget fromColors({
    required Color baseColor,
    required Color highlightColor,
    required Widget child,
  }) => child;
}

class FormatAmount {
  static String fiat(
    double amount,
    String currency, {
    bool simpleFormat = false,
  }) {
    return '${amount.toStringAsFixed(2)} $currency';
  }
}

class NumberFormat {
  final int _decimalDigits;
  NumberFormat._({required int decimalDigits})
    : _decimalDigits = decimalDigits;

  static NumberFormat decimalPatternDigits({required int decimalDigits}) =>
      NumberFormat._(decimalDigits: decimalDigits);

  String format(num number) => number.toStringAsFixed(_decimalDigits);
}

// Frozen runtime fixtures (shared by base and all mutations).
TextEditingController makeAmountController() => TextEditingController(text: '');
