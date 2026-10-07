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

late InvalidType fixtureL10n; // TODO: value

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

PasswordProvider fixtureProvider = PasswordProvider();

Widget fixtureEmptyWidget = const SizedBox.shrink();

// DECLARATION-ONLY STAND-INS -- repo-local declarations that build no UI, and
// third-party ones the transplant does not inline. Supertypes are mirrored so a
// widget still reads as a widget; everything else is `dynamic`, because none of it
// is measured.

class ActionPane extends StatelessWidget {
  final dynamic children;
  const ActionPane({
    super.key,
    dynamic extentRatio,
    dynamic motion,
    dynamic dismissible,
    dynamic dragDismissible,
    dynamic openThreshold,
    dynamic closeThreshold,
    this.children,
  });
  @override
  Widget build(BuildContext context) => Stack(
    children: children is List<Widget>
        ? children as List<Widget>
        : const <Widget>[],
  );
  dynamic get extentRatio => 0.0;
  Widget get motion => const SizedBox.shrink();
  Widget? get dismissible => null;
  dynamic get dragDismissible => false;
  dynamic get openThreshold => null;
  dynamic get closeThreshold => null;
  static dynamic of(dynamic context) => null;
}

class AllpassEdgeInsets {
  AllpassEdgeInsets._();
  static dynamic get listInset => const _Stub();
  static set listInset(dynamic _) {}
  static dynamic get widgetItemInset => const _Stub();
  static set widgetItemInset(dynamic _) {}
  static dynamic get dividerInset => const _Stub();
  static set dividerInset(dynamic _) {}
  static dynamic get forViewCardInset => const _Stub();
  static set forViewCardInset(dynamic _) {}
  static dynamic get forCardInset => const _Stub();
  static set forCardInset(dynamic _) {}
  static dynamic get settingCardInset => const _Stub();
  static set settingCardInset(dynamic _) {}
  static dynamic get forSearchButtonInset => const _Stub();
  static set forSearchButtonInset(dynamic _) {}
  static dynamic get smallTBPadding => const _Stub();
  static set smallTBPadding(dynamic _) {}
  static dynamic get smallLPadding => const _Stub();
  static set smallLPadding(dynamic _) {}
  static dynamic get smallRPadding => const _Stub();
  static set smallRPadding(dynamic _) {}
  static dynamic get smallTopInsets => const _Stub();
  static set smallTopInsets(dynamic _) {}
  static dynamic get bottom10Inset => const _Stub();
  static set bottom10Inset(dynamic _) {}
  static dynamic get bottom30Inset => const _Stub();
  static set bottom30Inset(dynamic _) {}
  static dynamic get bottom50Inset => const _Stub();
  static set bottom50Inset(dynamic _) {}
}

class BaseModel {
  BaseModel();
  dynamic get color => null;
  set color(dynamic _) {}
}

class PasswordBean extends BaseModel {
  PasswordBean({
    dynamic key,
    dynamic name,
    dynamic username,
    dynamic password,
    dynamic url,
    dynamic folder,
    dynamic notes,
    dynamic label,
    dynamic fav,
    dynamic createTime,
    dynamic color,
    dynamic sortNumber,
    dynamic appId,
    dynamic appName,
    dynamic encrypted,
  });
  static dynamic get empty => PasswordBean();
  static set empty(dynamic _) {}
  dynamic get encrypted => false;
  set encrypted(dynamic _) {}
  dynamic get uniqueKey => null;
  set uniqueKey(dynamic _) {}
  dynamic get name => '';
  set name(dynamic _) {}
  dynamic get username => '';
  set username(dynamic _) {}
  dynamic get password => '';
  set password(dynamic _) {}
  dynamic get url => '';
  set url(dynamic _) {}
  dynamic get folder => '';
  set folder(dynamic _) {}
  dynamic get notes => '';
  set notes(dynamic _) {}
  dynamic get label => <String>[];
  set label(dynamic _) {}
  dynamic get fav => 0;
  set fav(dynamic _) {}
  dynamic get createTime => '';
  set createTime(dynamic _) {}
  dynamic get sortNumber => 0;
  set sortNumber(dynamic _) {}
  dynamic get appId => null;
  set appId(dynamic _) {}
  dynamic get appName => null;
  set appName(dynamic _) {}
  dynamic copy() => PasswordBean();
  static dynamic fromJson(dynamic map) => PasswordBean();
  dynamic toJson() => <String, dynamic>{};
  static dynamic toCsv(dynamic bean) => Future<String>.value('');
  dynamic identify(dynamic other) => false;
}

class PasswordProvider extends ChangeNotifier {
  PasswordProvider({dynamic passwordRepository});
  dynamic get letterIndexMap => <String, int>{};
  dynamic get passwordList => [];
  dynamic get count => 0;
  dynamic get currPassword => PasswordBean();
  dynamic get mostUsedUsername => <String>[];
  dynamic init() => const _Stub();
  dynamic refresh() => const _Stub();
  dynamic insertPassword(dynamic bean) => const _Stub();
  dynamic deletePassword(dynamic bean) => const _Stub();
  dynamic updatePassword(dynamic bean) => const _Stub();
  void previewPassword({dynamic index, dynamic bean}) {}
  dynamic clear() => const _Stub();
  dynamic delete(dynamic list) => const _Stub();
}

class ScrollMotion extends StatelessWidget {
  const ScrollMotion({super.key});
  @override
  Widget build(BuildContext context) => const SizedBox.shrink();
}

class Slidable extends StatelessWidget {
  final dynamic child;
  const Slidable({
    super.key,
    dynamic controller,
    dynamic groupTag,
    dynamic enabled,
    dynamic closeOnScroll,
    dynamic startActionPane,
    dynamic endActionPane,
    dynamic direction,
    dynamic dragStartBehavior,
    dynamic useTextDirection,
    this.child,
  });
  @override
  Widget build(BuildContext context) =>
      child is Widget ? child as Widget : const SizedBox.shrink();
  dynamic get controller => null;
  dynamic get enabled => false;
  dynamic get closeOnScroll => false;
  dynamic get groupTag => const _Stub();
  ActionPane? get startActionPane => null;
  ActionPane? get endActionPane => null;
  dynamic get direction => const _Stub();
  dynamic get useTextDirection => false;
  dynamic get dragStartBehavior => const _Stub();
  static dynamic of(dynamic context) => null;
}

class SlidableAction extends StatelessWidget {
  const SlidableAction({
    super.key,
    dynamic flex,
    dynamic backgroundColor,
    dynamic foregroundColor,
    dynamic autoClose,
    dynamic onPressed,
    dynamic icon,
    dynamic spacing,
    dynamic label,
    dynamic borderRadius,
    dynamic padding,
  });
  @override
  Widget build(BuildContext context) => const SizedBox.shrink();
  dynamic get flex => 0;
  dynamic get backgroundColor => const _Stub();
  dynamic get foregroundColor => null;
  dynamic get autoClose => false;
  dynamic get onPressed => null;
  dynamic get icon => null;
  dynamic get spacing => 0.0;
  dynamic get label => null;
  dynamic get borderRadius => const _Stub();
  dynamic get padding => null;
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
