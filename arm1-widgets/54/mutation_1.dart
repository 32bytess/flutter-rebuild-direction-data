// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  static const routeName = '/dialog/edit_entry_title_description';

  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late final Set<DescriptionField> fields;

  late final TextEditingController _titleTextController, _descriptionTextController;

  @override
  void initState() {
    super.initState();
    settings = settingsValue;
    fields = fixtureFields();
    _titleTextController = makeTitleController();
    _descriptionTextController = makeDescriptionController();
  }

  @override
  void dispose() {
    _titleTextController.dispose();
    _descriptionTextController.dispose();
    super.dispose();
  }

  List<Widget> _buildFieldEditor(DescriptionField field) {
    final editing = fields.contains(field);
    return [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Padding(
          padding: EdgeInsets.zero,
          child: Container(
            child: LabeledCheckbox(
              value: editing,
              onChanged: (v) => setState(() => editing ? fields.remove(field) : fields.add(field)),
              text: _fieldName(field),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Padding(
          padding: EdgeInsets.zero,
          child: Container(
            child: TextField(
              controller: _fieldController(field),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              maxLines: null,
              enabled: editing,
            ),
          ),
        ),
      ),
    ];
  }

  TextEditingController _fieldController(DescriptionField field) {
    switch (field) {
      case DescriptionField.title:
        return _titleTextController;
      case DescriptionField.description:
        return _descriptionTextController;
    }
  }

  String _fieldName(DescriptionField field) {
    final l10n = context.l10n;
    return switch (field) {
      DescriptionField.title => l10n.viewerInfoLabelTitle,
      DescriptionField.description => l10n.viewerInfoLabelDescription,
    };
  }

  void _submit(BuildContext context) {
    final modifier = Map.fromEntries(
      fields.map((field) {
        final text = _fieldController(field).text;
        return MapEntry(field, text.isEmpty ? null : text);
      }),
    );
    return Navigator.maybeOf(context)?.pop<Map<DescriptionField, String?>>(modifier);
  }

  @override
  Widget build(BuildContext context) {
    return MediaQueryDataProvider(
      child: Builder(
        builder: (context) {
          return AvesDialog(
            scrollableContent: [
              const SizedBox(height: 8),
              ..._buildFieldEditor(DescriptionField.title),
              ..._buildFieldEditor(DescriptionField.description),
              const SizedBox(height: 8),
            ],
            actions: [
              const CancelButton(),
              TextButton(
                onPressed: fields.isEmpty ? null : () => _submit(context),
                child: Text(context.l10n.applyButtonLabel),
              ),
            ],
          );
        },
      ),
    );
  }
}
class MediaQueryDataProvider extends StatelessWidget {
  final Widget child;

  const MediaQueryDataProvider({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
class AvesDialog extends StatefulWidget {
  static const confirmationRouteName = '/dialog/confirmation';
  static const warningRouteName = '/dialog/warning';

  final String? title;
  final ScrollController? scrollController;
  final List<Widget>? scrollableContent;
  final double horizontalContentPadding;
  final Widget? content;
  final List<Widget> actions;

  static const Radius cornerRadius = Radius.circular(24);
  static const double defaultHorizontalContentPadding = 24;
  static const double controlCaptionPadding = 16;
  static const double borderWidth = 1.0;
  static const EdgeInsets actionsPadding = EdgeInsets.symmetric(vertical: 4, horizontal: 16);
  static const EdgeInsets buttonPadding = EdgeInsets.symmetric(horizontal: 8);

  const AvesDialog({
    super.key,
    this.title,
    this.scrollController,
    this.scrollableContent,
    this.horizontalContentPadding = defaultHorizontalContentPadding,
    this.content,
    this.actions = const [],
  }) : assert((scrollableContent != null) ^ (content != null));

  @override
  State<AvesDialog> createState() => _AvesDialogState();

  static Decoration contentDecoration(BuildContext context) => BoxDecoration(
    border: Border(
      bottom: Divider.createBorderSide(context, width: borderWidth),
    ),
  );

  static ShapeBorder shape(BuildContext context) {
    return RoundedRectangleBorder(
      side: Divider.createBorderSide(context, width: borderWidth),
      borderRadius: const BorderRadius.all(cornerRadius),
    );
  }
}
class _AvesDialogState extends State<AvesDialog> {
  final ScrollController _internalScrollController = ScrollController();

  ScrollController get scrollController => widget.scrollController ?? _internalScrollController;

  @override
  void dispose() {
    _internalScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final title = widget.title;
    return AlertDialog(
      title: title != null
          ? Padding(
              // padding to avoid transparent border overlapping
              padding: const EdgeInsets.symmetric(horizontal: AvesDialog.borderWidth),
              child: DialogTitle(title: title),
            )
          : null,
      titlePadding: EdgeInsets.zero,
      // the `scrollable` flag of `AlertDialog` makes it
      // scroll both the title and the content together,
      // and overflow feedback ignores the dialog shape,
      // so we restrict scrolling to the content instead
      content: _buildContent(context),
      contentPadding: widget.scrollableContent != null
          ? EdgeInsets.zero
          : EdgeInsets.only(
              left: widget.horizontalContentPadding,
              top: 20,
              right: widget.horizontalContentPadding,
            ),
      actions: widget.actions,
      actionsPadding: AvesDialog.actionsPadding,
      buttonPadding: AvesDialog.buttonPadding,
      // clipping to prevent highlighted material to bleed through rounded corners
      clipBehavior: Clip.antiAlias,
      shape: AvesDialog.shape(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    final content = widget.content;
    if (content != null) {
      return content;
    }

    final scrollableContent = widget.scrollableContent;
    if (scrollableContent != null) {
      Widget child = ListView(
        controller: scrollController,
        shrinkWrap: true,
        children: scrollableContent,
      );

      if (!settings.useTvLayout) {
        child = Theme(
          data: Theme.of(context).copyWith(
            scrollbarTheme: ScrollbarThemeData(
              thumbVisibility: WidgetStateProperty.all(true),
              radius: const Radius.circular(16),
              crossAxisMargin: 4,
              // adapt margin when corner is around content itself, not outside for the title
              mainAxisMargin: 4 + (widget.title != null ? 0 : AvesDialog.cornerRadius.y / 2),
              interactive: true,
            ),
          ),
          child: Scrollbar(
            controller: scrollController,
            notificationPredicate: (notification) {
              // as of Flutter v3.0.1, the `Scrollbar` does not only respond to the nearest `ScrollView`
              // despite the `defaultScrollNotificationPredicate` checking notification depth,
              // as the notifications coming from the controller in `ListWheelScrollView` in `WheelSelector` still have a depth of 0.
              // Cancelling notification bubbling seems ineffective, so we check the metrics type as a workaround.
              return defaultScrollNotificationPredicate(notification) && notification.metrics is! FixedExtentMetrics;
            },
            child: child,
          ),
        );
      }

      return Container(
        // padding to avoid transparent border overlapping
        padding: const EdgeInsets.symmetric(horizontal: AvesDialog.borderWidth),
        // workaround because the dialog tries
        // to size itself to the content intrinsic size,
        // but the `ListView` viewport does not have one
        width: MediaQuery.sizeOf(context).width / 2,
        child: DecoratedBox(
          decoration: AvesDialog.contentDecoration(context),
          child: child,
        ),
      );
    }

    return const SizedBox();
  }
}
class DialogTitle extends StatelessWidget {
  final String title;

  const DialogTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
      decoration: AvesDialog.contentDecoration(context),
      child: Text(title, textAlign: TextAlign.center),
    );
  }
}
class CancelButton<T> extends StatelessWidget {
  final String? text;
  final T? result;

  const CancelButton({
    super.key,
    this.text,
    this.result,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.maybeOf(context)?.pop(result),
      // MD2 button labels were upper case but they are lower case in MD3
      child: Text(text ?? Themes.asButtonLabel(context.l10n.cancelTooltip)),
    );
  }
}
class LabeledCheckbox extends StatefulWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final String text;

  const LabeledCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    required this.text,
  });

  @override
  State<LabeledCheckbox> createState() => _LabeledCheckboxState();
}
class _LabeledCheckboxState extends State<LabeledCheckbox> {
  late TapGestureRecognizer _tapRecognizer;

  @override
  void initState() {
    super.initState();
    _tapRecognizer = TapGestureRecognizer()..onTap = () => widget.onChanged(!widget.value);
  }

  @override
  void dispose() {
    _tapRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Checkbox(
              value: widget.value,
              onChanged: widget.onChanged,
            ),
          ),
          TextSpan(
            text: widget.text,
            recognizer: _tapRecognizer,
          ),
        ],
      ),
    );
  }
}