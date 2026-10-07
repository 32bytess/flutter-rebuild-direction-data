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

late String fixtureTitle; // TODO: value

late Widget? fixtureTitleWidget; // TODO: value

late bool fixtureLargeTitle; // TODO: value

late List<Widget> fixtureSlivers; // TODO: value

late List<Widget>? fixtureActions; // TODO: value

late Widget? fixtureLeading; // TODO: value

late ScrollPhysics? fixturePhysics; // TODO: value

late bool fixtureAutomaticallyImplyLeading; // TODO: value

late double fixtureBottomPadding; // TODO: value

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

SettingsController fixtureCtrl = SettingsController.instance;

double fixtureScrollOffset = 0;

bool fixtureOwnsController = false;

// DECLARATION-ONLY STAND-INS -- repo-local declarations that build no UI, and
// third-party ones the transplant does not inline. Supertypes are mirrored so a
// widget still reads as a widget; everything else is `dynamic`, because none of it
// is measured.

class SettingsController extends ChangeNotifier {
  SettingsController._();
  static dynamic get instance => const _Stub();
  dynamic get showWelcome => false;
  set showWelcome(dynamic _) {}
  dynamic get resumeNotification => false;
  set resumeNotification(dynamic _) {}
  dynamic get interactionHaptics => false;
  set interactionHaptics(dynamic _) {}
  dynamic get roundIcon => false;
  set roundIcon(dynamic _) {}
  dynamic get marqueeFeature => false;
  set marqueeFeature(dynamic _) {}
  dynamic get marqueeSpeed => 0;
  set marqueeSpeed(dynamic _) {}
  dynamic get bigIslandMaxWidth => 0;
  set bigIslandMaxWidth(dynamic _) {}
  dynamic get bigIslandMinWidth => 0;
  set bigIslandMinWidth(dynamic _) {}
  dynamic get unlockAllFocus => false;
  set unlockAllFocus(dynamic _) {}
  dynamic get unlockFocusAuth => false;
  set unlockFocusAuth(dynamic _) {}
  dynamic get checkUpdateOnLaunch => false;
  set checkUpdateOnLaunch(dynamic _) {}
  dynamic get defaultFirstFloat => false;
  set defaultFirstFloat(dynamic _) {}
  dynamic get defaultEnableFloat => false;
  set defaultEnableFloat(dynamic _) {}
  dynamic get defaultShowIslandIcon => false;
  set defaultShowIslandIcon(dynamic _) {}
  dynamic get defaultMarquee => false;
  set defaultMarquee(dynamic _) {}
  dynamic get defaultFocusNotif => false;
  set defaultFocusNotif(dynamic _) {}
  dynamic get defaultDynamicHighlightColor => false;
  set defaultDynamicHighlightColor(dynamic _) {}
  dynamic get defaultOuterGlow => '';
  set defaultOuterGlow(dynamic _) {}
  dynamic get defaultIslandOuterGlow => '';
  set defaultIslandOuterGlow(dynamic _) {}
  dynamic get hideDesktopIcon => false;
  set hideDesktopIcon(dynamic _) {}
  dynamic get defaultRestoreLockscreen => false;
  set defaultRestoreLockscreen(dynamic _) {}
  dynamic get defaultPreserveSmallIcon => false;
  set defaultPreserveSmallIcon(dynamic _) {}
  dynamic get defaultOutEffectColor => '';
  set defaultOutEffectColor(dynamic _) {}
  dynamic get defaultIslandOuterGlowColor => '';
  set defaultIslandOuterGlowColor(dynamic _) {}
  dynamic get fullscreenBehavior => '';
  set fullscreenBehavior(dynamic _) {}
  dynamic get aiEnabled => false;
  set aiEnabled(dynamic _) {}
  dynamic get aiUrl => '';
  set aiUrl(dynamic _) {}
  dynamic get aiApiKey => '';
  set aiApiKey(dynamic _) {}
  dynamic get aiModel => '';
  set aiModel(dynamic _) {}
  dynamic get aiPrompt => '';
  set aiPrompt(dynamic _) {}
  dynamic get aiPromptInUser => false;
  set aiPromptInUser(dynamic _) {}
  dynamic get aiTimeout => 0;
  set aiTimeout(dynamic _) {}
  dynamic get aiTemperature => 0.0;
  set aiTemperature(dynamic _) {}
  dynamic get aiMaxTokens => 0;
  set aiMaxTokens(dynamic _) {}
  dynamic get aiLastLog => null;
  set aiLastLog(dynamic _) {}
  dynamic get configAppVersion => '';
  set configAppVersion(dynamic _) {}
  dynamic get themeMode => const _Stub();
  set themeMode(dynamic _) {}
  dynamic get islandBgSmallPath => '';
  set islandBgSmallPath(dynamic _) {}
  dynamic get islandBgBigPath => '';
  set islandBgBigPath(dynamic _) {}
  dynamic get islandBgExpandPath => '';
  set islandBgExpandPath(dynamic _) {}
  dynamic get islandHeight => 0.0;
  set islandHeight(dynamic _) {}
  dynamic get keepIsland => false;
  set keepIsland(dynamic _) {}
  dynamic get keepIslandAutoHide => false;
  set keepIslandAutoHide(dynamic _) {}
  dynamic get themeSeedColor => 0;
  set themeSeedColor(dynamic _) {}
  dynamic get blurBars => false;
  set blurBars(dynamic _) {}
  dynamic get locale => null;
  set locale(dynamic _) {}
  dynamic get loading => false;
  set loading(dynamic _) {}
  dynamic setShowWelcome(dynamic value) => const _Stub();
  dynamic setResumeNotification(dynamic value) => const _Stub();
  dynamic setInteractionHaptics(dynamic value) => const _Stub();
  dynamic setRoundIcon(dynamic value) => const _Stub();
  dynamic setMarqueeFeature(dynamic value) => const _Stub();
  dynamic setMarqueeSpeed(dynamic value) => const _Stub();
  dynamic setBigIslandMaxWidth(dynamic value) => const _Stub();
  dynamic setBigIslandMinWidth(dynamic value) => const _Stub();
  dynamic setUnlockAllFocus(dynamic value) => const _Stub();
  dynamic setUnlockFocusAuth(dynamic value) => const _Stub();
  dynamic setCheckUpdateOnLaunch(dynamic value) => const _Stub();
  dynamic setDefaultFirstFloat(dynamic value) => const _Stub();
  dynamic setDefaultEnableFloat(dynamic value) => const _Stub();
  dynamic setDefaultShowIslandIcon(dynamic value) => const _Stub();
  dynamic setDefaultMarquee(dynamic value) => const _Stub();
  dynamic setDefaultFocusNotif(dynamic value) => const _Stub();
  dynamic setDefaultDynamicHighlightColor(dynamic value) => const _Stub();
  dynamic setDefaultOuterGlow(dynamic value) => const _Stub();
  dynamic setDefaultIslandOuterGlow(dynamic value) => const _Stub();
  dynamic setDefaultOutEffectColor(dynamic value) => const _Stub();
  dynamic setDefaultIslandOuterGlowColor(dynamic value) => const _Stub();
  dynamic setDefaultPreserveSmallIcon(dynamic value) => const _Stub();
  dynamic setFullscreenBehavior(dynamic value) => const _Stub();
  dynamic setHideDesktopIcon(dynamic value) => const _Stub();
  dynamic setDefaultRestoreLockscreen(dynamic value) => const _Stub();
  dynamic syncHideDesktopIconFromSystem() => const _Stub();
  dynamic setAiEnabled(dynamic value) => const _Stub();
  dynamic setAiUrl(dynamic value) => const _Stub();
  dynamic setAiApiKey(dynamic value) => const _Stub();
  dynamic setAiModel(dynamic value) => const _Stub();
  dynamic setAiPrompt(dynamic value) => const _Stub();
  dynamic setAiPromptInUser(dynamic value) => const _Stub();
  dynamic setAiTimeout(dynamic value) => const _Stub();
  dynamic setAiTemperature(dynamic value) => const _Stub();
  dynamic setAiMaxTokens(dynamic value) => const _Stub();
  dynamic saveAiLastLog(dynamic entry) => const _Stub();
  dynamic refreshAiLastLog() => const _Stub();
  dynamic setThemeMode(dynamic mode) => const _Stub();
  dynamic setLocale(dynamic loc) => const _Stub();
  dynamic setIslandBgSmallPath(dynamic value) => const _Stub();
  dynamic setIslandBgBigPath(dynamic value) => const _Stub();
  dynamic setIslandBgExpandPath(dynamic value) => const _Stub();
  dynamic setIslandHeight(dynamic value) => const _Stub();
  dynamic setKeepIsland(dynamic value) => const _Stub();
  dynamic setKeepIslandAutoHide(dynamic value) => const _Stub();
  dynamic setThemeSeedColor(dynamic value) => const _Stub();
  dynamic setBlurBars(dynamic value) => const _Stub();
  dynamic syncConfigAppVersion(dynamic currentVersion) =>
      Future<bool>.value(false);
  static dynamic compareVersionStrings(dynamic a, dynamic b) => 0;
  dynamic get keepIslandHighlightColor => '';
  set keepIslandHighlightColor(dynamic _) {}
  dynamic setKeepIslandHighlightColor(dynamic value) => const _Stub();
  dynamic get debugLog => false;
  set debugLog(dynamic _) {}
  dynamic setDebugLog(dynamic value) => const _Stub();
  dynamic get landscapeBehavior => '';
  set landscapeBehavior(dynamic _) {}
  dynamic get dndBehavior => '';
  set dndBehavior(dynamic _) {}
  dynamic setLandscapeBehavior(dynamic value) => const _Stub();
  dynamic setDndBehavior(dynamic value) => const _Stub();
  dynamic get onboardingCompleted => false;
  set onboardingCompleted(dynamic _) {}
  dynamic setOnboardingCompleted(dynamic value) => const _Stub();
  dynamic get settingsHomeEntry => false;
  set settingsHomeEntry(dynamic _) {}
  dynamic setSettingsHomeEntry(dynamic value) => const _Stub();
  dynamic get defaultForceOuterGlow => false;
  set defaultForceOuterGlow(dynamic _) {}
  dynamic get defaultForceIslandOuterGlow => false;
  set defaultForceIslandOuterGlow(dynamic _) {}
  dynamic setDefaultForceOuterGlow(dynamic value) => const _Stub();
  dynamic setDefaultForceIslandOuterGlow(dynamic value) => const _Stub();
  dynamic get defaultAodText => false;
  set defaultAodText(dynamic _) {}
  dynamic setDefaultAodText(dynamic value) => const _Stub();
  dynamic get bluetoothIsland => false;
  set bluetoothIsland(dynamic _) {}
  dynamic get bluetoothIslandOuterGlow => false;
  set bluetoothIslandOuterGlow(dynamic _) {}
  dynamic get bluetoothIslandOuterGlowColor => '';
  set bluetoothIslandOuterGlowColor(dynamic _) {}
  dynamic setBluetoothIsland(dynamic value) => const _Stub();
  dynamic setBluetoothIslandOuterGlow(dynamic value) => const _Stub();
  dynamic setBluetoothIslandOuterGlowColor(dynamic value) => const _Stub();
  dynamic get bluetoothIslandShowDeviceName => false;
  set bluetoothIslandShowDeviceName(dynamic _) {}
  dynamic setBluetoothIslandShowDeviceName(dynamic value) => const _Stub();
  dynamic get bluetoothIslandWhitelistEnabled => false;
  set bluetoothIslandWhitelistEnabled(dynamic _) {}
  dynamic get bluetoothIslandWhitelistAddresses => <String>[];
  set bluetoothIslandWhitelistAddresses(dynamic _) {}
  dynamic setBluetoothIslandWhitelistEnabled(dynamic value) => const _Stub();
  dynamic setBluetoothIslandWhitelistAddresses(dynamic addresses) =>
      const _Stub();
  dynamic get islandTopOffset => 0.0;
  set islandTopOffset(dynamic _) {}
  dynamic setIslandTopOffset(dynamic value) => const _Stub();
  dynamic get smoothIsland => false;
  set smoothIsland(dynamic _) {}
  dynamic get smoothIslandSmoothing => 0.0;
  set smoothIslandSmoothing(dynamic _) {}
  dynamic setSmoothIsland(dynamic value) => const _Stub();
  dynamic setSmoothIslandSmoothing(dynamic value) => const _Stub();
  dynamic get tempHideScreenPinning => false;
  set tempHideScreenPinning(dynamic _) {}
  dynamic get tempHideBouncerShowing => false;
  set tempHideBouncerShowing(dynamic _) {}
  dynamic get tempHideDesktopAnimating => false;
  set tempHideDesktopAnimating(dynamic _) {}
  dynamic get tempHideFullscreen => false;
  set tempHideFullscreen(dynamic _) {}
  dynamic get tempHideScreenLocked => false;
  set tempHideScreenLocked(dynamic _) {}
  dynamic get tempHideNotificationCenter => false;
  set tempHideNotificationCenter(dynamic _) {}
  dynamic get tempHideControlCenter => false;
  set tempHideControlCenter(dynamic _) {}
  dynamic setTempHideScreenPinning(dynamic value) => const _Stub();
  dynamic setTempHideBouncerShowing(dynamic value) => const _Stub();
  dynamic setTempHideDesktopAnimating(dynamic value) => const _Stub();
  dynamic setTempHideFullscreen(dynamic value) => const _Stub();
  dynamic setTempHideScreenLocked(dynamic value) => const _Stub();
  dynamic setTempHideNotificationCenter(dynamic value) => const _Stub();
  dynamic setTempHideControlCenter(dynamic value) => const _Stub();
  dynamic get islandTextColorMode => '';
  set islandTextColorMode(dynamic _) {}
  dynamic setIslandTextColorMode(dynamic value) => const _Stub();
  dynamic get tempHideBehaviorEnabled => false;
  set tempHideBehaviorEnabled(dynamic _) {}
  dynamic setTempHideBehaviorEnabled(dynamic value) => const _Stub();
  dynamic get chargeIsland => false;
  set chargeIsland(dynamic _) {}
  dynamic get chargeIslandLeftMode => '';
  set chargeIslandLeftMode(dynamic _) {}
  dynamic get chargeIslandRightMode => '';
  set chargeIslandRightMode(dynamic _) {}
  dynamic get chargeIslandDurationMode => '';
  set chargeIslandDurationMode(dynamic _) {}
  dynamic get chargeIslandDurationSeconds => 0;
  set chargeIslandDurationSeconds(dynamic _) {}
  dynamic setChargeIsland(dynamic value) => const _Stub();
  dynamic setChargeIslandLeftMode(dynamic value) => const _Stub();
  dynamic setChargeIslandRightMode(dynamic value) => const _Stub();
  dynamic setChargeIslandDurationMode(dynamic value) => const _Stub();
  dynamic setChargeIslandDurationSeconds(dynamic value) => const _Stub();
  dynamic get chargeIslandOuterGlow => false;
  set chargeIslandOuterGlow(dynamic _) {}
  dynamic setChargeIslandOuterGlow(dynamic value) => const _Stub();
  dynamic get keepIslandHideLandscape => false;
  set keepIslandHideLandscape(dynamic _) {}
  dynamic setKeepIslandHideLandscape(dynamic value) => const _Stub();
  dynamic get defaultMarqueeAutoHide => '';
  set defaultMarqueeAutoHide(dynamic _) {}
  dynamic setDefaultMarqueeAutoHide(dynamic value) => const _Stub();
  dynamic get bluetoothIslandDisplayDurationSeconds => 0;
  set bluetoothIslandDisplayDurationSeconds(dynamic _) {}
  dynamic setBluetoothIslandDisplayDurationSeconds(dynamic value) =>
      const _Stub();
  dynamic get keepIslandLeftContent => '';
  set keepIslandLeftContent(dynamic _) {}
  dynamic get keepIslandRightContent => '';
  set keepIslandRightContent(dynamic _) {}
  dynamic setKeepIslandLeftContent(dynamic value) => const _Stub();
  dynamic setKeepIslandRightContent(dynamic value) => const _Stub();
  dynamic get aiTriggerCharCount => 0;
  set aiTriggerCharCount(dynamic _) {}
  dynamic setAiTriggerCharCount(dynamic value) => const _Stub();
  dynamic get keepIslandFocusNotification => false;
  set keepIslandFocusNotification(dynamic _) {}
  dynamic get keepIslandNotificationTitle => '';
  set keepIslandNotificationTitle(dynamic _) {}
  dynamic get keepIslandNotificationContent => '';
  set keepIslandNotificationContent(dynamic _) {}
  dynamic setKeepIslandFocusNotification(dynamic value) => const _Stub();
  dynamic setKeepIslandNotificationTitle(dynamic value) => const _Stub();
  dynamic setKeepIslandNotificationContent(dynamic value) => const _Stub();
  dynamic get keepIslandShowIslandIcon => false;
  set keepIslandShowIslandIcon(dynamic _) {}
  dynamic get keepIslandCustomIconPath => '';
  set keepIslandCustomIconPath(dynamic _) {}
  dynamic setKeepIslandShowIslandIcon(dynamic value) => const _Stub();
  dynamic setKeepIslandCustomIconPath(dynamic value) => const _Stub();
  dynamic get islandBlurSmallEnabled => false;
  set islandBlurSmallEnabled(dynamic _) {}
  dynamic get islandBlurSmallRadius => 0;
  set islandBlurSmallRadius(dynamic _) {}
  dynamic get islandBlurSmallColor => '';
  set islandBlurSmallColor(dynamic _) {}
  dynamic get islandBlurBigEnabled => false;
  set islandBlurBigEnabled(dynamic _) {}
  dynamic get islandBlurBigRadius => 0;
  set islandBlurBigRadius(dynamic _) {}
  dynamic get islandBlurBigColor => '';
  set islandBlurBigColor(dynamic _) {}
  dynamic get islandBlurExpandEnabled => false;
  set islandBlurExpandEnabled(dynamic _) {}
  dynamic get islandBlurExpandRadius => 0;
  set islandBlurExpandRadius(dynamic _) {}
  dynamic get islandBlurExpandColor => '';
  set islandBlurExpandColor(dynamic _) {}
  dynamic setIslandBlurSmall({
    dynamic enabled,
    dynamic radius,
    dynamic color,
  }) => const _Stub();
  dynamic setIslandBlurBig({dynamic enabled, dynamic radius, dynamic color}) =>
      const _Stub();
  dynamic setIslandBlurExpand({
    dynamic enabled,
    dynamic radius,
    dynamic color,
  }) => const _Stub();
  dynamic get tempHideFullscreenLandscapeDisable => false;
  set tempHideFullscreenLandscapeDisable(dynamic _) {}
  dynamic setTempHideFullscreenLandscapeDisable(dynamic value) => const _Stub();
  dynamic get alwaysShowIslandOutline => false;
  set alwaysShowIslandOutline(dynamic _) {}
  dynamic get alwaysShowFocusOutline => false;
  set alwaysShowFocusOutline(dynamic _) {}
  dynamic setAlwaysShowIslandOutline(dynamic value) => const _Stub();
  dynamic setAlwaysShowFocusOutline(dynamic value) => const _Stub();
  dynamic get focusNotificationTextColorMode => '';
  set focusNotificationTextColorMode(dynamic _) {}
  dynamic setFocusNotificationTextColorMode(dynamic value) => const _Stub();
  dynamic get keepIslandLeftHighlight => false;
  set keepIslandLeftHighlight(dynamic _) {}
  dynamic get keepIslandRightHighlight => false;
  set keepIslandRightHighlight(dynamic _) {}
  dynamic setKeepIslandLeftHighlight(dynamic value) => const _Stub();
  dynamic setKeepIslandRightHighlight(dynamic value) => const _Stub();
  dynamic get outerGlowRange => 0;
  set outerGlowRange(dynamic _) {}
  dynamic setOuterGlowRange(dynamic value) => const _Stub();
  dynamic get islandGlassEnabled => false;
  set islandGlassEnabled(dynamic _) {}
  dynamic get islandGlassEdgeWidth => 0;
  set islandGlassEdgeWidth(dynamic _) {}
  dynamic get islandGlassRefraction => 0;
  set islandGlassRefraction(dynamic _) {}
  dynamic get islandGlassHighlight => 0;
  set islandGlassHighlight(dynamic _) {}
  dynamic get islandGlassShadow => 0;
  set islandGlassShadow(dynamic _) {}
  dynamic get islandGlassLightDirection => 0;
  set islandGlassLightDirection(dynamic _) {}
  dynamic get islandGlassDispersion => 0;
  set islandGlassDispersion(dynamic _) {}
  dynamic get islandGlassGyroscope => false;
  set islandGlassGyroscope(dynamic _) {}
  dynamic setIslandGlassEnabled(dynamic value) => const _Stub();
  dynamic setIslandGlassGyroscope(dynamic value) => const _Stub();
  dynamic setIslandGlassEdgeWidth(dynamic value) => const _Stub();
  dynamic setIslandGlassRefraction(dynamic value) => const _Stub();
  dynamic setIslandGlassHighlight(dynamic value) => const _Stub();
  dynamic setIslandGlassShadow(dynamic value) => const _Stub();
  dynamic setIslandGlassLightDirection(dynamic value) => const _Stub();
  dynamic setIslandGlassDispersion(dynamic value) => const _Stub();
  dynamic get islandGlassTrueRefraction => false;
  set islandGlassTrueRefraction(dynamic _) {}
  dynamic setIslandGlassTrueRefraction(dynamic value) => const _Stub();
  dynamic get islandGlassCaptureFps => 0;
  set islandGlassCaptureFps(dynamic _) {}
  dynamic get islandGlassCaptureQuality => 0;
  set islandGlassCaptureQuality(dynamic _) {}
  dynamic setIslandGlassCaptureSettings({dynamic fps, dynamic quality}) =>
      const _Stub();
  dynamic get islandGlassSmallEnabled => false;
  set islandGlassSmallEnabled(dynamic _) {}
  dynamic get islandGlassBigEnabled => false;
  set islandGlassBigEnabled(dynamic _) {}
  dynamic get islandGlassExpandEnabled => false;
  set islandGlassExpandEnabled(dynamic _) {}
  dynamic get islandRefractionSmallEnabled => false;
  set islandRefractionSmallEnabled(dynamic _) {}
  dynamic get islandRefractionBigEnabled => false;
  set islandRefractionBigEnabled(dynamic _) {}
  dynamic get islandRefractionExpandEnabled => false;
  set islandRefractionExpandEnabled(dynamic _) {}
  dynamic setIslandGlassSmallEnabled(dynamic value) => const _Stub();
  dynamic setIslandGlassBigEnabled(dynamic value) => const _Stub();
  dynamic setIslandGlassExpandEnabled(dynamic value) => const _Stub();
  dynamic setIslandRefractionSmallEnabled(dynamic value) => const _Stub();
  dynamic setIslandRefractionBigEnabled(dynamic value) => const _Stub();
  dynamic setIslandRefractionExpandEnabled(dynamic value) => const _Stub();
  dynamic get defaultTimeout => 0;
  set defaultTimeout(dynamic _) {}
  dynamic setDefaultTimeout(dynamic value) => const _Stub();
  dynamic get islandGlassHdrHighlight => false;
  set islandGlassHdrHighlight(dynamic _) {}
  dynamic setIslandGlassHdrHighlight(dynamic value) => const _Stub();
  dynamic get mediaNotificationTextColorMode => '';
  set mediaNotificationTextColorMode(dynamic _) {}
  dynamic setMediaNotificationTextColorMode(dynamic value) => const _Stub();
  dynamic get tempHideForegroundApp => false;
  set tempHideForegroundApp(dynamic _) {}
  dynamic setTempHideForegroundApp(dynamic value) => const _Stub();
  dynamic get roundIconRadius => 0;
  set roundIconRadius(dynamic _) {}
  dynamic setRoundIconRadius(dynamic value) => const _Stub();
  dynamic get keepIslandLeftContents => <String>[];
  set keepIslandLeftContents(dynamic _) {}
  dynamic get keepIslandRightContents => <String>[];
  set keepIslandRightContents(dynamic _) {}
  dynamic get keepIslandCarouselInterval => 0;
  set keepIslandCarouselInterval(dynamic _) {}
  dynamic setKeepIslandLeftContents(dynamic values) => const _Stub();
  dynamic setKeepIslandRightContents(dynamic values) => const _Stub();
  dynamic setKeepIslandCarouselInterval(dynamic value) => const _Stub();
  dynamic get settingsHomeEntryIconStyle => '';
  set settingsHomeEntryIconStyle(dynamic _) {}
  dynamic setSettingsHomeEntryIconStyle(dynamic value) => const _Stub();
  dynamic get faceUnlockIsland => false;
  set faceUnlockIsland(dynamic _) {}
  dynamic get faceUnlockIslandFirstFloat => false;
  set faceUnlockIslandFirstFloat(dynamic _) {}
  dynamic get hideLockscreenFaceUnlockIcon => false;
  set hideLockscreenFaceUnlockIcon(dynamic _) {}
  dynamic setFaceUnlockIslandFirstFloat(dynamic value) => const _Stub();
  dynamic setFaceUnlockIsland(dynamic value) => const _Stub();
  dynamic setHideLockscreenFaceUnlockIcon(dynamic value) => const _Stub();
  dynamic get faceUnlockIslandAnimationStyle => '';
  set faceUnlockIslandAnimationStyle(dynamic _) {}
  dynamic setFaceUnlockIslandAnimationStyle(dynamic value) => const _Stub();
  dynamic get faceUnlockIslandKeepUntilKeyguardHidden => false;
  set faceUnlockIslandKeepUntilKeyguardHidden(dynamic _) {}
  dynamic setFaceUnlockIslandKeepUntilKeyguardHidden(dynamic value) =>
      const _Stub();
  dynamic get keepIslandFocusContentType => '';
  set keepIslandFocusContentType(dynamic _) {}
  dynamic setKeepIslandFocusContentType(dynamic value) => const _Stub();
  dynamic get keepIslandShowNotification => false;
  set keepIslandShowNotification(dynamic _) {}
  dynamic setKeepIslandShowNotification(dynamic value) => const _Stub();
  dynamic get keepIslandDisplayTiming => '';
  set keepIslandDisplayTiming(dynamic _) {}
  dynamic setKeepIslandDisplayTiming(dynamic value) => const _Stub();
  dynamic get aiCustomFields => '';
  set aiCustomFields(dynamic _) {}
  dynamic setAiCustomFields(dynamic value) => const _Stub();
  dynamic get keepIslandExpandTextColorMode => '';
  set keepIslandExpandTextColorMode(dynamic _) {}
  dynamic setKeepIslandExpandTextColorMode(dynamic value) => const _Stub();
  dynamic get islandIconSize => 0;
  set islandIconSize(dynamic _) {}
  dynamic setIslandIconSize(dynamic value) => const _Stub();
  dynamic get expandedCollapseAction => '';
  set expandedCollapseAction(dynamic _) {}
  dynamic get bigIslandCollapseAction => '';
  set bigIslandCollapseAction(dynamic _) {}
  dynamic setExpandedCollapseAction(dynamic value) => const _Stub();
  dynamic setBigIslandCollapseAction(dynamic value) => const _Stub();
  dynamic get islandSwipeIgnoreOngoing => false;
  set islandSwipeIgnoreOngoing(dynamic _) {}
  dynamic setIslandSwipeIgnoreOngoing(dynamic value) => const _Stub();
  dynamic get islandIconPadding => 0.0;
  set islandIconPadding(dynamic _) {}
  dynamic setIslandIconPadding(dynamic value) => const _Stub();
  dynamic get outerGlowSingleColor => false;
  set outerGlowSingleColor(dynamic _) {}
  dynamic get outerGlowBaseColor => '';
  set outerGlowBaseColor(dynamic _) {}
  dynamic setOuterGlowSingleColor(dynamic value) => const _Stub();
  dynamic setOuterGlowBaseColor(dynamic value) => const _Stub();
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
