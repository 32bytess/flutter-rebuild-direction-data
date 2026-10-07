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

late TextEditingController fixtureHostController; // TODO: value

late TextEditingController fixturePortController; // TODO: value

late String fixtureInitialHost; // TODO: value

late int fixtureInitialPort; // TODO: value

late bool fixtureInitialAutoStart; // TODO: value

late ValueChanged<GatewayPageResult> fixtureOnChanged; // TODO: value

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

bool fixtureAutoStart = false;

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
  dynamic get chat => '';
  dynamic get channels => '';
  dynamic get agent => '';
  dynamic get settings => '';
  dynamic get getStarted => '';
  dynamic get yourPersonalAssistant => '';
  dynamic get multiChannelChat => '';
  dynamic get multiChannelChatDesc => '';
  dynamic get powerfulAIModels => '';
  dynamic get powerfulAIModelsDesc => '';
  dynamic get localGateway => '';
  dynamic get localGatewayDesc => '';
  dynamic get chooseProvider => '';
  dynamic get selectProviderDesc => '';
  dynamic get startForFree => '';
  dynamic get freeProvidersDesc => '';
  dynamic get free => '';
  dynamic get otherProviders => '';
  dynamic get enterApiKeyDesc => '';
  dynamic get dontHaveApiKey => '';
  dynamic get createAccountCopyKey => '';
  dynamic get signUp => '';
  dynamic get apiKey => '';
  dynamic get pasteFromClipboard => '';
  dynamic get apiBaseUrl => '';
  dynamic get selectModel => '';
  dynamic get modelId => '';
  dynamic get validateKey => '';
  dynamic get validating => '';
  dynamic get invalidApiKey => '';
  dynamic get gatewayConfiguration => '';
  dynamic get gatewayConfigDesc => '';
  dynamic get defaultSettingsNote => '';
  dynamic get host => '';
  dynamic get port => '';
  dynamic get autoStartGateway => '';
  dynamic get autoStartGatewayDesc => '';
  dynamic get channelsPageTitle => '';
  dynamic get channelsPageDesc => '';
  dynamic get telegram => '';
  dynamic get connectTelegramBot => '';
  dynamic get openBotFather => '';
  dynamic get discord => '';
  dynamic get connectDiscordBot => '';
  dynamic get developerPortal => '';
  dynamic get botToken => '';
  dynamic get readyToGo => '';
  dynamic get reviewConfiguration => '';
  dynamic get model => '';
  dynamic get gateway => '';
  dynamic get webChatOnly => '';
  dynamic get webChat => '';
  dynamic get starting => '';
  dynamic get startFlutterClaw => '';
  dynamic get newSession => '';
  dynamic get photoLibrary => '';
  dynamic get camera => '';
  dynamic get whatDoYouSeeInImage => '';
  dynamic get imagePickerNotAvailable => '';
  dynamic get couldNotOpenImagePicker => '';
  dynamic get copiedToClipboard => '';
  dynamic get attachImage => '';
  dynamic get messageFlutterClaw => '';
  dynamic get channelsAndGateway => '';
  dynamic get stop => '';
  dynamic get start => '';
  dynamic get builtInChatInterface => '';
  dynamic get notConfigured => '';
  dynamic get connected => '';
  dynamic get configuredStarting => '';
  dynamic get telegramConfiguration => '';
  dynamic get fromBotFather => '';
  dynamic get allowedUserIds => '';
  dynamic get leaveEmptyToAllowAll => '';
  dynamic get cancel => '';
  dynamic get saveAndConnect => '';
  dynamic get discordConfiguration => '';
  dynamic get pendingPairingRequests => '';
  dynamic get approve => '';
  dynamic get reject => '';
  dynamic get expired => '';
  dynamic get workspaceFiles => '';
  dynamic get personalAIAssistant => '';
  dynamic get noActiveSessions => '';
  dynamic get startConversationToCreate => '';
  dynamic get startConversationToSee => '';
  dynamic get reset => '';
  dynamic get cronJobs => '';
  dynamic get noCronJobs => '';
  dynamic get addScheduledTasks => '';
  dynamic get runNow => '';
  dynamic get enable => '';
  dynamic get disable => '';
  dynamic get delete => '';
  dynamic get skills => '';
  dynamic get browseClawHub => '';
  dynamic get noSkillsInstalled => '';
  dynamic get browseClawHubToAdd => '';
  dynamic get clawHubSkills => '';
  dynamic get searchSkills => '';
  dynamic get noSkillsFound => '';
  dynamic get addCronJob => '';
  dynamic get jobName => '';
  dynamic get dailySummaryExample => '';
  dynamic get taskPrompt => '';
  dynamic get whatShouldAgentDo => '';
  dynamic get interval => '';
  dynamic get every5Minutes => '';
  dynamic get every15Minutes => '';
  dynamic get every30Minutes => '';
  dynamic get everyHour => '';
  dynamic get every6Hours => '';
  dynamic get every12Hours => '';
  dynamic get every24Hours => '';
  dynamic get add => '';
  dynamic get save => '';
  dynamic get sessions => '';
  dynamic get compact => '';
  dynamic get models => '';
  dynamic get noModelsConfigured => '';
  dynamic get addModelToStartChatting => '';
  dynamic get addModel => '';
  dynamic get default_ => '';
  dynamic get autoStart => '';
  dynamic get startGatewayWhenLaunches => '';
  dynamic get heartbeat => '';
  dynamic get enabled => '';
  dynamic get periodicAgentTasks => '';
  dynamic get about => '';
  dynamic get personalAIAssistantForIOS => '';
  dynamic get version => '';
  dynamic get basedOnOpenClaw => '';
  dynamic get removeModel => '';
  dynamic get remove => '';
  dynamic get setAsDefault => '';
  dynamic get paste => '';
  dynamic get chooseProviderStep => '';
  dynamic get selectModelStep => '';
  dynamic get apiKeyStep => '';
  dynamic get justNow => '';
  dynamic get microphonePermissionDenied => '';
  dynamic get usingOnDeviceTranscription => '';
  dynamic get transcribingWithWhisper => '';
  dynamic get noTranscriptionCaptured => '';
  dynamic get pause => '';
  dynamic get resume => '';
  dynamic get send => '';
  dynamic get liveActivityActive => '';
  dynamic get restartGateway => '';
  dynamic get iosBackgroundAudioActive => '';
  dynamic get webChatBuiltIn => '';
  dynamic get configure => '';
  dynamic get disconnect => '';
  dynamic get agents => '';
  dynamic get agentFiles => '';
  dynamic get createAgent => '';
  dynamic get editAgent => '';
  dynamic get noAgentsYet => '';
  dynamic get createYourFirstAgent => '';
  dynamic get active => '';
  dynamic get agentName => '';
  dynamic get emoji => '';
  dynamic get selectEmoji => '';
  dynamic get vibe => '';
  dynamic get vibeHint => '';
  dynamic get modelConfiguration => '';
  dynamic get advancedSettings => '';
  dynamic get agentCreated => '';
  dynamic get agentUpdated => '';
  dynamic get agentDeleted => '';
  dynamic get agentDetails => '';
  dynamic get createdAt => '';
  dynamic get lastUsed => '';
  dynamic get basicInformation => '';
  dynamic get switchToAgent => '';
  dynamic get providers => '';
  dynamic get addProvider => '';
  dynamic get noProvidersConfigured => '';
  dynamic get editCredentials => '';
  dynamic get defaultModelHint => '';
  dynamic get holdToSetAsDefault => '';
  dynamic get integrations => '';
  dynamic get shortcutsIntegrations => '';
  dynamic get shortcutsIntegrationsDesc => '';
  dynamic get dangerZone => '';
  dynamic get resetOnboarding => '';
  dynamic get resetOnboardingDesc => '';
  dynamic get resetAllConfiguration => '';
  dynamic get resetAllConfigurationDesc => '';
  dynamic get removeProvider => '';
  dynamic get photoImage => '';
  dynamic get documentPdfTxt => '';
  dynamic get retry => '';
  dynamic get gatewayStopped => '';
  dynamic get gatewayStarted => '';
  dynamic get pairingRequestApproved => '';
  dynamic get pairingRequestRejected => '';
  dynamic get addDevice => '';
  dynamic get telegramConfigSaved => '';
  dynamic get discordConfigSaved => '';
  dynamic get securityMethod => '';
  dynamic get pairingRecommended => '';
  dynamic get pairingDescription => '';
  dynamic get allowlistTitle => '';
  dynamic get allowlistDescription => '';
  dynamic get openAccess => '';
  dynamic get openAccessDescription => '';
  dynamic get disabledAccess => '';
  dynamic get disabledAccessDescription => '';
  dynamic get approvedDevices => '';
  dynamic get noApprovedDevicesYet => '';
  dynamic get devicesAppearAfterApproval => '';
  dynamic get noAllowedUsersConfigured => '';
  dynamic get addUserIdsHint => '';
  dynamic get removeDevice => '';
  dynamic get saving => '';
  dynamic get channelsLabel => '';
  dynamic get clawHubAccount => '';
  dynamic get loggedInToClawHub => '';
  dynamic get loggedOutFromClawHub => '';
  dynamic get login => '';
  dynamic get logout => '';
  dynamic get connect => '';
  dynamic get pasteClawHubToken => '';
  dynamic get pleaseEnterApiToken => '';
  dynamic get successfullyConnected => '';
  dynamic get browseSkillsButton => '';
  dynamic get installSkill => '';
  dynamic get incompatibleSkill => '';
  dynamic get compatibilityWarning => '';
  dynamic get ok => '';
  dynamic get installOriginal => '';
  dynamic get installAdapted => '';
  dynamic get resetSession => '';
  dynamic get sessionReset => '';
  dynamic get activeSessions => '';
  dynamic get scheduledTasks => '';
  dynamic get defaultBadge => '';
  dynamic get cannotDeleteLastAgent => '';
  dynamic get close => '';
  dynamic get nameIsRequired => '';
  dynamic get pleaseSelectModel => '';
  dynamic get maxTokens => '';
  dynamic get maxTokensRequired => '';
  dynamic get mustBePositiveNumber => '';
  dynamic get maxToolIterations => '';
  dynamic get maxIterationsRequired => '';
  dynamic get restrictToWorkspace => '';
  dynamic get restrictToWorkspaceDesc => '';
  dynamic get noModelsConfiguredLong => '';
  dynamic get selectProviderFirst => '';
  dynamic get skip => '';
  dynamic get continueButton => '';
  dynamic get uiAutomation => '';
  dynamic get uiAutomationDesc => '';
  dynamic get uiAutomationAccessibilityNote => '';
  dynamic get openAccessibilitySettings => '';
  dynamic get skipForNow => '';
  dynamic get checkingPermission => '';
  dynamic get accessibilityEnabled => '';
  dynamic get accessibilityNotEnabled => '';
  dynamic get exploreIntegrations => '';
  dynamic get requestTimedOut => '';
  dynamic get myShortcuts => '';
  dynamic get addShortcut => '';
  dynamic get noShortcutsYet => '';
  dynamic get shortcutsInstructions => '';
  dynamic get shortcutName => '';
  dynamic get shortcutNameHint => '';
  dynamic get descriptionOptional => '';
  dynamic get whatDoesShortcutDo => '';
  dynamic get callbackSetup => '';
  dynamic get callbackInstructions => '';
  dynamic get channelApp => '';
  dynamic get channelHeartbeat => '';
  dynamic get channelCron => '';
  dynamic get channelSubagent => '';
  dynamic get channelSystem => '';
  dynamic get messagesAbbrev => '';
  static dynamic of(dynamic context) => null;
  dynamic connectToProvider(dynamic provider) => '';
  dynamic telegramBotToken(dynamic platform) => '';
  dynamic viaProvider(dynamic provider) => '';
  dynamic status(dynamic status) => '';
  dynamic minutesLeft(dynamic minutes) => '';
  dynamic sessionsCount(dynamic count) => '';
  dynamic removeSkillConfirm(dynamic name) => '';
  dynamic installedSkill(dynamic name) => '';
  dynamic failedToInstallSkill(dynamic name) => '';
  dynamic messagesCount(dynamic count) => '';
  dynamic tokensCount(dynamic count) => '';
  dynamic intervalMinutes(dynamic minutes) => '';
  dynamic removeModelConfirm(dynamic name) => '';
  dynamic getApiKeyAt(dynamic provider) => '';
  dynamic minutesAgo(dynamic minutes) => '';
  dynamic hoursAgo(dynamic hours) => '';
  dynamic daysAgo(dynamic days) => '';
  dynamic liveTranscriptionUnavailable(dynamic error) => '';
  dynamic failedToStartRecording(dynamic error) => '';
  dynamic whisperApiFailed(dynamic error) => '';
  dynamic failedToStopRecording(dynamic error) => '';
  dynamic failedToPauseResume(dynamic action, dynamic error) => '';
  dynamic modelLabel(dynamic model) => '';
  dynamic uptimeLabel(dynamic uptime) => '';
  dynamic switchedToAgent(dynamic name) => '';
  dynamic deleteAgentConfirm(dynamic name) => '';
  dynamic removeProviderConfirm(dynamic provider) => '';
  dynamic modelSetAsDefault(dynamic name) => '';
  dynamic couldNotOpenDocument(dynamic error) => '';
  dynamic gatewayFailed(dynamic error) => '';
  dynamic exceptionError(dynamic error) => '';
  dynamic removeAccessFor(dynamic name) => '';
  dynamic incompatibleSkillDesc(dynamic reason) => '';
  dynamic compatibilityWarningDesc(dynamic reason) => '';
  dynamic resetSessionConfirm(dynamic key) => '';
  dynamic errorGeneric(dynamic error) => '';
  dynamic fileSaved(dynamic fileName) => '';
  dynamic errorSavingFile(dynamic error) => '';
  dynamic temperatureLabel(dynamic value) => '';
  dynamic secondsAgo(dynamic seconds) => '';
  dynamic get iosBackgroundSupportActive => '';
  dynamic get modelAlreadyAdded => '';
  dynamic get bothTokensRequired => '';
  dynamic get slackSavedRestart => '';
  dynamic get slackConfiguration => '';
  dynamic get setupTitle => '';
  dynamic get slackSetupInstructions => '';
  dynamic get botTokenXoxb => '';
  dynamic get appLevelToken => '';
  dynamic get apiUrlPhoneRequired => '';
  dynamic get signalSavedRestart => '';
  dynamic get signalConfiguration => '';
  dynamic get requirementsTitle => '';
  dynamic get signalRequirements => '';
  dynamic get signalApiUrl => '';
  dynamic get signalPhoneNumber => '';
  dynamic get userIdLabel => '';
  dynamic get enterDiscordUserId => '';
  dynamic get enterTelegramUserId => '';
  dynamic get fromDiscordDevPortal => '';
  dynamic get allowedUserIdsTitle => '';
  dynamic get approvedDevice => '';
  dynamic get allowedUser => '';
  dynamic get howToGetBotToken => '';
  dynamic get discordTokenInstructions => '';
  dynamic get telegramTokenInstructions => '';
  dynamic get fromBotFatherHint => '';
  dynamic get accessTokenLabel => '';
  dynamic get notSetOpenAccess => '';
  dynamic get gatewayAccessToken => '';
  dynamic get tokenFieldLabel => '';
  dynamic get leaveEmptyDisableAuth => '';
  dynamic get toolPolicies => '';
  dynamic get toolPoliciesDesc => '';
  dynamic get privacySensors => '';
  dynamic get networkCategory => '';
  dynamic get systemCategory => '';
  dynamic get toolTakePhotos => '';
  dynamic get toolTakePhotosDesc => '';
  dynamic get toolRecordVideo => '';
  dynamic get toolRecordVideoDesc => '';
  dynamic get toolLocation => '';
  dynamic get toolLocationDesc => '';
  dynamic get toolHealthData => '';
  dynamic get toolHealthDataDesc => '';
  dynamic get toolContacts => '';
  dynamic get toolContactsDesc => '';
  dynamic get toolScreenshots => '';
  dynamic get toolScreenshotsDesc => '';
  dynamic get toolWebFetch => '';
  dynamic get toolWebFetchDesc => '';
  dynamic get toolWebSearch => '';
  dynamic get toolWebSearchDesc => '';
  dynamic get toolHttpRequests => '';
  dynamic get toolHttpRequestsDesc => '';
  dynamic get toolSandboxShell => '';
  dynamic get toolSandboxShellDesc => '';
  dynamic get toolImageGeneration => '';
  dynamic get toolImageGenerationDesc => '';
  dynamic get toolLaunchApps => '';
  dynamic get toolLaunchAppsDesc => '';
  dynamic get toolLaunchIntents => '';
  dynamic get toolLaunchIntentsDesc => '';
  dynamic get renameSession => '';
  dynamic get myConversationName => '';
  dynamic get renameAction => '';
  dynamic get couldNotTranscribeAudio => '';
  dynamic get stopRecording => '';
  dynamic get voiceInput => '';
  dynamic get copyTooltip => '';
  dynamic get commandsTooltip => '';
  dynamic get providersAndModels => '';
  dynamic get autoStartEnabledLabel => '';
  dynamic get autoStartOffLabel => '';
  dynamic get allToolsEnabled => '';
  dynamic get flutterClawVersion => '';
  dynamic get noPendingPairingRequests => '';
  dynamic get pairingRequestsTitle => '';
  dynamic get gatewayStartingStatus => '';
  dynamic get gatewayRetryingStatus => '';
  dynamic get errorStartingGateway => '';
  dynamic get runningStatus => '';
  dynamic get stoppedStatus => '';
  dynamic get notSetUpStatus => '';
  dynamic get configuredStatus => '';
  dynamic get whatsAppConfigSaved => '';
  dynamic get whatsAppDisconnected => '';
  dynamic get whatsAppTitle => '';
  dynamic get applyingSettings => '';
  dynamic get reconnectWhatsApp => '';
  dynamic get saveSettingsLabel => '';
  dynamic get applySettingsRestart => '';
  dynamic get whatsAppMode => '';
  dynamic get myPersonalNumber => '';
  dynamic get myPersonalNumberDesc => '';
  dynamic get dedicatedBotAccount => '';
  dynamic get dedicatedBotAccountDesc => '';
  dynamic get allowedNumbers => '';
  dynamic get addNumberTitle => '';
  dynamic get phoneNumberJid => '';
  dynamic get noAllowedNumbersConfigured => '';
  dynamic get devicesAppearAfterPairing => '';
  dynamic get addPhoneNumbersHint => '';
  dynamic get allowedNumber => '';
  dynamic get howToConnect => '';
  dynamic get whatsAppConnectInstructions => '';
  dynamic get whatsAppPairingDesc => '';
  dynamic get whatsAppAllowlistDesc => '';
  dynamic get whatsAppOpenDesc => '';
  dynamic get whatsAppDisabledDesc => '';
  dynamic get sessionExpiredRelink => '';
  dynamic get connectWhatsAppBelow => '';
  dynamic get whatsAppAcceptedQr => '';
  dynamic get waitingForWhatsApp => '';
  dynamic get focusedLabel => '';
  dynamic get balancedLabel => '';
  dynamic get creativeLabel => '';
  dynamic get preciseLabel => '';
  dynamic get expressiveLabel => '';
  dynamic get browseLabel => '';
  dynamic get apiTokenLabel => '';
  dynamic get connectToClawHub => '';
  dynamic get clawHubLoginHint => '';
  dynamic get howToGetApiToken => '';
  dynamic get clawHubApiTokenInstructions => '';
  dynamic get cronJobHintText => '';
  dynamic get androidPermissions => '';
  dynamic get androidPermissionsDesc => '';
  dynamic get twoPermissionsNeeded => '';
  dynamic get accessibilityService => '';
  dynamic get accessibilityServiceDesc => '';
  dynamic get displayOverOtherApps => '';
  dynamic get displayOverOtherAppsDesc => '';
  dynamic get changeDefaultModel => '';
  dynamic get startNewSessions => '';
  dynamic get currentConversationsArchived => '';
  dynamic get applyAction => '';
  dynamic get setAsDefaultModel => '';
  dynamic get usedByAgentsWithout => '';
  dynamic get providerAlreadyAuth => '';
  dynamic get selectFromList => '';
  dynamic get enterCustomModelId => '';
  dynamic get removeSkillTitle => '';
  dynamic get browseClawHubToDiscover => '';
  dynamic get addDeviceTooltip => '';
  dynamic get addNumberTooltip => '';
  dynamic get searchSkillsHint => '';
  dynamic get loginToClawHub => '';
  dynamic get accountTooltip => '';
  dynamic get editAction => '';
  dynamic get setAsDefaultAction => '';
  dynamic get chooseProviderTitle => '';
  dynamic get apiKeyTitle => '';
  dynamic get slackConfigSaved => '';
  dynamic get signalConfigSaved => '';
  dynamic get addDeviceHint => '';
  dynamic get skipAction => '';
  dynamic modelsConfiguredCount(dynamic count) => '';
  dynamic toolsDisabledCount(dynamic count) => '';
  dynamic connectionFailed(dynamic error) => '';
  dynamic cronJobRuns(dynamic count) => '';
  dynamic nextRunLabel(dynamic time) => '';
  dynamic lastErrorLabel(dynamic error) => '';
  dynamic setModelAsDefault(dynamic name) => '';
  dynamic alsoUpdateAgents(dynamic count) => '';
  dynamic applyModelQuestion(dynamic name) => '';
  dynamic applyToAgents(dynamic count) => '';
  dynamic idPrefix(dynamic id) => '';
  dynamic get officialWebsite => '';
  dynamic appVersionSubtitle(
    dynamic appName,
    dynamic version,
    dynamic buildNumber,
  ) => '';
  dynamic get speakMessage => '';
  dynamic get stopSpeaking => '';
  dynamic get selectText => '';
  dynamic get messageCopied => '';
  dynamic get mcpServers => '';
  dynamic get noMcpServersConfigured => '';
  dynamic get mcpServersEmptyHint => '';
  dynamic get addMcpServer => '';
  dynamic get editMcpServer => '';
  dynamic get removeMcpServer => '';
  dynamic get mcpTransport => '';
  dynamic get testConnection => '';
  dynamic get mcpServerNameLabel => '';
  dynamic get mcpServerNameHint => '';
  dynamic get mcpServerUrlLabel => '';
  dynamic get mcpBearerTokenLabel => '';
  dynamic get mcpBearerTokenHint => '';
  dynamic get mcpCommandLabel => '';
  dynamic get mcpArgumentsLabel => '';
  dynamic get mcpEnvVarsLabel => '';
  dynamic get mcpStdioNotOnIos => '';
  dynamic get connectedStatus => '';
  dynamic get mcpConnecting => '';
  dynamic get mcpConnectionError => '';
  dynamic get mcpDisconnected => '';
  dynamic get mcpTestOkNoTools => '';
  dynamic get mcpTestFailed => '';
  dynamic get mcpAddServer => '';
  dynamic get mcpSaveChanges => '';
  dynamic get urlIsRequired => '';
  dynamic get enterValidUrl => '';
  dynamic get commandIsRequired => '';
  dynamic get editFileContentHint => '';
  dynamic get whatsAppPairSubtitle => '';
  dynamic get whatsAppPairingOptional => '';
  dynamic get whatsAppEnableToLink => '';
  dynamic get whatsAppLinkedOnboarding => '';
  dynamic get cancelLink => '';
  dynamic removeMcpServerConfirm(dynamic name) => '';
  dynamic mcpToolsCount(dynamic count) => '';
  dynamic mcpTestOkTools(dynamic count) => '';
  dynamic skillRemoved(dynamic name) => '';
  dynamic get voiceCallModelSection => '';
  dynamic get voiceCallModelDescription => '';
  dynamic get voiceCallModelLabel => '';
  dynamic get voiceCallModelAutomatic => '';
  dynamic get preferLiveVoiceBootstrapTitle => '';
  dynamic get preferLiveVoiceBootstrapSubtitle => '';
  dynamic get firstHatchModeChoiceTitle => '';
  dynamic get firstHatchModeChoiceBody => '';
  dynamic get firstHatchModeChoiceChatButton => '';
  dynamic get firstHatchModeChoiceVoiceButton => '';
  dynamic get liveVoiceBargeInHint => '';
  dynamic get cannotAddLiveModelAsChat => '';
  dynamic get liveVoiceNameLabel => '';
  dynamic get liveVoiceFallbackTitle => '';
  dynamic get liveVoiceEndConversationTooltip => '';
  dynamic get liveVoiceStatusConnecting => '';
  dynamic get liveVoiceStatusRunning => '';
  dynamic get liveVoiceStatusSpeaking => '';
  dynamic get liveVoiceStatusListening => '';
  dynamic get liveVoiceBadge => '';
  dynamic get authBearerTokenLabel => '';
  dynamic get authAccessKeysLabel => '';
  dynamic get scanQrBarcodeTitle => '';
  dynamic get oauthSignInTitle => '';
  dynamic get browserOverlayDone => '';
  dynamic get credentialsScreenTitle => '';
  dynamic get credentialsIntroBody => '';
  dynamic get credentialsNoProvidersBody => '';
  dynamic get credentialsAddKeyTooltip => '';
  dynamic get credentialsNoExtraKeysMessage => '';
  dynamic get credentialsKeyLabelHint => '';
  dynamic get credentialsApiKeyFieldLabel => '';
  dynamic get securitySettingsTitle => '';
  dynamic get securitySettingsIntro => '';
  dynamic get securitySectionToolExecution => '';
  dynamic get securityPatternDetectionTitle => '';
  dynamic get securityPatternDetectionSubtitle => '';
  dynamic get securityUnsafeModeBanner => '';
  dynamic get securitySectionHowItWorks => '';
  dynamic get securityHowItWorksBlocked => '';
  dynamic get securityHowItWorksUnsafeCmd => '';
  dynamic get securityHowItWorksToggleSession => '';
  dynamic authModelsFoundCount(dynamic count) => '';
  dynamic authModelsFoundMoreManual(dynamic count) => '';
  dynamic appInitializationError(dynamic error) => '';
  dynamic credentialsAddProviderKeyTitle(dynamic provider) => '';
}

extension L10nContext on BuildContext {
  dynamic get l10n => const _Stub();
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
