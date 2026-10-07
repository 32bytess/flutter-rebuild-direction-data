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

late FixtureDetails? fixtureFixtureDetails; // TODO: value

late Color fixtureColor; // TODO: value

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

List<Event> fixtureEvents = []; // TODO: value

// DECLARATION-ONLY STAND-INS -- repo-local declarations that build no UI, and
// third-party ones the transplant does not inline. Supertypes are mirrored so a
// widget still reads as a widget; everything else is `dynamic`, because none of it
// is measured.

class AppAssets {
  AppAssets._();
  static const dynamic playground = null;
  static const dynamic subs = null;
  static const dynamic noStats = null;
  static const dynamic noFixtures = null;
  static const dynamic appLogo = null;
  static const dynamic appLogoWithBackground = null;
  static const dynamic appLogoWithLabel = null;
}

class AppColors {
  AppColors._();
  static const dynamic white = null;
  static const dynamic black = null;
  static const dynamic red = null;
  static const dynamic lightRed = null;
  static const dynamic blueGrey = null;
  static const dynamic green = null;
  static const dynamic darkGreen = null;
  static const dynamic yellow = null;
  static const dynamic blue = null;
  static const dynamic darkBlue = null;
  static const dynamic deepOrange = null;
  static const dynamic grey = null;
  static const dynamic darkGrey = null;
  static const dynamic purple = null;
  static const dynamic lightGrey = null;
  static const dynamic blueGradient = null;
  static const dynamic redGradient = null;
}

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
  static const dynamic bottomNavTitles = null;
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
}

class CachedNetworkImage extends StatelessWidget {
  CachedNetworkImage({
    super.key,
    dynamic imageUrl,
    dynamic httpHeaders,
    dynamic imageBuilder,
    dynamic placeholder,
    dynamic progressIndicatorBuilder,
    dynamic errorWidget,
    dynamic fadeOutDuration,
    dynamic fadeOutCurve,
    dynamic fadeInDuration,
    dynamic fadeInCurve,
    dynamic width,
    dynamic height,
    dynamic fit,
    dynamic alignment,
    dynamic repeat,
    dynamic matchTextDirection,
    dynamic cacheManager,
    dynamic useOldImageOnUrlChange,
    dynamic color,
    dynamic filterQuality,
    dynamic colorBlendMode,
    dynamic placeholderFadeInDuration,
    dynamic memCacheWidth,
    dynamic memCacheHeight,
    dynamic cacheKey,
    dynamic maxWidthDiskCache,
    dynamic maxHeightDiskCache,
    dynamic errorListener,
    dynamic imageRenderMethodForWeb,
    dynamic scale,
  });
  @override
  Widget build(BuildContext context) => const SizedBox.shrink();
  static dynamic get logLevel => const _Stub();
  static set logLevel(dynamic _) {}
  dynamic get cacheManager => null;
  dynamic get imageUrl => '';
  dynamic get cacheKey => null;
  dynamic get imageBuilder => null;
  dynamic get placeholder => null;
  dynamic get progressIndicatorBuilder => null;
  dynamic get errorWidget => null;
  dynamic get placeholderFadeInDuration => null;
  dynamic get fadeOutDuration => null;
  dynamic get fadeOutCurve => const _Stub();
  dynamic get fadeInDuration => Duration.zero;
  dynamic get fadeInCurve => const _Stub();
  dynamic get width => null;
  dynamic get height => null;
  dynamic get fit => null;
  dynamic get alignment => const _Stub();
  dynamic get repeat => const _Stub();
  dynamic get matchTextDirection => false;
  dynamic get httpHeaders => null;
  dynamic get useOldImageOnUrlChange => false;
  dynamic get color => null;
  dynamic get colorBlendMode => null;
  dynamic get filterQuality => const _Stub();
  dynamic get memCacheWidth => null;
  dynamic get memCacheHeight => null;
  dynamic get maxWidthDiskCache => null;
  dynamic get maxHeightDiskCache => null;
  dynamic get errorListener => null;
  static dynamic evictFromCache(
    dynamic url, {
    dynamic cacheKey,
    dynamic cacheManager,
    dynamic scale,
  }) => Future<bool>.value(false);
}

class Event {
  const Event({
    dynamic teamId,
    dynamic playerId,
    dynamic order,
    dynamic gameTime,
    dynamic addedTime,
    dynamic gameTimeDisplay,
    dynamic gameTimeAndStatusDisplayType,
    dynamic type,
    dynamic extraPlayers,
    dynamic player,
    dynamic team,
    dynamic extraPlayerDetails,
  });
  dynamic get teamId => 0;
  dynamic get playerId => 0;
  dynamic get order => 0;
  dynamic get gameTime => 0;
  dynamic get addedTime => 0;
  dynamic get gameTimeDisplay => '';
  dynamic get gameTimeAndStatusDisplayType => 0;
  dynamic get type => EventType();
  dynamic get extraPlayers => <int>[];
  dynamic get player => null;
  dynamic get team => null;
  dynamic get extraPlayerDetails => null;
  dynamic get props => <Object?>[];
  dynamic copyWith({
    dynamic teamId,
    dynamic playerId,
    dynamic order,
    dynamic gameTime,
    dynamic addedTime,
    dynamic gameTimeDisplay,
    dynamic gameTimeAndStatusDisplayType,
    dynamic type,
    dynamic player,
    dynamic team,
    dynamic extraPlayerDetails,
  }) => Event();
}

class EventType {
  const EventType({
    dynamic id,
    dynamic name,
    dynamic subTypeId,
    dynamic subTypeName,
  });
  dynamic get id => EventId.goal;
  dynamic get name => '';
  dynamic get subTypeId => 0;
  dynamic get subTypeName => null;
}

class FixtureDetails {
  const FixtureDetails({
    dynamic fixture,
    dynamic events,
    dynamic members,
    dynamic venue,
  });
  dynamic get fixture => const _Stub();
  dynamic get events => [];
  dynamic get members => [];
  dynamic get venue => const _Stub();
  dynamic get homePlayersInfo => [];
  dynamic get awayPlayersInfo => [];
  dynamic get sortedEvents => [];
  dynamic get props => <Object?>[];
}

extension MediaQueryExtension on BuildContext {
  dynamic get width => 0.0;
  dynamic get height => 0.0;
}

extension NameFormatter on String {
  dynamic get leagueName => '';
  dynamic get teamName => '';
  dynamic get playerName => '';
  dynamic shortenByWords([dynamic maxWords]) => '';
}

class Player {
  const Player({
    dynamic id,
    dynamic competitorId,
    dynamic name,
    dynamic number,
    dynamic shortName,
    dynamic nameForURL,
  });
  dynamic get id => 0;
  dynamic get competitorId => 0;
  dynamic get name => '';
  dynamic get shortName => '';
  dynamic get nameForURL => '';
  dynamic get number => 0;
  dynamic get props => <Object?>[];
}

extension ResponsiveDouble on double {
  dynamic get width => 0.0;
  dynamic get height => 0.0;
  dynamic get radius => 0.0;
}

extension ResponsiveInt on int {
  dynamic get width => 0.0;
  dynamic get height => 0.0;
  dynamic get radius => 0.0;
}

class Team {
  const Team({
    dynamic id,
    dynamic name,
    dynamic logo,
    dynamic score,
    dynamic aggregatedScore,
    dynamic color,
    dynamic awayColor,
    dynamic lineup,
  });
  dynamic get id => 0;
  dynamic get name => '';
  dynamic get logo => '';
  dynamic get score => 0;
  dynamic get aggregatedScore => null;
  dynamic get color => null;
  dynamic get awayColor => null;
  dynamic get lineup => null;
  dynamic get props => <Object?>[];
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

extension AppL10nBuildContext on BuildContext {
  dynamic get l10n => S();
  dynamic get localeName => '';
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
  }) => const _Stub();
  dynamic lerp(dynamic other, dynamic t) => const _Stub();
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

class SvgPicture extends StatelessWidget {
  const SvgPicture(
    dynamic bytesLoader, {
    super.key,
    dynamic width,
    dynamic height,
    dynamic fit,
    dynamic alignment,
    dynamic matchTextDirection,
    dynamic allowDrawingOutsideViewBox,
    dynamic placeholderBuilder,
    dynamic colorFilter,
    dynamic semanticsLabel,
    dynamic excludeFromSemantics,
    dynamic clipBehavior,
    dynamic errorBuilder,
    dynamic theme,
    dynamic cacheColorFilter,
    dynamic renderingStrategy,
  });
  SvgPicture.asset(
    dynamic assetName, {
    super.key,
    dynamic matchTextDirection,
    dynamic bundle,
    dynamic package,
    dynamic width,
    dynamic height,
    dynamic fit,
    dynamic alignment,
    dynamic allowDrawingOutsideViewBox,
    dynamic placeholderBuilder,
    dynamic semanticsLabel,
    dynamic excludeFromSemantics,
    dynamic clipBehavior,
    dynamic errorBuilder,
    dynamic theme,
    dynamic colorMapper,
    dynamic colorFilter,
    dynamic color,
    dynamic colorBlendMode,
    dynamic cacheColorFilter,
    dynamic renderingStrategy,
  });
  SvgPicture.network(
    dynamic url, {
    super.key,
    dynamic headers,
    dynamic width,
    dynamic height,
    dynamic fit,
    dynamic alignment,
    dynamic matchTextDirection,
    dynamic allowDrawingOutsideViewBox,
    dynamic placeholderBuilder,
    dynamic colorFilter,
    dynamic color,
    dynamic colorBlendMode,
    dynamic semanticsLabel,
    dynamic excludeFromSemantics,
    dynamic clipBehavior,
    dynamic errorBuilder,
    dynamic cacheColorFilter,
    dynamic theme,
    dynamic colorMapper,
    dynamic httpClient,
    dynamic renderingStrategy,
  });
  SvgPicture.file(
    dynamic file, {
    super.key,
    dynamic width,
    dynamic height,
    dynamic fit,
    dynamic alignment,
    dynamic matchTextDirection,
    dynamic allowDrawingOutsideViewBox,
    dynamic placeholderBuilder,
    dynamic colorFilter,
    dynamic color,
    dynamic colorBlendMode,
    dynamic semanticsLabel,
    dynamic excludeFromSemantics,
    dynamic clipBehavior,
    dynamic errorBuilder,
    dynamic theme,
    dynamic colorMapper,
    dynamic cacheColorFilter,
    dynamic renderingStrategy,
  });
  SvgPicture.memory(
    dynamic bytes, {
    super.key,
    dynamic width,
    dynamic height,
    dynamic fit,
    dynamic alignment,
    dynamic matchTextDirection,
    dynamic allowDrawingOutsideViewBox,
    dynamic placeholderBuilder,
    dynamic colorFilter,
    dynamic color,
    dynamic colorBlendMode,
    dynamic semanticsLabel,
    dynamic excludeFromSemantics,
    dynamic clipBehavior,
    dynamic errorBuilder,
    dynamic theme,
    dynamic colorMapper,
    dynamic cacheColorFilter,
    dynamic renderingStrategy,
  });
  SvgPicture.string(
    dynamic string, {
    super.key,
    dynamic width,
    dynamic height,
    dynamic fit,
    dynamic alignment,
    dynamic matchTextDirection,
    dynamic allowDrawingOutsideViewBox,
    dynamic placeholderBuilder,
    dynamic colorFilter,
    dynamic color,
    dynamic colorBlendMode,
    dynamic semanticsLabel,
    dynamic excludeFromSemantics,
    dynamic clipBehavior,
    dynamic errorBuilder,
    dynamic theme,
    dynamic colorMapper,
    dynamic cacheColorFilter,
    dynamic renderingStrategy,
  });
  @override
  Widget build(BuildContext context) => const SizedBox.shrink();
  static dynamic get defaultPlaceholderBuilder => const _Stub();
  static set defaultPlaceholderBuilder(dynamic _) {}
  dynamic get width => null;
  dynamic get height => null;
  dynamic get fit => const _Stub();
  dynamic get alignment => const _Stub();
  dynamic get bytesLoader => const _Stub();
  dynamic get placeholderBuilder => null;
  dynamic get matchTextDirection => false;
  dynamic get allowDrawingOutsideViewBox => false;
  dynamic get semanticsLabel => null;
  dynamic get excludeFromSemantics => false;
  dynamic get clipBehavior => const _Stub();
  dynamic get errorBuilder => null;
  dynamic get colorFilter => null;
  dynamic get renderingStrategy => const _Stub();
}
