// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

class AvesEntry {
  final bool isFavourite;

  AvesEntry({this.isFavourite = false});
}

final ChangeNotifier favouritesValue = ChangeNotifier();
late ChangeNotifier favourites;

// Frozen state fixture — shared by base and all mutations. Returned fresh
// (factory) to avoid sharing a mutable set across runs.
Set<AvesEntry> fixtureEntries() => {AvesEntry(isFavourite: true)};

class AppLocalizations {
  String get entryActionRemoveFavourite => 'Remove from Favourites';

  String get entryActionAddFavourite => 'Add to Favourites';
}

extension BuildContextL10n on BuildContext {
  AppLocalizations get l10n => AppLocalizations();
}

// Frozen runtime fixtures (shared by base and all mutations).
ValueNotifier<bool> makeBoolNotifier() => ValueNotifier(false);
const bool fixtureEnabled = true;
