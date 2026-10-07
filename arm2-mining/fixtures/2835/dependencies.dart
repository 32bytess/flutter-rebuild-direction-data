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

late ScrollController fixtureScrollController; // TODO: value

late List<TeamRank> fixtureTeams; // TODO: value

late int fixtureTotalTeams; // TODO: value

late bool fixtureIsGrouped; // TODO: value

// DECLARATION-ONLY STAND-INS -- repo-local declarations that build no UI, and
// third-party ones the transplant does not inline. Supertypes are mirrored so a
// widget still reads as a widget; everything else is `dynamic`, because none of it
// is measured.

class AppBorderRadius {
  const AppBorderRadius._();
  static const dynamic chip = null;
  static const dynamic small = null;
  static const dynamic medium = null;
  static const dynamic card = null;
  static const dynamic large = null;
  static const dynamic pill = null;
  static dynamic get chipAll => const _Stub();
  static dynamic get smallAll => const _Stub();
  static dynamic get mediumAll => const _Stub();
  static dynamic get cardAll => const _Stub();
  static dynamic get largeAll => const _Stub();
  static dynamic get pillAll => const _Stub();
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

class AppSpacing {
  const AppSpacing._();
  static const dynamic micro = null;
  static const dynamic xs = null;
  static const dynamic s = null;
  static const dynamic m = null;
  static const dynamic l = null;
  static const dynamic xl = null;
  static const dynamic xxl = null;
  static const dynamic xxxl = null;
  static const dynamic section = null;
  static const dynamic jumbo = null;
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

extension ColorExtension on Color {
  dynamic withOpacitySafe(dynamic opacity) => const _Stub();
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

extension NameFormatter on String {
  dynamic get leagueName => '';
  dynamic get teamName => '';
  dynamic get playerName => '';
  dynamic shortenByWords([dynamic maxWords]) => '';
}

extension ResponsiveSizeExt on num {
  dynamic get w => 0.0;
  dynamic get h => 0.0;
  dynamic get sp => 0.0;
  dynamic get r => 0.0;
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
  dynamic get errorLoadFixtures => '';
  dynamic get noStandingsYet => '';
  dynamic get errorLoadStandings => '';
  dynamic get all => '';
  dynamic get allLeaguesTooltip => '';
  static dynamic load(dynamic locale) => Future<S>.value(S());
  static dynamic of(dynamic context) => S();
  static dynamic maybeOf(dynamic context) => null;
  dynamic aggregateScore(dynamic homeScore, dynamic awayScore) => '';
  dynamic roundNumber(dynamic number) => '';
  dynamic seasonNumber(dynamic number) => '';
  dynamic get fullLineups => '';
}

class Shimmer extends StatelessWidget {
  final dynamic child;
  const Shimmer({
    super.key,
    this.child,
    dynamic gradient,
    dynamic direction,
    dynamic period,
    dynamic loop,
    dynamic enabled,
  });
  Shimmer.fromColors({
    super.key,
    this.child,
    dynamic baseColor,
    dynamic highlightColor,
    dynamic period,
    dynamic direction,
    dynamic loop,
    dynamic enabled,
  });
  @override
  Widget build(BuildContext context) =>
      child is Widget ? child as Widget : const SizedBox.shrink();
  dynamic get period => Duration.zero;
  dynamic get direction => const _Stub();
  dynamic get gradient => const _Stub();
  dynamic get loop => 0;
  dynamic get enabled => false;
}

class StandingsMetrics {
  const StandingsMetrics({
    dynamic teamColumnWidth,
    dynamic statColumnWidth,
    dynamic formColumnWidth,
    dynamic rankBadgeSize,
    dynamic teamLogoSize,
    dynamic formIndicatorSize,
    dynamic formSpacing,
    dynamic horizontalPadding,
    dynamic verticalPadding,
    dynamic headerHorizontalPadding,
    dynamic headerVerticalPadding,
    dynamic teamContentSpacing,
  });
  StandingsMetrics.fromWidth(dynamic width);
  dynamic get teamColumnWidth => 0.0;
  dynamic get statColumnWidth => 0.0;
  dynamic get formColumnWidth => 0.0;
  dynamic get rankBadgeSize => 0.0;
  dynamic get teamLogoSize => 0.0;
  dynamic get formIndicatorSize => 0.0;
  dynamic get formSpacing => 0.0;
  dynamic get horizontalPadding => 0.0;
  dynamic get verticalPadding => 0.0;
  dynamic get headerHorizontalPadding => 0.0;
  dynamic get headerVerticalPadding => 0.0;
  dynamic get teamContentSpacing => 0.0;
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
    dynamic imageBuilder,
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
    dynamic imageBuilder,
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
    dynamic imageBuilder,
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
    dynamic imageBuilder,
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
    dynamic imageBuilder,
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
    dynamic imageBuilder,
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
  dynamic get imageBuilder => null;
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
    dynamic shortName,
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
  dynamic get shortName => null;
  dynamic get displayName => '';
}

class TeamRank {
  const TeamRank({
    dynamic rank,
    dynamic team,
    dynamic points,
    dynamic goalsDiff,
    dynamic form,
    dynamic stats,
    dynamic groupNum,
    dynamic destinationNum,
  });
  dynamic get rank => 0;
  dynamic get team => Team();
  dynamic get points => 0;
  dynamic get goalsDiff => 0;
  dynamic get form => <int>[];
  dynamic get stats => TeamRankStats();
  dynamic get groupNum => null;
  dynamic get destinationNum => null;
  dynamic get props => <Object?>[];
}

class TeamRankStats {
  const TeamRankStats({
    dynamic played,
    dynamic win,
    dynamic draw,
    dynamic lose,
    dynamic scored,
    dynamic received,
  });
  dynamic get played => 0;
  dynamic get win => 0;
  dynamic get draw => 0;
  dynamic get lose => 0;
  dynamic get scored => 0;
  dynamic get received => 0;
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
