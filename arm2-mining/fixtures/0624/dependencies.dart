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

// DECLARATION-ONLY STAND-INS -- repo-local declarations that build no UI, and
// third-party ones the transplant does not inline. Supertypes are mirrored so a
// widget still reads as a widget; everything else is `dynamic`, because none of it
// is measured.

class ConsumerWidget extends StatelessWidget {
  const ConsumerWidget({super.key});
  @override
  Widget build(BuildContext context) => const SizedBox.shrink();
}

class WidgetRef {
  WidgetRef();
  dynamic get context => const _Stub();
  dynamic watch<StateT>(dynamic provider) => const _Stub();
  dynamic exists(dynamic provider) => false;
  void listen<StateT>(
    dynamic provider,
    dynamic listener, {
    dynamic onError,
    dynamic weak,
  }) {}
  dynamic listenManual<StateT>(
    dynamic provider,
    dynamic listener, {
    dynamic onError,
    dynamic fireImmediately,
    dynamic weak,
  }) => const _Stub();
  dynamic read<StateT>(dynamic provider) => const _Stub();
  dynamic refresh<StateT>(dynamic provider) => const _Stub();
  void invalidate(dynamic provider, {dynamic asReload}) {}
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

class AppSettings {
  AppSettings({
    dynamic temperature,
    dynamic topP,
    dynamic maxTokens,
    dynamic contextLength,
    dynamic themeMode,
    dynamic fontSize,
    dynamic showSystemMessages,
    dynamic hapticFeedbackEnabled,
    dynamic sendOnEnter,
    dynamic defaultServerId,
    dynamic showDataIndicator,
    dynamic autoGenerateTitle,
    dynamic streamingEnabled,
    dynamic defaultPersonaId,
    dynamic hasCompletedOnboarding,
    dynamic mcpEnabled,
    dynamic codeThemeDark,
    dynamic codeThemeLight,
  });
  dynamic get temperature => 0.0;
  dynamic get topP => 0.0;
  dynamic get maxTokens => 0;
  dynamic get contextLength => 0;
  dynamic get themeMode => const _Stub();
  dynamic get fontSize => 0.0;
  dynamic get showSystemMessages => false;
  dynamic get hapticFeedbackEnabled => false;
  dynamic get sendOnEnter => false;
  dynamic get defaultServerId => null;
  dynamic get showDataIndicator => false;
  dynamic get autoGenerateTitle => false;
  dynamic get streamingEnabled => false;
  dynamic get defaultPersonaId => null;
  dynamic get hasCompletedOnboarding => false;
  dynamic copyWith({
    dynamic temperature,
    dynamic topP,
    dynamic maxTokens,
    dynamic contextLength,
    dynamic themeMode,
    dynamic fontSize,
    dynamic showSystemMessages,
    dynamic hapticFeedbackEnabled,
    dynamic sendOnEnter,
    dynamic defaultServerId,
    dynamic showDataIndicator,
    dynamic autoGenerateTitle,
    dynamic streamingEnabled,
    dynamic defaultPersonaId,
    dynamic hasCompletedOnboarding,
    dynamic mcpEnabled,
    dynamic codeThemeDark,
    dynamic codeThemeLight,
  }) => AppSettings();
  dynamic get mcpEnabled => false;
  dynamic get codeTheme => SyntaxThemeName.vscodeDark;
  dynamic get codeThemeDark => SyntaxThemeName.vscodeDark;
  dynamic get codeThemeLight => SyntaxThemeName.vscodeDark;
}

class Persona {
  Persona({
    dynamic id,
    dynamic name,
    dynamic emoji,
    dynamic systemPrompt,
    dynamic description,
    dynamic isBuiltIn,
    dynamic createdAt,
    dynamic updatedAt,
    dynamic category,
    dynamic preferredParams,
  });
  dynamic get id => '';
  dynamic get name => '';
  dynamic get emoji => '';
  dynamic get systemPrompt => '';
  dynamic get description => null;
  dynamic get isBuiltIn => false;
  dynamic get createdAt => DateTime.fromMillisecondsSinceEpoch(0);
  dynamic get updatedAt => DateTime.fromMillisecondsSinceEpoch(0);
  dynamic get category => null;
  dynamic get preferredParams => null;
  dynamic copyWith({
    dynamic id,
    dynamic name,
    dynamic emoji,
    dynamic systemPrompt,
    dynamic description,
    dynamic isBuiltIn,
    dynamic createdAt,
    dynamic updatedAt,
    dynamic category,
    dynamic preferredParams,
  }) => Persona();
}

class Server {
  Server({
    dynamic id,
    dynamic name,
    dynamic type,
    dynamic host,
    dynamic port,
    dynamic apiKey,
    dynamic isDefault,
    dynamic createdAt,
    dynamic lastConnectedAt,
    dynamic status,
    dynamic iconName,
  });
  dynamic get id => '';
  dynamic get name => '';
  dynamic get type => const _Stub();
  dynamic get host => '';
  dynamic get port => 0;
  dynamic get apiKey => null;
  dynamic get isDefault => false;
  dynamic get createdAt => DateTime.fromMillisecondsSinceEpoch(0);
  dynamic get lastConnectedAt => DateTime.fromMillisecondsSinceEpoch(0);
  dynamic get status => const _Stub();
  dynamic get iconName => null;
  dynamic get baseUrl => '';
  dynamic get chatEndpoint => '';
  dynamic get modelsEndpoint => '';
  dynamic copyWith({
    dynamic id,
    dynamic name,
    dynamic type,
    dynamic host,
    dynamic port,
    dynamic apiKey,
    dynamic isDefault,
    dynamic createdAt,
    dynamic lastConnectedAt,
    dynamic status,
    dynamic iconName,
  }) => Server();
  dynamic get runningModelsEndpoint => '';
  dynamic get loadModelEndpoint => '';
  dynamic get unloadModelEndpoint => '';
}

dynamic personasProvider = const _Stub();

dynamic serversProvider = const _Stub();

dynamic settingsProvider = const _Stub();

dynamic themeModeProvider = const _Stub();

class HiveField {
  const HiveField(dynamic index, {dynamic defaultValue});
  dynamic get index => 0;
  dynamic get defaultValue => const _Stub();
}

class HiveType {
  const HiveType({dynamic typeId, dynamic adapterName});
  dynamic get typeId => 0;
  dynamic get adapterName => null;
}

dynamic personasNotifierProvider = const _Stub();

// UNRESOLVED-REFERENCE STAND-INS -- reconstructed from the call sites, because the
// symbol lives in a package this file may not import or the source project's own
// dependencies were never installed. Every type here is `dynamic`.

extension _SpmTextEditingControllerShim on TextEditingController {
  dynamic get text => const _Stub();
}

dynamic _controller = const _Stub();

dynamic storage = const _Stub();
