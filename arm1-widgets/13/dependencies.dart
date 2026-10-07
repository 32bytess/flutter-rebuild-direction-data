// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

class Wallet {
  final String id;
  final String name;

  const Wallet({required this.id, required this.name});

  String displayLabel(BuildContext context) => name;

  @override
  bool operator ==(Object other) => other is Wallet && other.id == id;

  @override
  int get hashCode => id.hashCode;
}

class TransferState {
  final List<Wallet> wallets;
  final Wallet? fromWallet;
  final Wallet? toWallet;

  const TransferState({
    required this.wallets,
    this.fromWallet,
    this.toWallet,
  });
}

// Frozen state fixtures — shared by base and all mutations.
const Wallet fixtureWallet1 = Wallet(id: '1', name: 'Main Wallet');
const Wallet fixtureWallet2 = Wallet(id: '2', name: 'Savings Wallet');
final TransferState fixtureTransferState = TransferState(
  wallets: [fixtureWallet1, fixtureWallet2],
  fromWallet: fixtureWallet1,
  toWallet: fixtureWallet2,
);

class TransferBloc {
  TransferState state;

  TransferBloc(this.state);

  void add(Object event) {}
}

class TransferEvent {
  const TransferEvent._();

  static TransferEvent walletsChanged({
    required Wallet? fromWallet,
    required Wallet? toWallet,
  }) => const TransferEvent._();
}

class TransferWalletsChanged {
  final Wallet fromWallet;
  final Wallet toWallet;

  const TransferWalletsChanged({
    required this.fromWallet,
    required this.toWallet,
  });
}

final Map<Type, Object> blocRegistry = {};

class _AppColors {
  const _AppColors(this._context);

  final BuildContext _context;

  Color get primary => Theme.of(_context).colorScheme.primary;
  Color get onPrimary => Theme.of(_context).colorScheme.onPrimary;
  Color get onSecondary => Theme.of(_context).colorScheme.onSecondary;
  Color get surface => Theme.of(_context).colorScheme.surface;
  Color get shimmerBase =>
      Theme.of(_context).colorScheme.surfaceContainerHighest;
  Color get shimmerHighlight => Theme.of(_context).colorScheme.surface;
}

class _AppLoc {
  String get swapToLabel => 'Swap To';
  String get swapValidationSelectToWallet => 'Please select a destination wallet';
}

extension AppContextExtension on BuildContext {
  _AppColors get appColors => _AppColors(this);
  TextTheme get font => Theme.of(this).textTheme;
  _AppLoc get loc => _AppLoc();

  T read<T>() => blocRegistry[T] as T;

  S select<T, S>(S Function(T) selector) =>
      selector(blocRegistry[T] as T);
}

class Shimmer {
  static Widget fromColors({
    required Color baseColor,
    required Color highlightColor,
    required Widget child,
  }) => child;
}

// Frozen runtime fixtures (shared by base and all mutations).
final (Wallet?, Wallet?) fixtureWalletsRecord = (fixtureWallet1, fixtureWallet2);
