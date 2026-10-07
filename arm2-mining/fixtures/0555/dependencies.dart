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

List<String> fixtureValue = <String>[]; // TODO: value

Widget fixtureChild = const SizedBox.shrink();

String fixtureCategoryName = '';

// DECLARATION-ONLY STAND-INS -- repo-local declarations that build no UI, and
// third-party ones the transplant does not inline. Supertypes are mirrored so a
// widget still reads as a widget; everything else is `dynamic`, because none of it
// is measured.

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

class CategoryProvider extends ChangeNotifier {
  CategoryProvider();
  dynamic get folderList => <String>[];
  dynamic get labelList => <String>[];
  void init() {}
  dynamic isLabelDuplicated(dynamic label) => false;
  dynamic addLabel(dynamic labels) => Future<bool>.value(false);
  dynamic updateLabel(dynamic index, dynamic newLabel) => const _Stub();
  void reorderLabel(dynamic oldIndex, dynamic newIndex) {}
  dynamic deleteLabel(dynamic label) => const _Stub();
  dynamic isFolderDuplicated(dynamic folder) => false;
  dynamic addFolder(dynamic folders) => Future<bool>.value(false);
  dynamic updateFolder(dynamic index, dynamic newFolder) => const _Stub();
  void reorderFolder(dynamic oldIndex, dynamic newIndex) {}
  dynamic deleteFolder(dynamic folder) => const _Stub();
  dynamic clear() => const _Stub();
}

extension L10nSupport on BuildContext {
  dynamic get l10n => const _Stub();
}

class ThemeProvider extends ChangeNotifier {
  ThemeProvider();
  dynamic get appTheme => const _Stub();
  dynamic get specialBackgroundColor => const _Stub();
  set specialBackgroundColor(dynamic _) {}
  dynamic get offstageColor => const _Stub();
  set offstageColor(dynamic _) {}
  void init() {}
  void changeThemeMode(dynamic targetMode, dynamic platformBrightness) {}
  void changePrimaryColor(dynamic color, dynamic platformBrightness) {}
  void setExtraColor(dynamic platformBrightness) {}
  dynamic get successContentColor => const _Stub();
  set successContentColor(dynamic _) {}
  dynamic get successBackgroundColor => const _Stub();
  set successBackgroundColor(dynamic _) {}
  dynamic get infoContentColor => const _Stub();
  set infoContentColor(dynamic _) {}
  dynamic get infoBackgroundColor => const _Stub();
  set infoBackgroundColor(dynamic _) {}
  dynamic get warningContentColor => const _Stub();
  set warningContentColor(dynamic _) {}
  dynamic get waringBackgroundColor => const _Stub();
  set waringBackgroundColor(dynamic _) {}
  dynamic get errorContentColor => const _Stub();
  set errorContentColor(dynamic _) {}
  dynamic get errorBackgroundColor => const _Stub();
  set errorBackgroundColor(dynamic _) {}
  dynamic get iconColor => const _Stub();
  set iconColor(dynamic _) {}
}

extension WatchContext on BuildContext {
  dynamic watch<T>() => const _Stub();
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
