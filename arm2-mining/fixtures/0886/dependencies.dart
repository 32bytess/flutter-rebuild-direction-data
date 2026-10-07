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

int fixtureCount = 0;

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
  dynamic get verifyCommand => '';
  dynamic get copiedToClipboard => '';
  dynamic get copy => '';
  static dynamic of(dynamic context) => null;
  dynamic pageNotFound(dynamic location) => '';
  dynamic get and => '';
  dynamic get info => '';
  dynamic service_string(dynamic count) => '';
  dynamic process_string(dynamic count) => '';
  dynamic service_process_string(dynamic serviceCount, dynamic processCount) =>
      '';
  dynamic get followSystem => '';
  dynamic get contributors => '';
  dynamic contributionsCount(dynamic count) => '';
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
  dynamic failedToStopServiceName(dynamic serviceName) => '';
  dynamic errorPrefix(dynamic error) => '';
  dynamic uidLabel(dynamic uid) => '';
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
  dynamic processStateUnknown(dynamic state) => '';
  dynamic get workingMode => '';
  dynamic get directMode => '';
  dynamic get rootMode => '';
  dynamic get shizukuMode => '';
  dynamic get selectWorkingMode => '';
  dynamic get available => '';
  dynamic get notAvailable => '';
  dynamic get modeNotAvailable => '';
  dynamic get noModeAvailable => '';
  dynamic get dumpPermission => '';
  dynamic get dumpPermissionGranted => '';
  dynamic get dumpPermissionNotGranted => '';
  dynamic get grantDumpPermissionHint => '';
  dynamic get grant => '';
  dynamic get failedToGrantPermission => '';
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
  dynamic get playCommand => '';
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
}

extension BuildContextExtensions on BuildContext {
  dynamic get loc => const _Stub();
}

extension ScaleExtension on num {
  dynamic get w => 0.0;
  dynamic get sw => 0.0;
  dynamic get sh => 0.0;
  dynamic get r => 0.0;
  dynamic get rSafe => 0.0;
  dynamic get rFixed => 0.0;
  dynamic get sp => 0.0;
  dynamic get h => 0.0;
  dynamic get spf => 0.0;
  Widget get horizontalSpace => const SizedBox.shrink();
  Widget get verticalSpace => const SizedBox.shrink();
  dynamic wMax(dynamic max) => 0.0;
  dynamic wMin(dynamic min) => 0.0;
  dynamic wClamp(dynamic min, dynamic max) => 0.0;
  dynamic hMax(dynamic max) => 0.0;
  dynamic hMin(dynamic min) => 0.0;
  dynamic hClamp(dynamic min, dynamic max) => 0.0;
  dynamic swMax(dynamic max) => 0.0;
  dynamic swMin(dynamic min) => 0.0;
  dynamic swClamp(dynamic min, dynamic max) => 0.0;
  dynamic shMax(dynamic max) => 0.0;
  dynamic shMin(dynamic min) => 0.0;
  dynamic shClamp(dynamic min, dynamic max) => 0.0;
  dynamic rMax(dynamic max) => 0.0;
  dynamic rMin(dynamic min) => 0.0;
  dynamic rClamp(dynamic min, dynamic max) => 0.0;
  dynamic spMax(dynamic max) => 0.0;
  dynamic spMin(dynamic min) => 0.0;
  dynamic spClamp(dynamic min, dynamic max) => 0.0;
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
