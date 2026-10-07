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
  static const routeName = '/dialog/create_dynamic_album';

  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late final TextEditingController _nameController;
  late final ValueNotifier<bool> _existsNotifier;
  late final ValueNotifier<bool> _isValidNotifier;
  late final List<String> dynamicAlbums;

  @override
  void initState() {
    super.initState();
    settings = settingsValue;
    _nameController = makeTextController();
    _existsNotifier = makeBoolNotifier();
    _isValidNotifier = makeBoolNotifier();
    dynamicAlbums = fixtureDynamicAlbums();
    _validate();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _existsNotifier.dispose();
    _isValidNotifier.dispose();
    super.dispose();
  }

  String? _formatAlbumName() {
    final name = _nameController.text.trim();
    if (name.isEmpty) return null;

    return name;
  }

  void _validate() {
    final name = _formatAlbumName();
    _isValidNotifier.value = name != null;
    _existsNotifier.value = dynamicAlbums.contains(name);
  }

  void _submit(BuildContext context) {
    if (_isValidNotifier.value) {
      Navigator.maybeOf(context)?.pop(_formatAlbumName());
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AvesDialog(
      title: l10n.newDynamicAlbumDialogTitle,
      content: _NameField(
        controller: _nameController,
        existsNotifier: _existsNotifier,
        onChanged: _validate,
        onSubmitted: () => _submit(context),
      ),
      actions: [
        const CancelButton(),
        _SubmitButton(
          existsNotifier: _existsNotifier,
          isValidNotifier: _isValidNotifier,
          onPressed: () => _submit(context),
        ),
      ],
    );
  }
}
class _NameField extends StatelessWidget {
  final TextEditingController controller;
  final ValueNotifier<bool> existsNotifier;
  final VoidCallback onChanged;
  final VoidCallback onSubmitted;

  const _NameField({
    required this.controller,
    required this.existsNotifier,
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
            labelText: l10n.newAlbumDialogNameLabel,
            helperText: exists ? l10n.dynamicAlbumAlreadyExists : '',
          ),
          autofocus: false,
          onChanged: (_) => onChanged(),
          onSubmitted: (_) => onSubmitted(),
        );
      },
    );
  }
}
class _SubmitButton extends StatelessWidget {
  final ValueNotifier<bool> existsNotifier;
  final ValueNotifier<bool> isValidNotifier;
  final VoidCallback onPressed;

  const _SubmitButton({
    required this.existsNotifier,
    required this.isValidNotifier,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ValueListenableBuilder<bool>(
      valueListenable: existsNotifier,
      builder: (context, exists, child) {
        return ValueListenableBuilder<bool>(
          valueListenable: isValidNotifier,
          builder: (context, isValid, child) {
            return TextButton(
              onPressed: isValid ? onPressed : null,
              child: Text(
                exists ? l10n.showButtonLabel : l10n.createAlbumButtonLabel,
              ),
            );
          },
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
          ? Padding(
              // padding to avoid transparent border overlapping
              padding: const EdgeInsets.symmetric(
                horizontal: AvesDialog.borderWidth,
              ),
              child: DialogTitle(title: title),
            )
          : null,
      titlePadding: EdgeInsets.zero,
      // the `scrollable` flag of `AlertDialog` makes it
      // scroll both the title and the content together,
      // and overflow feedback ignores the dialog shape,
      // so we restrict scrolling to the content instead
      content: _AvesDialogContent(
        content: widget.content,
        scrollableContent: widget.scrollableContent,
        scrollController: scrollController,
        title: widget.title,
      ),
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
class _AvesDialogContent extends StatelessWidget {
  final Widget? content;
  final List<Widget>? scrollableContent;
  final ScrollController scrollController;
  final String? title;

  const _AvesDialogContent({
    required this.content,
    required this.scrollableContent,
    required this.scrollController,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final content = this.content;
    if (content != null) {
      return content;
    }

    final scrollableContent = this.scrollableContent;
    if (scrollableContent != null) {
      return _ScrollableDialogContent(
        scrollController: scrollController,
        scrollableContent: scrollableContent,
        title: title,
      );
    }

    return const SizedBox();
  }
}
class _ScrollableDialogContent extends StatelessWidget {
  final ScrollController scrollController;
  final List<Widget> scrollableContent;
  final String? title;

  const _ScrollableDialogContent({
    required this.scrollController,
    required this.scrollableContent,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
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
            mainAxisMargin:
                4 + (title != null ? 0 : AvesDialog.cornerRadius.y / 2),
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