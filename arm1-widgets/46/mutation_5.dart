// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class DialogTitle extends StatelessWidget {
  final String title;

  const DialogTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      child: Text(title, style: Theme.of(context).textTheme.titleLarge),
    );
  }
}
class GeneratedWidget extends StatefulWidget {
  static const routeName = '/dialog/create_group';

  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late final TextEditingController _nameController;
  late final ValueNotifier<bool> _existsNotifier;
  late final ValueNotifier<bool> _isValidNotifier;
  late final FilterGrouping grouping;
  Uri? parentGroupUri;

  @override
  void initState() {
    super.initState();
    settings = settingsValue;
    _nameController = makeTextController();
    _existsNotifier = makeBoolNotifier();
    _isValidNotifier = makeBoolNotifier();
    grouping = makeGrouping();
    parentGroupUri = null;
    _validate();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _existsNotifier.dispose();
    _isValidNotifier.dispose();
    super.dispose();
  }

  Uri? _getNewGroupUri() {
    final name = _nameController.text.trim();
    if (name.isEmpty) return null;
    return grouping.buildGroupUri(parentGroupUri, name);
  }

  void _validate() {
    final newGroupUri = _getNewGroupUri();
    final exists = grouping.exists(newGroupUri);
    _isValidNotifier.value = newGroupUri != null && !exists;
    _existsNotifier.value = exists;
  }

  void _submit(BuildContext context) {
    if (_isValidNotifier.value) {
      Navigator.maybeOf(context)?.pop(_getNewGroupUri());
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AvesDialog(
      title: l10n.newGroupDialogTitle,
      content: _GroupNameField(
        existsNotifier: _existsNotifier,
        controller: _nameController,
        onChanged: _validate,
        onSubmitted: _submit,
      ),
      actions: [
        const CancelButton(),
        _CreateButton(isValidNotifier: _isValidNotifier, onPressed: _submit),
      ],
    );
  }
}
class _GroupNameField extends StatelessWidget {
  final ValueNotifier<bool> existsNotifier;
  final TextEditingController controller;
  final VoidCallback onChanged;
  final void Function(BuildContext context) onSubmitted;

  const _GroupNameField({
    required this.existsNotifier,
    required this.controller,
    required this.onChanged,
    required this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ValueListenableBuilder<bool>(
      valueListenable: existsNotifier,
      builder: (context, exists, child) {
        return TextField(
          controller: controller,
          decoration: InputDecoration(
            labelText: l10n.newGroupDialogNameLabel,
            helperText: exists ? l10n.groupAlreadyExists : '',
          ),
          autofocus: false,
          onChanged: (_) => onChanged(),
          onSubmitted: (_) => onSubmitted(context),
        );
      },
    );
  }
}
class _CreateButton extends StatelessWidget {
  final ValueNotifier<bool> isValidNotifier;
  final void Function(BuildContext context) onPressed;

  const _CreateButton({required this.isValidNotifier, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ValueListenableBuilder<bool>(
      valueListenable: isValidNotifier,
      builder: (context, isValid, child) {
        return TextButton(
          onPressed: isValid ? () => onPressed(context) : null,
          child: Text(l10n.createButtonLabel),
        );
      },
    );
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
  static const EdgeInsets actionsPadding = EdgeInsets.symmetric(
    vertical: 4,
    horizontal: 16,
  );
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

  ScrollController get scrollController =>
      widget.scrollController ?? _internalScrollController;

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
          ? _AvesDialogTitle(title: title)
          : null,
      titlePadding: EdgeInsets.zero,
      // the `scrollable` flag of `AlertDialog` makes it
      // scroll both the title and the content together,
      // and overflow feedback ignores the dialog shape,
      // so we restrict scrolling to the content instead
      content: widget.content ??
          (widget.scrollableContent != null
              ? _AvesDialogScrollableContent(
                  scrollController: scrollController,
                  items: widget.scrollableContent!,
                  hasTitle: widget.title != null,
                )
              : const SizedBox()),
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
}
class _AvesDialogTitle extends StatelessWidget {
  final String title;

  const _AvesDialogTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding to avoid transparent border overlapping
      padding: const EdgeInsets.symmetric(
        horizontal: AvesDialog.borderWidth,
      ),
      child: DialogTitle(title: title),
    );
  }
}
class _AvesDialogScrollableContent extends StatelessWidget {
  final ScrollController scrollController;
  final List<Widget> items;
  final bool hasTitle;

  const _AvesDialogScrollableContent({
    required this.scrollController,
    required this.items,
    required this.hasTitle,
  });

  @override
  Widget build(BuildContext context) {
    Widget child = ListView(
      controller: scrollController,
      shrinkWrap: true,
      children: items,
    );

    if (!settings.useTvLayout) {
      child = _AvesDialogScrollTheme(
        scrollController: scrollController,
        hasTitle: hasTitle,
        child: child,
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
}
class _AvesDialogScrollTheme extends StatelessWidget {
  final ScrollController scrollController;
  final bool hasTitle;
  final Widget child;

  const _AvesDialogScrollTheme({
    required this.scrollController,
    required this.hasTitle,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        scrollbarTheme: ScrollbarThemeData(
          thumbVisibility: WidgetStateProperty.all(true),
          radius: const Radius.circular(16),
          crossAxisMargin: 4,
          // adapt margin when corner is around content itself, not outside for the title
          mainAxisMargin: 4 + (hasTitle ? 0 : AvesDialog.cornerRadius.y / 2),
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
          return defaultScrollNotificationPredicate(notification) &&
              notification.metrics is! FixedExtentMetrics;
        },
        child: child,
      ),
    );
  }
}
class CancelButton<T> extends StatelessWidget {
  final String? text;
  final T? result;

  const CancelButton({super.key, this.text, this.result});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.maybeOf(context)?.pop(result),
      // MD2 button labels were upper case but they are lower case in MD3
      child: Text(text ?? Themes.asButtonLabel(context.l10n.cancelTooltip)),
    );
  }
}