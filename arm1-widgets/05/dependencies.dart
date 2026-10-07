// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

class LegacySeedPassphrase {
  final String passphrase;
  const LegacySeedPassphrase({required this.passphrase});
}

class LegacySeed {
  final String mnemonic;
  final List<LegacySeedPassphrase> passphrases;
  const LegacySeed({required this.mnemonic, this.passphrases = const []});
}

class LegacySeedViewState {
  final bool loading;
  final List<LegacySeed> seeds;
  final String? error;
  const LegacySeedViewState({
    this.loading = false,
    this.seeds = const [],
    this.error,
  });
}

// Frozen state fixture — shared by base and all mutations.
final LegacySeedViewState fixtureLegacySeedViewState = LegacySeedViewState(
  loading: false,
  seeds: [
    LegacySeed(
      mnemonic:
          'abandon ability able about above absent absorb abstract absurd abuse access accident',
      passphrases: [
        const LegacySeedPassphrase(passphrase: 'my secret passphrase'),
        const LegacySeedPassphrase(passphrase: ''),
      ],
    ),
    LegacySeed(
      mnemonic:
          'actor adapt address adult advance advice aerobic afford afraid again agent agree',
      passphrases: [
        const LegacySeedPassphrase(passphrase: 'another passphrase'),
      ],
    ),
    LegacySeed(
      mnemonic:
          'ahead aim air airport aisle alarm album alcohol alert alien alley allow',
      passphrases: [],
    ),
    LegacySeed(
      mnemonic:
          'almost alone alpha already also alter always amateur amazing among anchor ancient',
      passphrases: [
        const LegacySeedPassphrase(passphrase: 'correct horse battery staple'),
        const LegacySeedPassphrase(passphrase: ''),
        const LegacySeedPassphrase(passphrase: 'extra passphrase'),
      ],
    ),
    LegacySeed(
      mnemonic:
          'anger angle angry animal ankle announce annual another answer antenna antique anxiety',
      passphrases: [],
    ),
    LegacySeed(
      mnemonic:
          'any apart apology appear apple approve april arch area arena argue arm',
      passphrases: [
        const LegacySeedPassphrase(passphrase: 'legacy wallet passphrase'),
      ],
    ),
  ],
  error: null,
);

class LegacySeedViewCubit {
  void fetchOldSeeds() {}
}

class _AppColors {
  Color get surface => Colors.grey.shade200;
  Color get primary => Colors.blue;
  Color get secondary => Colors.grey;
}

class _AppFonts {
  TextStyle get bodyLarge => const TextStyle(fontSize: 16);
  TextStyle get bodyMedium => const TextStyle(fontSize: 14);
}

class _AppLoc {
  String get legacySeedViewNoSeedsMessage => 'No seeds found.';
  String get legacySeedViewMnemonicLabel => 'Mnemonic';
  String get legacySeedViewPassphrasesLabel => 'Passphrases';
  String get legacySeedViewEmptyPassphrase => '(empty)';
}

extension ContextExtensions on BuildContext {
  _AppColors get appColors => _AppColors();
  _AppFonts get font => _AppFonts();
  _AppLoc get loc => _AppLoc();
  T read<T>() {
    if (T == LegacySeedViewCubit) return LegacySeedViewCubit() as T;
    throw UnsupportedError('read<$T>() is not supported');
  }
}
