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

AppThemeMode fixtureThemeMode = AppThemeMode.system;

// DECLARATION-ONLY STAND-INS -- repo-local declarations that build no UI, and
// third-party ones the transplant does not inline. Supertypes are mirrored so a
// widget still reads as a widget; everything else is `dynamic`, because none of it
// is measured.

class AppLocalizations {
  AppLocalizations(dynamic locale);
  dynamic get localeName => '';
  static const dynamic delegate = null;
  static const dynamic localizationsDelegates = null;
  static const dynamic supportedLocales = null;
  dynamic get appTitle => '';
  dynamic get enjoyingApp => '';
  dynamic get donate => '';
  dynamic get searchApps => '';
  dynamic get all => '';
  dynamic get user => '';
  dynamic get system => '';
  dynamic get closeSearch => '';
  dynamic get search => '';
  dynamic get autoUpdate => '';
  dynamic get refresh => '';
  dynamic get toggleTheme => '';
  dynamic get about => '';
  dynamic get loading => '';
  dynamic get developer => '';
  dynamic get email => '';
  dynamic get sourceCode => '';
  dynamic get blogs => '';
  dynamic get buyMeCoffee => '';
  dynamic get madeInBangladesh => '';
  dynamic get runningApp => '';
  dynamic get stopWarning => '';
  dynamic get activeServices => '';
  dynamic get shizukuRequired => '';
  dynamic get shizukuRequiredMessage => '';
  dynamic get setupSteps => '';
  dynamic get step1 => '';
  dynamic get step2 => '';
  dynamic get step3 => '';
  dynamic get step4 => '';
  dynamic get step5 => '';
  dynamic get quickStart => '';
  dynamic get quickStartSteps => '';
  dynamic get exitApp => '';
  dynamic get retry => '';
  dynamic get loadingServices => '';
  dynamic get deviceMemory => '';
  dynamic get noMatchingApps => '';
  dynamic get noAppsFound => '';
  dynamic get ofRam => '';
  dynamic get processAnd => '';
  dynamic get services => '';
  dynamic get apps => '';
  dynamic get used => '';
  dynamic get free => '';
  dynamic get stopService => '';
  dynamic get stopAllServices => '';
  dynamic get stopServiceConfirm => '';
  dynamic get stopAllServicesConfirm => '';
  dynamic get stopServiceWarning => '';
  dynamic get serviceStopped => '';
  dynamic get allServicesStopped => '';
  dynamic get stopServiceError => '';
  dynamic get cancel => '';
  dynamic get stop => '';
  dynamic get permissionRequired => '';
  dynamic get permissionRequiredMessage => '';
  dynamic get permissionSteps => '';
  dynamic get permissionStep1 => '';
  dynamic get permissionStep2 => '';
  dynamic get permissionStep3 => '';
  dynamic get permissionNote => '';
  dynamic get openShizuku => '';
  dynamic get systemAppWarning => '';
  dynamic get runningServicesTitle => '';
  dynamic get openRunningServicesTooltip => '';
  dynamic get error => '';
  dynamic get appInfoNotFound => '';
  dynamic get package => '';
  dynamic get service => '';
  dynamic get process => '';
  dynamic get pid => '';
  dynamic get uid => '';
  dynamic get ramUsage => '';
  dynamic get intent => '';
  dynamic get foreground => '';
  dynamic get foregroundId => '';
  dynamic get startRequested => '';
  dynamic get createdFromFg => '';
  dynamic get createTime => '';
  dynamic get lastActivity => '';
  dynamic get baseDir => '';
  dynamic get dataDir => '';
  dynamic get type => '';
  dynamic get systemApp => '';
  dynamic get userApp => '';
  dynamic get rawOutput => '';
  dynamic get close => '';
  dynamic get yes => '';
  dynamic get no => '';
  dynamic get connections => '';
  dynamic get flags => '';
  dynamic get bound => '';
  dynamic get processRecord => '';
  dynamic get visible => '';
  dynamic get capabilities => '';
  dynamic get active => '';
  dynamic get cached => '';
  dynamic get noServicesFound => '';
  dynamic get ramCalculation => '';
  dynamic get totalRam => '';
  dynamic get ramSources => '';
  dynamic get noRamDataAvailable => '';
  dynamic get ramCalculationExplanation => '';
  dynamic get playCommand => '';
  dynamic get copiedToClipboard => '';
  dynamic get copy => '';
  dynamic get and => '';
  dynamic get info => '';
  dynamic get followSystem => '';
  dynamic get contributors => '';
  dynamic get checkingPermissions => '';
  dynamic get shizukuNotRunning => '';
  dynamic get permissionDeniedShizuku => '';
  dynamic get failedToInitialize => '';
  dynamic get errorInitializingShizuku => '';
  dynamic get loadingApps => '';
  dynamic get refreshedSuccessfully => '';
  dynamic get errorLoadingData => '';
  dynamic get failedToStopAllServices => '';
  dynamic get language => '';
  dynamic get openGithubProfile => '';
  dynamic get appInfoTooltip => '';
  dynamic get ok => '';
  dynamic get recentCallingUid => '';
  dynamic get appDetails => '';
  dynamic get processStateTitle => '';
  dynamic get processStateFg => '';
  dynamic get processStateVis => '';
  dynamic get processStatePrev => '';
  dynamic get processStatePrcp => '';
  dynamic get processStateSvcb => '';
  dynamic get processStateHome => '';
  dynamic get processStateHvy => '';
  dynamic get processStatePsvc => '';
  dynamic get processStatePers => '';
  dynamic get processStateCchEmpty => '';
  dynamic get processStateCchAct => '';
  dynamic get processStateCchClient => '';
  dynamic get processStateCch => '';
  dynamic get processStateBfgs => '';
  dynamic get processStateRcvr => '';
  dynamic get processStateTop => '';
  dynamic get processStateBtop => '';
  dynamic get processStateImpf => '';
  dynamic get processStateImpb => '';
  dynamic get workingMode => '';
  dynamic get rootMode => '';
  dynamic get shizukuMode => '';
  dynamic get selectWorkingMode => '';
  dynamic get available => '';
  dynamic get notAvailable => '';
  dynamic get modeNotAvailable => '';
  dynamic get noModeAvailable => '';
  dynamic get commandLogs => '';
  dynamic get commandOutput => '';
  dynamic get noCommandLogs => '';
  dynamic get clearLogs => '';
  dynamic get clearLogsConfirm => '';
  dynamic get executedAt => '';
  dynamic get command => '';
  dynamic get noOutput => '';
  dynamic get executeCommand => '';
  dynamic get processes => '';
  dynamic get processesDescription => '';
  dynamic get noProcessesFound => '';
  dynamic get usedBreakdown => '';
  dynamic get freeBreakdown => '';
  dynamic get other => '';
  dynamic get usedPss => '';
  dynamic get kernel => '';
  dynamic get cachedPss => '';
  dynamic get cachedKernel => '';
  dynamic get actualFree => '';
  dynamic get gpu => '';
  dynamic get lostRam => '';
  dynamic get zramPhysical => '';
  dynamic get zramSwapUsed => '';
  dynamic get zramTotalSwap => '';
  dynamic get oomThreshold => '';
  dynamic get restoreLimit => '';
  dynamic get zramSection => '';
  dynamic get memoryThresholds => '';
  dynamic get boundServiceCannotStop => '';
  dynamic get memoryInfo => '';
  dynamic get viewRawOutput => '';
  dynamic get hideRawOutput => '';
  dynamic get compareWithOther => '';
  dynamic get memoryCategories => '';
  dynamic get appSummary => '';
  dynamic get objects => '';
  dynamic get memoryComparison => '';
  dynamic get selectAppToCompare => '';
  dynamic get selectApp => '';
  dynamic get totalPss => '';
  dynamic get totalRss => '';
  dynamic get javaHeap => '';
  dynamic get nativeHeap => '';
  dynamic get code => '';
  dynamic get graphics => '';
  dynamic get current => '';
  dynamic get allApps => '';
  dynamic get userApps => '';
  dynamic get systemApps => '';
  dynamic get compareWith => '';
  dynamic get stats => '';
  dynamic get statsLiveRamArea => '';
  dynamic get statsLiveRamAreaSubtitle => '';
  dynamic get statsRamDistribution => '';
  dynamic get statsRamLabel => '';
  dynamic get statsZram => '';
  dynamic get statsUserVsSystemRam => '';
  dynamic get statsAppStateDistribution => '';
  dynamic get statsActive => '';
  dynamic get statsBackground => '';
  dynamic get statsCached => '';
  dynamic get statsSystemVsUserAnalysis => '';
  dynamic get statsAppCount => '';
  dynamic get statsTotalRam => '';
  dynamic get statsPerformance => '';
  dynamic get statsRamDistributionScatter => '';
  dynamic get statsRamDistributionScatterSubtitle => '';
  dynamic get statsTopRamConsumers => '';
  dynamic get statsServicesVsRamCorrelation => '';
  dynamic get statsServicesVsRamSubtitle => '';
  dynamic get statsRamHistogram => '';
  dynamic get statsRamHistogramSubtitle => '';
  dynamic get statsMemoryHeatmap => '';
  dynamic get statsMemoryHeatmapSubtitle => '';
  dynamic get statsTopAppsRelativeImpact => '';
  dynamic get statsGanttSubtitle => '';
  dynamic get statsStackedAreaChart => '';
  dynamic get statsStackedAreaSubtitle => '';
  dynamic get statsPolarChart => '';
  dynamic get statsPolarSubtitle => '';
  dynamic get statsTreemap => '';
  dynamic get statsTreemapSubtitle => '';
  dynamic get statsFunnelChart => '';
  dynamic get statsFunnelSubtitle => '';
  dynamic get statsWaterfallChart => '';
  dynamic get statsWaterfallSubtitle => '';
  dynamic get statsGaugeChart => '';
  dynamic get statsGaugeSubtitle => '';
  dynamic get statsTiny => '';
  dynamic get statsSmall => '';
  dynamic get statsMedium => '';
  dynamic get statsLarge => '';
  dynamic get statsHuge => '';
  dynamic get statsNoData => '';
  dynamic get statsWaitingForData => '';
  dynamic get statsRamDistributionPie => '';
  dynamic get statsRamDistributionSubtitle => '';
  dynamic get statsUsed => '';
  dynamic get statsFree => '';
  dynamic get statsUserVsSystemPie => '';
  dynamic get statsUserVsSystemSubtitle => '';
  dynamic get statsProcessStateBar => '';
  dynamic get statsProcessStateSubtitle => '';
  dynamic get statsScatterChart => '';
  dynamic get statsScatterSubtitle => '';
  dynamic get core => '';
  dynamic get coreAppInfoLimited => '';
  dynamic get showCoreApps => '';
  dynamic get usefulCommands => '';
  dynamic get commands => '';
  dynamic get addCommand => '';
  dynamic get placeholders => '';
  dynamic get commandTitle => '';
  dynamic get commandDescription => '';
  dynamic get reExecute => '';
  dynamic get statsProcessVsRamLine => '';
  dynamic get statsProcessVsRamLineSubtitle => '';
  dynamic get statsUserVsSystemBar => '';
  dynamic get statsUserVsSystemBarSubtitle => '';
  dynamic get statsRamTrendScatter => '';
  dynamic get statsRamTrendScatterSubtitle => '';
  dynamic get statsServicesVsProcesses => '';
  dynamic get statsServicesVsProcessesSubtitle => '';
  dynamic get statsProcessStateRam => '';
  dynamic get statsProcessStateRamSubtitle => '';
  dynamic get myCommands => '';
  dynamic get defaultCommands => '';
  dynamic get resetDefaults => '';
  static dynamic of(dynamic context) => null;
  dynamic pageNotFound(dynamic location) => '';
  dynamic service_string(dynamic count) => '';
  dynamic process_string(dynamic count) => '';
  dynamic service_process_string(dynamic serviceCount, dynamic processCount) =>
      '';
  dynamic contributionsCount(dynamic count) => '';
  dynamic failedToStopServiceName(dynamic serviceName) => '';
  dynamic errorPrefix(dynamic error) => '';
  dynamic uidLabel(dynamic uid) => '';
  dynamic processStateUnknown(dynamic state) => '';
  dynamic statsRamDistributionTotal(dynamic size) => '';
  dynamic statsAppsCount(dynamic count) => '';
  dynamic get memoryDistribution => '';
  dynamic get memoryProfileComparison => '';
  dynamic get stack => '';
  dynamic get privateOther => '';
  dynamic get unknown => '';
  dynamic totalPssLabel(dynamic size) => '';
  dynamic get tipsAndSupport => '';
  dynamic get tipsRateTitle => '';
  dynamic get tipsRateDescription => '';
  dynamic get tipsRateAction => '';
  dynamic get tipsCoffeeTitle => '';
  dynamic get tipsCoffeeDescription => '';
  dynamic get tipsCoffeeAction => '';
  dynamic get tipsContributeTitle => '';
  dynamic get tipsContributeDescription => '';
  dynamic get tipsContributeAction => '';
  dynamic get placeholdersNoAutoFill => '';
  dynamic get placeholderPackageName => '';
  dynamic get placeholderProcessId => '';
  dynamic get placeholderAllPids => '';
  dynamic get placeholderTotalRamFormatted => '';
  dynamic get placeholderTotalRamKb => '';
  dynamic get placeholderProcessState => '';
  dynamic get placeholderCachedMemoryKb => '';
  dynamic get placeholderServicesCount => '';
  dynamic get placeholderProcessCount => '';
  dynamic get commandHintExample => '';
  dynamic get editCommand => '';
  dynamic get searchOutput => '';
  dynamic get noMatches => '';
  dynamic get nextMatch => '';
  dynamic get previousMatch => '';
  dynamic matchCount(dynamic current, dynamic total) => '';
  dynamic get changelog => '';
  dynamic get noChangelog => '';
  dynamic get rootRequiredMessage => '';
  dynamic get rootSetupSteps => '';
  dynamic get rootStep1 => '';
  dynamic get rootStep2 => '';
  dynamic get rootStep3 => '';
  dynamic get rootStep4 => '';
}

extension BuildContextExtensions on BuildContext {
  dynamic get loc => const _Stub();
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
