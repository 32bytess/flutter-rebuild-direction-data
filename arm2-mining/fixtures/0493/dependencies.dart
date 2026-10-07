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

class AutoSizeTextField extends StatelessWidget {
  const AutoSizeTextField({
    super.key,
    dynamic fullwidth,
    dynamic textFieldKey,
    dynamic style,
    dynamic strutStyle,
    dynamic minFontSize,
    dynamic maxFontSize,
    dynamic stepGranularity,
    dynamic presetFontSizes,
    dynamic textAlign,
    dynamic textDirection,
    dynamic locale,
    dynamic wrapWords,
    dynamic overflowReplacement,
    dynamic semanticsLabel,
    dynamic controller,
    dynamic focusNode,
    dynamic decoration,
    dynamic keyboardType,
    dynamic textInputAction,
    dynamic textCapitalization,
    dynamic textAlignVertical,
    dynamic autofillHints,
    dynamic autofocus,
    dynamic obscureText,
    dynamic autocorrect,
    dynamic smartDashesType,
    dynamic smartQuotesType,
    dynamic enableSuggestions,
    dynamic maxLines,
    dynamic expands,
    dynamic readOnly,
    dynamic contextMenuBuilder,
    dynamic showCursor,
    dynamic maxLength,
    dynamic maxLengthEnforcement,
    dynamic onChanged,
    dynamic onEditingComplete,
    dynamic onSubmitted,
    dynamic inputFormatters,
    dynamic enabled,
    dynamic cursorHeight,
    dynamic cursorWidth,
    dynamic cursorRadius,
    dynamic cursorColor,
    dynamic selectionHeightStyle,
    dynamic selectionWidthStyle,
    dynamic keyboardAppearance,
    dynamic scrollPadding,
    dynamic dragStartBehavior,
    dynamic enableInteractiveSelection,
    dynamic onTap,
    dynamic onTapOutside,
    dynamic buildCounter,
    dynamic scrollPhysics,
    dynamic scrollController,
    dynamic minLines,
    dynamic minWidth,
    dynamic selectionControls,
  });
  @override
  Widget build(BuildContext context) => const SizedBox.shrink();
}

class CalculatorController {
  CalculatorController();
  static dynamic get instance => CalculatorController();
  dynamic get expression => const _Stub();
  set expression(dynamic _) {}
  dynamic get exp => '';
  dynamic get output => const _Stub();
  set output(dynamic _) {}
  dynamic get offset => const _Stub();
  set offset(dynamic _) {}
  void onInit() {}
  void addNumber(dynamic number, [dynamic position]) {}
  void addOperator(dynamic operator, [dynamic position]) {}
  void addDecimal([dynamic position]) {}
  void calculate({dynamic skipError}) {}
  void equals() {}
  void clear() {}
  void delete([dynamic position]) {}
  void loadCalculation(dynamic result) {}
  void addParentheses(dynamic p, [dynamic position]) {}
  void updateExpression(dynamic newExp, {dynamic offset}) {}
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

class RxInt {
  RxInt(dynamic initial);
  dynamic get value => 0;
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

class RxString {
  RxString(dynamic initial);
  dynamic allMatches(dynamic string, [dynamic start]) => [];
  dynamic matchAsPrefix(dynamic string, [dynamic start]) => null;
  dynamic compareTo(dynamic other) => 0;
  dynamic get value => '';
}

class _GetImpl {
  _GetImpl();
  dynamic find<S>({dynamic tag}) => const _Stub();
}

// UNRESOLVED-REFERENCE STAND-INS -- reconstructed from the call sites, because the
// symbol lives in a package this file may not import or the source project's own
// dependencies were never installed. Every type here is `dynamic`.

extension _SpmTextEditingControllerShim on TextEditingController {
  dynamic get value => const _Stub();
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
