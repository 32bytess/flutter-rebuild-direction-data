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

String? fixtureSelectedTongueCoating = null; // TODO: value

String? fixtureSelectedTongueShape = null; // TODO: value

String? fixtureSelectedPulse = null; // TODO: value

DiagnosticEngine fixtureEngine = DiagnosticEngine();

List<_ChatBubble> fixtureMessages = []; // TODO: value

ScrollController fixtureScrollController = ScrollController();

bool fixtureShowOptions = false;

List<_ChatOption> fixtureCurrentOptions = []; // TODO: value

bool fixtureCanGoBack = false;

List<_StepSnapshot> fixtureStepHistory = []; // TODO: value

String? fixtureSelectedChiefKey = null; // TODO: value

TextEditingController fixtureSearchController = TextEditingController();

List<Formula> fixtureSearchResults = []; // TODO: value

bool fixtureSearchExpanded = false;

int fixtureFlatIndex = 0;

Map<String, String> fixtureQTitles = {
  kQ1: '🌡️ Q1 寒热感觉（必答）：你整体的寒热感觉是怎样的？',
  kQ2: '💓 Q2 脉象（可跳）：你会摸脉吗？不会就选「不清楚」。',
  kQ3: '🥤 Q3 渴饮（必答）：你口渴吗？想喝什么水温？',
  kQ4: '💦 Q4 汗出：你平时容易出汗吗？什么情况下出汗？',
  kQ5: '🤕 Q5 疼痛/不适：你哪里痛或不适？（选最贴切的一项）',
  kQ6: '🚽 Q6 大便：你的大便情况？',
  kQ7: '🚰 Q7 小便：小便情况？',
  kQ8: '🍚 Q8 胃口：你的胃口怎样？',
  kQ9: '😴 Q9 睡眠：你的睡眠怎样？',
  kQ10: '⚡ Q10 精神：你的精神状态？',
  kQ11: '🌸 Q11 月经/性功能（可跳过）：选「没有此症状」即跳过。',
  kQ12: '🤮 Q12 呕吐类型：你呕吐/恶心的情况？',
};

// DECLARATION-ONLY STAND-INS -- repo-local declarations that build no UI, and
// third-party ones the transplant does not inline. Supertypes are mirrored so a
// widget still reads as a widget; everything else is `dynamic`, because none of it
// is measured.

class DiagnosisResult {
  DiagnosisResult({
    dynamic meridian,
    dynamic pattern,
    dynamic patternDetail,
    dynamic formula,
    dynamic recommendedFormulas,
    dynamic explanation,
    dynamic confidence,
    dynamic matchedSymptoms,
    dynamic followUpQuestions,
    dynamic combinedMeridian,
    dynamic tongueCoating,
    dynamic tongueShape,
    dynamic pulseType,
    dynamic careAdvice,
    dynamic differential,
    dynamic prescription,
    dynamic answers,
    dynamic trueFalseHeatCold,
    dynamic medicationRules,
    dynamic sweatingContraindications,
    dynamic bloodStasisSigns,
    dynamic pulseCombination,
    dynamic facialComplexion,
    dynamic patternDifferential,
    dynamic transmission,
    dynamic transmissionWarning,
    dynamic pulseTongueContradiction,
    dynamic recommendConsult,
  });
  dynamic get meridian => '';
  dynamic get pattern => '';
  dynamic get patternDetail => '';
  dynamic get formula => '';
  dynamic get explanation => '';
  dynamic get confidence => 0.0;
  dynamic get matchedSymptoms => <String>[];
  dynamic get followUpQuestions => <String>[];
  dynamic get combinedMeridian => null;
  dynamic get tongueCoating => null;
  dynamic get tongueShape => null;
  dynamic get pulseType => null;
  dynamic get careAdvice => null;
  dynamic get differential => null;
  dynamic get prescription => null;
  dynamic get answers => <String, dynamic>{};
  dynamic get isCombined => false;
  dynamic get displayMeridian => '';
  dynamic get meridianEmoji => '';
  dynamic get meridianColor => '';
  dynamic get trueFalseHeatCold => null;
  dynamic get medicationRules => null;
  dynamic get sweatingContraindications => null;
  dynamic get bloodStasisSigns => null;
  dynamic get pulseCombination => null;
  dynamic get facialComplexion => null;
  dynamic get patternDifferential => null;
  dynamic get transmission => null;
  dynamic get transmissionWarning => null;
  dynamic get pulseTongueContradiction => null;
  dynamic get recommendConsult => false;
  dynamic get recommendedFormulas => <String>[];
}

class DiagnosticEngine {
  DiagnosticEngine();
  dynamic get stage => const _Stub();
  dynamic get selectedSymptoms => <String>[];
  dynamic get tenQuestionIndex => 0;
  dynamic get isComplete => false;
  void reset() {}
  dynamic createSnapshot([dynamic flatIndex]) => EngineSnapshot();
  void restoreSnapshot(dynamic snapshot) {}
  dynamic getInitialGreeting() => '';
  dynamic getChiefComplaintOptions() => [];
  dynamic getTemperatureQuestions() => [];
  dynamic getFollowUpQuestions(dynamic meridian) => [];
  dynamic getTenQuestions({dynamic defaultGender}) => [];
  dynamic getTongueCoatingOptions() => <String>[];
  dynamic getTongueShapeOptions() => <String>[];
  dynamic getPulseOptions() => <String>[];
  void selectChiefComplaint(dynamic symptomKey) {}
  void answerTemperaturePattern(dynamic patternKey) {}
  void answerTonguePulse({
    dynamic tongueCoating,
    dynamic tongueShape,
    dynamic pulseType,
  }) {}
  void answerTenQuestion(dynamic questionKey, dynamic answer) {}
  void answerFollowUp(dynamic questionKey, dynamic answer) {}
  dynamic diagnose() => null;
  dynamic get activeConditionFamily => null;
  void activateConditionFamily(dynamic family) {}
  void selectConditionOption(
    dynamic family,
    dynamic optionKey,
    dynamic optionText,
  ) {}
  dynamic getChiefCategories() => [];
  dynamic getConditionTerms() => [];
  dynamic getConditionTermsForCategory(dynamic categoryId) => [];
  dynamic getConditionFollowUps(dynamic family) => [];
  dynamic getSimilarityRanking({dynamic topK}) => [];
  dynamic suggestByTable() => null;
  dynamic get extSymptoms => <String>{};
  dynamic get qAnswers => <String, int>{};
  dynamic get lastRuleMatch => null;
  dynamic getFlatQuestions({dynamic defaultGender}) => [];
  void answerFlatQuestion(
    dynamic key,
    dynamic optionIndex,
    dynamic optionText,
  ) {}
  void toggleExtSymptom(dynamic key, dynamic selected) {}
  dynamic getFlatQuestionKeys({dynamic defaultGender}) => <String>[];
  dynamic diagnoseByRules() => DiagnosisResult();
}

class EngineSnapshot {
  EngineSnapshot({
    dynamic stage,
    dynamic selectedSymptoms,
    dynamic meridianDirection,
    dynamic combinedMeridian,
    dynamic answers,
    dynamic tenQuestionIndex,
    dynamic tongueCoating,
    dynamic tongueShape,
    dynamic pulseType,
    dynamic gender,
    dynamic qAnswers,
    dynamic extSymptoms,
    dynamic flatIndex,
  });
  dynamic get stage => const _Stub();
  dynamic get selectedSymptoms => <String>[];
  dynamic get meridianDirection => null;
  dynamic get combinedMeridian => null;
  dynamic get answers => <String, dynamic>{};
  dynamic get tenQuestionIndex => 0;
  dynamic get tongueCoating => null;
  dynamic get tongueShape => null;
  dynamic get pulseType => null;
  dynamic get gender => null;
  dynamic get activeConditionFamily => null;
  dynamic get qAnswers => <String, int>{};
  dynamic get extSymptoms => <String>{};
  dynamic get flatIndex => 0;
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

class Formula {
  Formula({
    dynamic id,
    dynamic name,
    dynamic alias,
    dynamic meridian,
    dynamic category,
    dynamic components,
    dynamic indication,
    dynamic contraindication,
    dynamic dosage,
    dynamic preparation,
    dynamic explanation,
    dynamic keywords,
  });
  Formula.fromJson(dynamic json);
  dynamic get id => '';
  dynamic get name => '';
  dynamic get alias => '';
  dynamic get meridian => '';
  dynamic get category => '';
  dynamic get components => [];
  dynamic get indication => '';
  dynamic get contraindication => '';
  dynamic get dosage => '';
  dynamic get preparation => '';
  dynamic get explanation => '';
  dynamic get keywords => <String>[];
  dynamic get componentsText => '';
  dynamic toJson() => <String, dynamic>{};
}

const dynamic kQ1 = null; // TODO: value

const dynamic kQ10 = null; // TODO: value

const dynamic kQ11 = null; // TODO: value

const dynamic kQ12 = null; // TODO: value

const dynamic kQ2 = null; // TODO: value

const dynamic kQ3 = null; // TODO: value

const dynamic kQ4 = null; // TODO: value

const dynamic kQ5 = null; // TODO: value

const dynamic kQ6 = null; // TODO: value

const dynamic kQ7 = null; // TODO: value

const dynamic kQ8 = null; // TODO: value

const dynamic kQ9 = null; // TODO: value
