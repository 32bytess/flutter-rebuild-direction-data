// GENERATED FIXTURE SKELETON -- spm-fixture-v2
//
// Declarations lifted out of this group's transplants so that ONE fixture serves every role in
// it. That is the point of the file: the same values mount for both endpoints of every
// contrast, so a measured difference is attributable to the edit and not to the scaffolding.
//
// HOW THE VALUES GOT HERE. They are not authored by hand and not invented by the generator.
// Each one is resolved by a pre-registered hierarchy and the rule that fired is recorded, per
// binding, in this group's `fixture_provenance.json`:
//
//   relocated        the value really was in the application; `spm isolate` moved it here
//                    verbatim. Do not "tidy" one -- it is a measurement input.
//   upstream_literal not relocated, but the repository declares it at this group's anchor
//                    commit; taken verbatim, with `file@sha` recorded.
//   protocol_constant neither of the above; the committed table in `config/fixture_policy.json`.
//                    Collection cardinality is one declared constant, corpus-wide.
//   maximal_branch   a bool/enum/nullability that decides WHICH subtree renders takes the arm
//                    that renders more. This one OVERRIDES a relocated value, and says so.
//
// WHAT REMAINS TRUE REGARDLESS OF WHO OR WHAT FILLS A SLOT:
//
//   * The same values serve every role in the group. That is what makes the stubbing
//     symmetric across a pair, which is what makes a measured difference attributable to
//     the edit rather than to the scaffolding.
//   * Fixed collection cardinality. A list of 3 in one place and 10 in another is a change
//     in tree size, and tree size is the dependent variable.
//   * Deterministic values only: no `Random`, no `DateTime.now()`, no I/O, no network, no
//     animation controllers left ticking.
//   * Keep `extends` and `implements` clauses exactly as they are. `spm analyze` decides
//     widget versus value object by walking the supertype chain, so a stand-in that stops
//     extending its widget base silently moves allocations into `valueObjectAllocCount`.
//   * Fill before measuring, then freeze. A fixture edited after seeing a result is a
//     fixture the result cannot be defended against.
//
// A slot the hierarchy cannot resolve keeps its `// TODO: value` and is NOT guessed.
// `scripts/fixture_gate.py` then refuses the group, so an unfilled fixture cannot reach the
// device.
//
// This file is a pure function of the mine plus two committed tables, and is regenerated as
// long as it is untouched. The first HAND edit makes it yours: the screen sees the file no
// longer matches the hash it recorded, copies it into config/authored_fixtures/, and never
// generates over it again -- including after a prune deletes this directory, which is how
// the hash alone used to lose an edit. `scripts/authored_fixtures.py --list` says which
// groups the corpus no longer derives from the mine; `--release <group>` hands one back.
// ignore_for_file: unused_import, unused_element, unused_field
part of generated_widget;


// LIFTED BINDINGS -- the scope's initial state, which `spm isolate` 0.7.0 moves out
// of the application and into a fixture block of its own. Most of these carry the
// value that was really there, relocated rather than invented, and are reproduced
// here verbatim: do not "tidy" one, it is a measurement input.
//
// The ones marked TODO are the exception. Where the binding came from the
// application and no value existed to move, the block gets an empty collection or a
// null, and how many elements you put in one IS tree size -- the dependent variable.
// That is a decision, and it is why they are hoisted: filled in once here, the whole
// group mounts from identical values, so a measured difference is attributable to
// the edit rather than to the scaffolding.

WidgetRef fixtureRef = WidgetRef();

Widget fixture = const SizedBox.shrink();

// DECLARATION-ONLY STAND-INS -- repo-local declarations that build no UI, and
// third-party ones the transplant does not inline. Supertypes are mirrored so a
// widget still reads as a widget; everything else is `dynamic`, because none of it
// is measured.

class AppStrings {
  AppStrings();
  static const dynamic appName = null;
  static const dynamic accountBotNavLabel = null;
  static const dynamic aliasesBotNavLabel = null;
  static const dynamic searchBotNavLabel = null;
  static const dynamic monthlyBandwidth = null;
  static const dynamic recipients = null;
  static const dynamic usernames = null;
  static const dynamic domains = null;
  static const dynamic rules = null;
  static const dynamic selfHosted = null;
  static const dynamic subscriptionEndDate = null;
  static const dynamic subscriptionEndDateNotAvailable = null;
  static const dynamic subscriptionEndDateDoesNotExpire = null;
  static const dynamic noDefaultSelected = null;
  static const dynamic defaultAliasFormat = null;
  static const dynamic defaultAliasDomain = null;
  static const dynamic unlimited = null;
  static const dynamic addNewRecipient = null;
  static const dynamic updateAliasRecipientNote = null;
  static const dynamic deleteAliasSubtitle = null;
  static const dynamic restoreAliasSubtitle = null;
  static const dynamic updateDescriptionString = null;
  static const dynamic forgetAlias = null;
  static const dynamic updateDescriptionTitle = null;
  static const dynamic removeDescriptionTitle = null;
  static const dynamic noDefaultRecipientSet = null;
  static const dynamic sendFromAlias = null;
  static const dynamic sendFromAliasString = null;
  static const dynamic sendFromAliasNote = null;
  static const dynamic actions = null;
  static const dynamic description = null;
  static const dynamic createNewAlias = null;
  static const dynamic createAliasTitle = null;
  static const dynamic aliasDomainTitle = null;
  static const dynamic aliasFormat = null;
  static const dynamic selectAliasDomain = null;
  static const dynamic selectAliasFormat = null;
  static const dynamic descriptionFieldHint = null;
  static const dynamic localPartFieldHint = null;
  static const dynamic createAliasWhileOffline = null;
  static const dynamic createAliasCustomFieldNote = null;
  static const dynamic publicKeyFieldHint = null;
  static const dynamic addPublicKeyNote = null;
  static const dynamic unverifiedRecipientNote = null;
  static const dynamic noRecipientsFound = null;
  static const dynamic verified = null;
  static const dynamic unverified = null;
  static const dynamic disableInlineEncryptionFirst = null;
  static const dynamic disableProtectedHeadersFirst = null;
  static const dynamic addNewDomain = null;
  static const dynamic addNewUsername = null;
  static const dynamic addUsername = null;
  static const dynamic noAdditionalUsernamesFound = null;
  static const dynamic unverifiedDomainWarning = null;
  static const dynamic invalidDomainMXWarning = null;
  static const dynamic noDomainsFound = null;
  static const dynamic noRulesFound = null;
  static const dynamic enrollRulesBetaTesting = null;
  static const dynamic quickSearch = null;
  static const dynamic searchAliasByEmailOrDesc = null;
  static const dynamic searchFieldHint = null;
  static const dynamic searchHistory = null;
  static const dynamic clearSearchHistoryButtonText = null;
  static const dynamic searching = null;
  static const dynamic cancelSearchingButtonText = null;
  static const dynamic searchResult = null;
  static const dynamic limitedSearchResult = null;
  static const dynamic closeSearchButtonText = null;
  static const dynamic settings = null;
  static const dynamic settingsDarkTheme = null;
  static const dynamic settingsDarkThemeSubtitle = null;
  static const dynamic settingsAutoCopyEmail = null;
  static const dynamic settingsAutoCopyEmailSubtitle = null;
  static const dynamic settingsBiometricAuth = null;
  static const dynamic settingsBiometricAuthSubtitle = null;
  static const dynamic settingsAnonAddyHelpCenter = null;
  static const dynamic settingsAnonAddyHelpCenterSubtitle = null;
  static const dynamic settingsAnonAddyFAQ = null;
  static const dynamic settingsAnonAddyFAQSubtitle = null;
  static const dynamic settingsAboutApp = null;
  static const dynamic settingsAboutAppSubtitle = null;
  static const dynamic settingsEnjoyingApp = null;
  static const dynamic settingsEnjoyingAppSubtitle = null;
  static const dynamic settingsLogout = null;
  static const dynamic settingsLogoutSubtitle = null;
  static const dynamic appVersion = null;
  static const dynamic alertCenter = null;
  static const dynamic notifications = null;
  static const dynamic notificationsNote = null;
  static const dynamic failedDeliveries = null;
  static const dynamic failedDeliveriesNote = null;
  static const dynamic enterAccessToken = null;
  static const dynamic whatsAccessToken = null;
  static const dynamic accessTokenDefinition = null;
  static const dynamic accessTokenRequired = null;
  static const dynamic howToGetAccessToken = null;
  static const dynamic howToGetAccessToken1 = null;
  static const dynamic howToGetAccessToken2 = null;
  static const dynamic howToGetAccessToken3 = null;
  static const dynamic howToGetAccessToken4 = null;
  static const dynamic howToGetAccessToken5 = null;
  static const dynamic accessTokenSecurityNotice = null;
  static const dynamic getAccessToken = null;
  static const dynamic enterYourApiToken = null;
  static const dynamic loadAccountDataFailed = null;
  static const dynamic somethingWentWrong = null;
  static const dynamic failedToLaunchUrl = null;
  static const dynamic deviceDoesNotSupportBioAuth = null;
  static const dynamic failedToAuthenticate = null;
  static const dynamic doneText = null;
  static const dynamic cancelText = null;
  static const dynamic noInternetOfflineData = null;
  static const dynamic noInternetDialogTitle = null;
  static const dynamic noInternetContent = null;
  static const dynamic noInternetDialogButton = null;
  static const dynamic loadingText = null;
  static const dynamic comingSoon = null;
  static const dynamic logOutAlertDialog = null;
  static const dynamic noDescription = null;
  static const dynamic navigationErrorMessage = null;
  static const dynamic provideValidAccessToken = null;
  static const dynamic providePGPKey = null;
  static const dynamic usernameIsRequired = null;
  static const dynamic fieldCannotBeEmpty = null;
  static const dynamic enterValidEmail = null;
  static const dynamic provideValidLocalPart = null;
  static const dynamic providerValidUrl = null;
  static const dynamic keywordMustBe3CharsLong = null;
  static const dynamic settingsAddyHelpCenter = null;
  static const dynamic settingsAddyHelpCenterSubtitle = null;
  static const dynamic settingsAddyFAQ = null;
  static const dynamic settingsAddyFAQSubtitle = null;
  static const dynamic accessTokenInfo = null;
}

class AppTheme {
  AppTheme();
  static dynamic get light => const _Stub();
  static dynamic get dark => const _Stub();
  static dynamic get macOSThemeLight => const _Stub();
  static dynamic get macOSThemeDark => const _Stub();
  static const dynamic kBottomSheetBorderRadius = null;
  static const dynamic kTextFormFieldDecoration = null;
}

class WidgetRef {
  WidgetRef();
  dynamic get context => const _Stub();
  dynamic watch<T>(dynamic provider) => const _Stub();
  dynamic exists(dynamic provider) => false;
  void listen<T>(dynamic provider, dynamic listener, {dynamic onError}) {}
  dynamic listenManual<T>(
    dynamic provider,
    dynamic listener, {
    dynamic onError,
    dynamic fireImmediately,
  }) => const _Stub();
  dynamic read<T>(dynamic provider) => const _Stub();
  dynamic refresh<State>(dynamic provider) => const _Stub();
  void invalidate(dynamic provider) {}
}

dynamic createAliasNotifierProvider = const _Stub();

class _Stub {
  const _Stub();

  int get length => 0;
  bool get isEmpty => true;
  bool get isNotEmpty => false;
  Iterator<dynamic> get iterator => const Iterable<dynamic>.empty().iterator;

  dynamic operator [](Object? key) => const _Stub();
  dynamic operator +(Object? other) => const _Stub();
  bool operator <(Object? other) => false;
  bool operator >(Object? other) => false;
  bool operator <=(Object? other) => false;
  bool operator >=(Object? other) => false;

  @override
  bool operator ==(Object other) => other is _Stub;

  @override
  int get hashCode => 0;

  @override
  dynamic noSuchMethod(Invocation invocation) => const _Stub();

  @override
  String toString() => '';
}
