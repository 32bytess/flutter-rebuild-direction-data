// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

class UserDca {
  final double? amount;
  final FiatCurrency? currency;
  final DcaBuyFrequency? frequency;
  final DcaNetwork? network;
  final String? address;

  UserDca({this.amount, this.currency, this.frequency, this.network, this.address});
}

class AppColors {
  Color get onSurface => Colors.black;
  Color get primary => Colors.blue;
  Color get surfaceFixed => Colors.white;
  Color get onSurfaceFixed => Colors.black;
}

class AppLoc {
  String get exchangeDcaUnableToGetConfig => 'Unable to get config';
  String get exchangeDcaDeactivateTitle => 'Deactivate DCA';
  String get exchangeDcaActivateTitle => 'Activate DCA';
  String get exchangeDcaHideSettings => 'Hide settings';
  String get exchangeDcaViewSettings => 'View settings';
  String get exchangeDcaCancelDialogTitle => 'Cancel DCA';
  String get exchangeDcaCancelDialogMessage => 'Are you sure?';
  String get exchangeDcaCancelDialogCancelButton => 'Cancel';
  String get exchangeDcaCancelDialogConfirmButton => 'Confirm';
  String get exchangeDcaFrequencyHour => 'hourly';
  String get exchangeDcaFrequencyDay => 'daily';
  String get exchangeDcaFrequencyWeek => 'weekly';
  String get exchangeDcaFrequencyMonth => 'monthly';
  String get exchangeDcaNetworkBitcoin => 'Bitcoin';
  String get exchangeDcaNetworkLightning => 'Lightning';
  String get exchangeDcaNetworkLiquid => 'Liquid';
  String get exchangeDcaAddressLabelBitcoin => 'BTC Address';
  String get exchangeDcaAddressLabelLightning => 'Lightning Invoice';
  String get exchangeDcaAddressLabelLiquid => 'Liquid Address';
  String exchangeDcaSummaryMessage(String amount, String frequency, String network) =>
      '$amount $frequency via $network';
  String exchangeDcaAddressDisplay(String label, String address) => '$label: $address';
}

class ExchangeCubit {
  void stopDca() {}
}

class FormatAmount {
  static String fiat(double amount, String code) => '$code $amount';
}

extension BuildContextExt on BuildContext {
  AppColors get appColors => AppColors();
  AppLoc get loc => AppLoc();
  void pushNamed(String name) {}
  T read<T>() {
    if (T == ExchangeCubit) return ExchangeCubit() as T;
    throw UnimplementedError('No provider for $T');
  }
}

enum DcaRoute {
  dca('/dca'),
  dcaWalletSelection('wallet-selection'),
  dcaConfirmation('confirmation'),
  dcaSuccess('success');

  final String path;

  const DcaRoute(this.path);
}

enum FiatCurrency {
  usd('USD', decimals: 2, symbol: '\$'),
  cad('CAD', decimals: 2, symbol: '\$'),
  crc('CRC', decimals: 2, symbol: '₡'),
  eur('EUR', decimals: 2, symbol: '€'),
  mxn('MXN', decimals: 2, symbol: '\$'),
  ars('ARS', decimals: 2, symbol: '\$'),
  cop('COP', decimals: 0, symbol: '\$');

  const FiatCurrency(this.code, {required this.decimals, required this.symbol});
  final String code;
  final int decimals;
  final String symbol;

  static FiatCurrency fromCode(String code) {
    switch (code.toUpperCase()) {
      case 'USD':
        return FiatCurrency.usd;
      case 'CAD':
        return FiatCurrency.cad;
      case 'CRC':
        return FiatCurrency.crc;
      case 'EUR':
        return FiatCurrency.eur;
      case 'MXN':
        return FiatCurrency.mxn;
      case 'ARS':
        return FiatCurrency.ars;
      case 'COP':
        return FiatCurrency.cop;
      default:
        throw Exception('Unknown FiatCurrency: $code');
    }
  }
}

enum DcaBuyFrequency { hourly, daily, weekly, monthly }

enum DcaNetwork { bitcoin, lightning, liquid }
