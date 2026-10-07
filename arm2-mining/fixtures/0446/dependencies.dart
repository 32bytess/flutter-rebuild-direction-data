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


// DECLARATION-ONLY STAND-INS -- repo-local declarations that build no UI, and
// third-party ones the transplant does not inline. Supertypes are mirrored so a
// widget still reads as a widget; everything else is `dynamic`, because none of it
// is measured.

class AppColors {
  AppColors();
  static const dynamic mainColor = null;
  static const dynamic dark = null;
  static const dynamic light = null;
  static const dynamic purple = null;
  static const dynamic green = null;
  static const dynamic yellow = null;
  static const dynamic rose = null;
  static const dynamic orange = null;
}

dynamic Get = _GetImpl();

extension Inst on dynamic {
  void lazyPut<S>(dynamic builder, {dynamic tag, dynamic fenix}) {}
  dynamic putAsync<S>(dynamic builder, {dynamic tag, dynamic permanent}) =>
      const _Stub();
  void create<S>(dynamic builder, {dynamic tag, dynamic permanent}) {}
  dynamic find<S>({dynamic tag}) => const _Stub();
  dynamic put<S>(
    dynamic dependency, {
    dynamic tag,
    dynamic permanent,
    dynamic builder,
  }) => const _Stub();
  dynamic delete<S>({dynamic tag, dynamic force}) => Future<bool>.value(false);
  dynamic deleteAll({dynamic force}) => const _Stub();
  void reloadAll({dynamic force}) {}
  void reload<S>({dynamic tag, dynamic key, dynamic force}) {}
  dynamic isRegistered<S>({dynamic tag}) => false;
  dynamic isPrepared<S>({dynamic tag}) => false;
  void replace<P>(dynamic child, {dynamic tag}) {}
  void lazyReplace<P>(dynamic builder, {dynamic tag, dynamic fenix}) {}
}

class Rx<T> {
  Rx(dynamic initial);
  dynamic toJson() => const _Stub();
  dynamic get value => false;
}

mixin RxObjectMixin<T> {
  dynamic get firstRebuild => false;
  set firstRebuild(dynamic _) {}
  dynamic get sentToStream => false;
  set sentToStream(dynamic _) {}
  dynamic get string => '';
  dynamic get hashCode => 0;
  dynamic get value => const _Stub();
  set value(dynamic _) {}
  dynamic get stream => const _Stub();
  void refresh() {}
  dynamic toString() => '';
  dynamic toJson() => const _Stub();
  dynamic listenAndPump(
    dynamic onData, {
    dynamic onError,
    dynamic onDone,
    dynamic cancelOnError,
  }) => const _Stub();
  void bindStream(dynamic stream) {}
}

class ThemeService {
  ThemeService();
  dynamic get theme => const _Stub();
  dynamic isDarkTheme() => false;
  void switchTheme() {}
}

extension Trans on String {
  dynamic get tr => '';
  dynamic trArgs([dynamic args]) => '';
  dynamic trPlural([dynamic pluralKey, dynamic i, dynamic args]) => '';
  dynamic trParams([dynamic params]) => '';
  dynamic trPluralParams([dynamic pluralKey, dynamic i, dynamic params]) => '';
}

class VideoCountController {
  VideoCountController();
  dynamic get videoCount => const _Stub();
  dynamic get movieCount => const _Stub();
  dynamic get isProcessing => const _Stub();
  void increaseVideoCount() {}
  void reduceVideoCount() {}
  void increaseMovieCount() {}
  void setVideoCount(dynamic count) {}
  void setIsProcessing(dynamic value) {}
}

class _GetImpl {
  _GetImpl();
  dynamic find<S>({dynamic tag}) => const _Stub();
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
