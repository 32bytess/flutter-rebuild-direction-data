// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

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

class WalletState {}

class WalletLoaded extends WalletState {
  final List<WalletSchema> wallets;
  WalletLoaded({this.wallets = const []});
}

class WalletSchema {
  final String type;
  final String? name;
  final double balance;
  final double? balanceEth;
  WalletSchema({
    this.type = WalletType.nkn,
    this.name,
    this.balance = 0,
    this.balanceEth,
  });
}

class WalletType {
  static const String nkn = 'nkn';
  static const String eth = 'eth';
}

class SkinTheme {
  Color backgroundLightColor = Colors.white;
  Color logoBackground = const Color(0xFF1565C0);
  Color ethLogoBackground = const Color(0xFF6A1B9A);
  Color ethLogoColor = Colors.white;
  Color nknLogoColor = Colors.white;
  Color successColor = Colors.green;
  Color fontLightColor = Colors.white;
  TextStyle headline1 = const TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );
  TextStyle headline2 = const TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
  );
  TextStyle headline3 = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );
  TextStyle headline4 = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  TextStyle display = const TextStyle(fontSize: 12);
  TextStyle bodyText1 = const TextStyle(fontSize: 16);
  TextStyle bodyText2 = const TextStyle(fontSize: 14);
  TextStyle bodyText3 = const TextStyle(fontSize: 12);
}

class _Application {
  final SkinTheme theme = SkinTheme();
}

final _Application applicationValue = _Application();
late _Application application;

// Frozen state fixtures — shared by base and all mutations.
// base.dart reads these in initState instead of hardcoding values, so a
// mutation that rewrites the whole base file still uses identical inputs.
final WalletState fixtureWalletState = WalletLoaded(
  wallets: [
    WalletSchema(type: WalletType.nkn, name: 'Main Wallet', balance: 100.0),
    WalletSchema(
      type: WalletType.eth,
      name: 'ETH Wallet',
      balance: 0.5,
      balanceEth: 0.5,
    ),
    WalletSchema(type: WalletType.nkn, name: 'Savings', balance: 250.0),
  ],
);
const bool fixtureOnlyNKN = false;

class Asset {
  static Widget svg(
    String name, {
    Color? color,
    double? width,
    double? height,
  }) {
    return SizedBox(width: width ?? 24, height: height ?? 24);
  }
}

class Format {
  static String nknBalance(
    double? value, {
    int decimalDigits = 2,
    String symbol = '',
  }) {
    return '${(value ?? 0).toStringAsFixed(decimalDigits)} $symbol'.trim();
  }
}

class _S {
  String get ERC_20 => 'ERC-20';
  String get mainnet => 'Mainnet';
}

class Settings {
  static String locale(String Function(_S) selector, {BuildContext? ctx}) {
    return selector(_S());
  }
}
