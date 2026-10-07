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

late  Function() fixtureOnCancel; // TODO: value

late  Function(Color) fixtureOnConfirm; // TODO: value

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

Color? fixturePickerColor = null; // TODO: value

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
  dynamic get ok => '';
  dynamic get cancel => '';
  dynamic get delete => '';
  dynamic get add => '';
  dynamic get edit => '';
  dynamic get save => '';
  dynamic get done => '';
  dynamic get yes => '';
  dynamic get no => '';
  dynamic get close => '';
  dynamic get reset => '';
  dynamic get retry => '';
  dynamic get loading => '';
  dynamic get logout => '';
  dynamic get register => '';
  dynamic get login => '';
  dynamic get system => '';
  dynamic get file => '';
  dynamic get light => '';
  dynamic get dark => '';
  dynamic get settings => '';
  dynamic get theme => '';
  dynamic get dynamicColors => '';
  dynamic get ignoreCertificates => '';
  dynamic get enableSentry => '';
  dynamic get sentryHelp => '';
  dynamic get getVersionNotifications => '';
  dynamic get sendTestNotification => '';
  dynamic get checkForLatestVersion => '';
  dynamic get defaultProject => '';
  dynamic get none => '';
  dynamic get description => '';
  dynamic get dueDate => '';
  dynamic get rememberMe => '';
  dynamic get loginWithFrontend => '';
  dynamic get enterOneTimePasscode => '';
  dynamic get password => '';
  dynamic get username => '';
  dynamic get serverAddress => '';
  dynamic get invalidUrl => '';
  dynamic get pleaseSpecifyUsername => '';
  dynamic get emailAddress => '';
  dynamic get emailInvalid => '';
  dynamic get passwordMinChars => '';
  dynamic get passwordsDontMatch => '';
  dynamic get showDoneTasks => '';
  dynamic get title => '';
  dynamic get project => '';
  dynamic get newTaskName => '';
  dynamic get newTaskExample => '';
  dynamic get enterTitle => '';
  dynamic get limitLabel => '';
  dynamic get backgroundRefreshInterval => '';
  dynamic get noLimitHelper => '';
  dynamic get addTaskTooltip => '';
  dynamic get newBucketName => '';
  dynamic get bucketExample => '';
  dynamic get projectExample => '';
  dynamic get priority => '';
  dynamic get addNewLabel => '';
  dynamic get repeatAfter => '';
  dynamic get noDescription => '';
  dynamic get dueDateLabel => '';
  dynamic get startDateLabel => '';
  dynamic get endDateLabel => '';
  dynamic get reminder => '';
  dynamic get addReminder => '';
  dynamic get setColor => '';
  dynamic get currentVersionUnknown => '';
  dynamic get noNotificationPermission => '';
  dynamic get onlyShowTasksWithDueDate => '';
  dynamic get noTasks => '';
  dynamic get noViews => '';
  dynamic get notImplemented => '';
  dynamic get homeTab => '';
  dynamic get projectsTab => '';
  dynamic get settingsTab => '';
  dynamic get viewOnGithub => '';
  dynamic get unsavedChangesTitle => '';
  dynamic get unsavedChangesMessage => '';
  dynamic get dismiss => '';
  dynamic get keepEditing => '';
  dynamic get deleteTaskTitle => '';
  dynamic get deleteTaskMessage => '';
  dynamic get taskColorTitle => '';
  dynamic get sentryDialogTitle => '';
  dynamic get kanbanAddBucket => '';
  dynamic get badgeDone => '';
  dynamic get bucketAddedSuccess => '';
  dynamic get bucketAddError => '';
  dynamic get bucketUpdateError => '';
  dynamic get taskMoveError => '';
  dynamic get bucketDeleteError => '';
  dynamic get taskAddedSuccess => '';
  dynamic get taskAddError => '';
  dynamic get taskMarkDoneError => '';
  dynamic get failedToMarkDone => '';
  dynamic get selectDefaultProject => '';
  dynamic get editTaskTitle => '';
  dynamic get taskDeleteError => '';
  dynamic get taskSaveError => '';
  dynamic get taskUpdatedSuccess => '';
  dynamic get editDescriptionTitle => '';
  dynamic get editCommentTitle => '';
  dynamic get addCommentTitle => '';
  dynamic get comments => '';
  dynamic get noComments => '';
  dynamic get commentsLoadError => '';
  dynamic get commentEdited => '';
  dynamic get commentInputHint => '';
  dynamic get commentCannotBeEmpty => '';
  dynamic get commentAddError => '';
  dynamic get commentUpdateError => '';
  dynamic get commentDeleteError => '';
  dynamic get deleteCommentTitle => '';
  dynamic get deleteCommentConfirm => '';
  dynamic get addCommentTooltip => '';
  dynamic get editProjectTitle => '';
  dynamic get projectUpdatedSuccess => '';
  dynamic get projectUpdateError => '';
  dynamic get projectsTitle => '';
  dynamic get vikunjaLogoAlt => '';
  dynamic get pleaseEnterValidFrontendUrl => '';
  dynamic get enterOtpTitle => '';
  dynamic get cannotReachServer => '';
  dynamic get somethingWentWrong => '';
  dynamic get registrationFailed => '';
  dynamic get downloading => '';
  dynamic get downloadFinished => '';
  dynamic get removeLimit => '';
  dynamic get projectSection => '';
  dynamic get tasksSection => '';
  dynamic get noTasksOrSubproject => '';
  dynamic get priorityUnset => '';
  dynamic get priorityLow => '';
  dynamic get priorityMedium => '';
  dynamic get priorityHigh => '';
  dynamic get priorityUrgent => '';
  dynamic get priorityDoNow => '';
  dynamic get repeatUnitHours => '';
  dynamic get repeatUnitDays => '';
  dynamic get repeatUnitWeeks => '';
  dynamic get repeatUnitMonths => '';
  dynamic get repeatUnitYears => '';
  dynamic get noDueDate => '';
  dynamic get noStartDate => '';
  dynamic get noEndDate => '';
  dynamic get noPriority => '';
  dynamic get percentUnset => '';
  dynamic get dueInOneDay => '';
  dynamic get dueInOneWeek => '';
  dynamic get dueInOneMonth => '';
  dynamic get enterExactTime => '';
  dynamic get loginExpiredMessage => '';
  dynamic get deleteBucketTitle => '';
  dynamic get deleteBucketMessage => '';
  dynamic get sentryDialogMessage => '';
  dynamic get language => '';
  dynamic get systemLanguage => '';
  dynamic get connectionError => '';
  dynamic get dueOptionNone => '';
  dynamic get dueOptionToday => '';
  dynamic get dueOptionTomorrow => '';
  dynamic get dueOptionNextMonday => '';
  dynamic get dueOptionThisWeekend => '';
  dynamic get dueOptionLaterThisWeek => '';
  dynamic get dueOptionCustom => '';
  dynamic get versionDialogTitle => '';
  dynamic get versionDialogDescription => '';
  static dynamic of(dynamic context) => const _Stub();
  dynamic currentVersionPrefix(dynamic version) => '';
  dynamic latestVersionPrefix(dynamic version) => '';
  dynamic newVersionAvailable(dynamic version) => '';
  dynamic registrationFailedLong(dynamic error) => '';
  dynamic changeBucketTitle(dynamic title) => '';
  dynamic bucketLimitTitle(dynamic title) => '';
  dynamic versionDialogSupported(dynamic versionString) => '';
  dynamic versionDialogUsed(dynamic versionString) => '';
  dynamic get loginServerExplanation => '';
  dynamic get vikunjaCloud => '';
  dynamic get tryDemo => '';
  dynamic get orEnterServerUrl => '';
  dynamic get customServerUrl => '';
  dynamic get connectionTimeout => '';
  dynamic get oauthBrowserLaunchFailed => '';
  dynamic get oauthStateMismatch => '';
  dynamic get oauthNoAuthorizationCode => '';
  dynamic get oauthTokenExchangeFailed => '';
  dynamic serverAddressHint(dynamic exampleUrl) => '';
}

enum ColorLabelType { hex, rgb, hsv, hsl }

enum PaletteType {
  hsv,
  hsvWithHue,
  hsvWithValue,
  hsvWithSaturation,
  hsl,
  hslWithHue,
  hslWithLightness,
  hslWithSaturation,
  rgbWithBlue,
  rgbWithGreen,
  rgbWithRed,
  hueWheel,
}

enum TrackType {
  hue,
  saturation,
  saturationForHSL,
  value,
  lightness,
  red,
  green,
  blue,
  alpha,
}

dynamic colorFromHex(dynamic inputString, {dynamic enableAlpha}) => null;

dynamic colorToHex(
  dynamic color, {
  dynamic includeHashSign,
  dynamic enableAlpha,
  dynamic toUpperCase,
}) => '';

dynamic hslToHsv(dynamic color) => const _Stub();

dynamic hsvToHsl(dynamic color) => const _Stub();

const dynamic kValidHexPattern = null; // TODO: value

dynamic useWhiteForeground(dynamic backgroundColor, {dynamic bias}) => false;

// UNRESOLVED-REFERENCE STAND-INS -- reconstructed from the call sites, because the
// symbol lives in a package this file may not import or the source project's own
// dependencies were never installed. Every type here is `dynamic`.

extension _SpmPaintShim on Paint {
  dynamic get blendMode => const _Stub();
  dynamic get color => const _Stub();
  dynamic get shader => const _Stub();
  dynamic get strokeWidth => const _Stub();
  dynamic get style => const _Stub();
}

extension _SpmTextEditingControllerShim on TextEditingController {
  dynamic get text => const _Stub();
}

extension _SpmAlwaysWinPanGestureRecognizerShim
    on _AlwaysWinPanGestureRecognizer {
  dynamic get onDown => const _Stub();
  dynamic get onUpdate => const _Stub();
}

dynamic _colorType = const _Stub();

dynamic colorHistory = const _Stub();

dynamic currentHsvColor = const _Stub();

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
