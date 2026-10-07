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


// SEEDS -- the values the generated `initState` reads, for which `spm isolate`
// could build none. It declares each of these `late` and leaves it unassigned on
// purpose: a fabricated default would be measured as though it were the value that
// was really there. Assign one below and every role in this group gets it.

late ThemeData fixtureTheme; // TODO: value

late ColorScheme fixtureColorScheme; // TODO: value

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

String fixtureAppVersion = '';

S fixtureL10n = S();

// DECLARATION-ONLY STAND-INS -- repo-local declarations that build no UI, and
// third-party ones the transplant does not inline. Supertypes are mirrored so a
// widget still reads as a widget; everything else is `dynamic`, because none of it
// is measured.

class AppStrings {
  AppStrings._();
  static const dynamic noRouteFound = null;
  static const dynamic home = null;
  static const dynamic fixtures = null;
  static const dynamic standings = null;
  static const dynamic liveScore = null;
  static const dynamic vs = null;
  static const dynamic round = null;
  static const dynamic live = null;
  static const dynamic end = null;
  static const dynamic notStarted = null;
  static const dynamic statistics = null;
  static const dynamic lineups = null;
  static const dynamic events = null;
  static const dynamic goal = null;
  static const dynamic missedPenalty = null;
  static const dynamic assist = null;
  static const dynamic noAssist = null;
  static const dynamic card = null;
  static const dynamic yellowCard = null;
  static const dynamic subst = null;
  static const dynamic viewFixtures = null;
  static const dynamic viewStandings = null;
  static const dynamic liveFixtures = null;
  static const dynamic viewAll = null;
  static const dynamic reachedLimits = null;
  static const dynamic reload = null;
  static const dynamic noStats = null;
  static const dynamic noLineups = null;
  static const dynamic noEvents = null;
  static const dynamic noFixtures = null;
  static const dynamic appName = null;
  static const dynamic settings = null;
  static const dynamic appearanceDescription = null;
  static const dynamic appVersion = null;
  static const dynamic appearance = null;
  static const dynamic about = null;
  static const dynamic theme = null;
  static const dynamic systemDefault = null;
  static const dynamic light = null;
  static const dynamic dark = null;
  static const dynamic personalizeYourExperience = null;
  static const dynamic settingsSubtitle = null;
  static const dynamic bottomNavTitles = null;
}

class S {
  S();
  static dynamic get current => S();
  static const dynamic delegate = null;
  dynamic get appName => '';
  dynamic get noRouteFound => '';
  dynamic get home => '';
  dynamic get fixtures => '';
  dynamic get standings => '';
  dynamic get liveScore => '';
  dynamic get versus => '';
  dynamic get statistics => '';
  dynamic get lineups => '';
  dynamic get events => '';
  dynamic get assist => '';
  dynamic get viewFixtures => '';
  dynamic get viewStandings => '';
  dynamic get liveFixtures => '';
  dynamic get viewAll => '';
  dynamic get reload => '';
  dynamic get noStats => '';
  dynamic get noLineups => '';
  dynamic get noEvents => '';
  dynamic get noFixtures => '';
  dynamic get settings => '';
  dynamic get appearance => '';
  dynamic get appearanceDescription => '';
  dynamic get appVersion => '';
  dynamic get systemDefault => '';
  dynamic get light => '';
  dynamic get dark => '';
  dynamic get language => '';
  dynamic get languageDescription => '';
  dynamic get english => '';
  dynamic get arabic => '';
  dynamic get topStats => '';
  dynamic get teamName => '';
  dynamic get form => '';
  dynamic get playedShort => '';
  dynamic get wonShort => '';
  dynamic get drawnShort => '';
  dynamic get lostShort => '';
  dynamic get goalsForShort => '';
  dynamic get goalsAgainstShort => '';
  dynamic get goalDifferenceShort => '';
  dynamic get pointsShort => '';
  dynamic get tbd => '';
  dynamic get liveFallback => '';
  dynamic get errorClientClosedRequest => '';
  dynamic get errorInternalServerError => '';
  dynamic get errorNetworkConnectError => '';
  dynamic get errorWebProxyRequired => '';
  dynamic get errorUnexpected => '';
  static dynamic load(dynamic locale) => Future<S>.value(S());
  static dynamic of(dynamic context) => S();
  static dynamic maybeOf(dynamic context) => null;
  dynamic aggregateScore(dynamic homeScore, dynamic awayScore) => '';
  dynamic roundNumber(dynamic number) => '';
  dynamic seasonNumber(dynamic number) => '';
  dynamic get errorLoadFixtures => '';
  dynamic get noStandingsYet => '';
  dynamic get errorLoadStandings => '';
  dynamic get all => '';
  dynamic get allLeaguesTooltip => '';
  dynamic get fullLineups => '';
}

class AppSpacing {
  const AppSpacing._();
  static const dynamic xs = null;
  static const dynamic s = null;
  static const dynamic m = null;
  static const dynamic l = null;
  static const dynamic xl = null;
  static const dynamic xxl = null;
  static const dynamic xxxl = null;
  static const dynamic jumbo = null;
  static const dynamic micro = null;
  static const dynamic section = null;
}

class AppColorsExtension {
  const AppColorsExtension({
    dynamic green,
    dynamic red,
    dynamic purple,
    dynamic yellow,
    dynamic darkGrey,
    dynamic lightGrey,
    dynamic grey,
    dynamic deepOrange,
    dynamic blueGrey,
    dynamic blue,
    dynamic white,
    dynamic lightRed,
    dynamic darkBlue,
    dynamic darkGreen,
    dynamic blueGradient,
    dynamic redGradient,
    dynamic surfaceGlass,
    dynamic surfaceElevated,
    dynamic textMuted,
    dynamic textSubtle,
    dynamic dividerSubtle,
    dynamic onLive,
    dynamic onScheduled,
    dynamic onEnded,
    dynamic liveGradient,
    dynamic accentGradient,
  });
  dynamic get green => const _Stub();
  dynamic get red => const _Stub();
  dynamic get purple => const _Stub();
  dynamic get yellow => const _Stub();
  dynamic get darkGrey => const _Stub();
  dynamic get lightGrey => const _Stub();
  dynamic get grey => const _Stub();
  dynamic get deepOrange => const _Stub();
  dynamic get blueGrey => const _Stub();
  dynamic get blue => const _Stub();
  dynamic get white => const _Stub();
  dynamic get lightRed => const _Stub();
  dynamic get darkBlue => const _Stub();
  dynamic get darkGreen => const _Stub();
  dynamic get blueGradient => const _Stub();
  dynamic get redGradient => const _Stub();
  dynamic get surfaceGlass => const _Stub();
  dynamic get surfaceElevated => const _Stub();
  dynamic get textMuted => const _Stub();
  dynamic get textSubtle => const _Stub();
  dynamic get dividerSubtle => const _Stub();
  dynamic get onLive => const _Stub();
  dynamic get onScheduled => const _Stub();
  dynamic get onEnded => const _Stub();
  dynamic get liveGradient => const _Stub();
  dynamic get accentGradient => const _Stub();
  dynamic copyWith({
    dynamic green,
    dynamic red,
    dynamic purple,
    dynamic yellow,
    dynamic darkGrey,
    dynamic lightGrey,
    dynamic grey,
    dynamic deepOrange,
    dynamic blueGrey,
    dynamic blue,
    dynamic white,
    dynamic lightRed,
    dynamic darkBlue,
    dynamic darkGreen,
    dynamic blueGradient,
    dynamic redGradient,
    dynamic surfaceGlass,
    dynamic surfaceElevated,
    dynamic textMuted,
    dynamic textSubtle,
    dynamic dividerSubtle,
    dynamic onLive,
    dynamic onScheduled,
    dynamic onEnded,
    dynamic liveGradient,
    dynamic accentGradient,
  }) => const _Stub();
  dynamic lerp(dynamic other, dynamic t) => const _Stub();
}

extension ContextExtension on BuildContext {
  dynamic get screenWidth => 0.0;
  dynamic get screenHeight => 0.0;
  dynamic get colors => const _Stub();
  dynamic get colorsExt => AppColorsExtension();
  dynamic get textTheme => const _Stub();
  dynamic get l10n => S();
  dynamic get localeName => '';
}

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
