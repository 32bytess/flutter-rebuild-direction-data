// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

abstract class WalletState {}

class WalletInitial extends WalletState {}

class WalletLoaded extends WalletState {
  final List<WalletSchema> wallets;
  WalletLoaded(this.wallets);
}

class WalletSchema {
  final String address;
  final double balance;
  final double balanceEth;
  final WalletType type;
  const WalletSchema({
    this.address = '',
    this.balance = 0,
    this.balanceEth = 0,
    this.type = WalletType.nkn,
  });
}

enum WalletType { nkn, eth }

// Frozen state fixture — shared by base and all mutations.
final List<WalletSchema> fixtureSampleWallets = [
  const WalletSchema(
    address: '0xNKN1abc123',
    balance: 1234.5678,
    balanceEth: 0,
    type: WalletType.nkn,
  ),
  const WalletSchema(
    address: '0xETH1def456',
    balance: 500.0,
    balanceEth: 1.25,
    type: WalletType.eth,
  ),
];

class _AppTheme {
  final Color fontColor1 = Colors.grey;
  final Color fontLightColor = Colors.white;
  final TextStyle headline1 = const TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );
  final TextStyle headline2 = const TextStyle(fontSize: 28);
  final TextStyle headline3 = const TextStyle(fontSize: 24);
  final TextStyle headline4 = const TextStyle(fontSize: 20);
  final TextStyle display = const TextStyle(fontSize: 16);
  final TextStyle bodyText1 = const TextStyle(fontSize: 16);
  final TextStyle bodyText2 = const TextStyle(fontSize: 14);
  final TextStyle bodyText3 = const TextStyle(fontSize: 12);
}

class _Application {
  final _AppTheme theme = _AppTheme();
}

final _Application applicationValue = _Application();
late _Application application;

class Settings {
  static double screenWidth() => 375.0;
}

class Format {
  static String nknBalance(double amount, {int decimalDigits = 8}) =>
      amount.toStringAsFixed(decimalDigits);
}

enum LabelType {
  h1,
  h2,
  h3,
  h4,
  display,
  bodyLarge,
  bodyRegular,
  bodySmall,
  label,
}

// Frozen runtime fixtures (shared by base and all mutations).
WalletState makeWalletState() => WalletLoaded(fixtureSampleWallets);
