// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  static const routeName = '/dialog/edit_entry_rating';

  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late RatingAction _action;

  late int _rating;

  @override
  void initState() {
    super.initState();
    settings = settingsValue;
    final entryRating = fixtureEntryRating;
    switch (entryRating) {
      case -1:
        _action = RatingAction.rejected;
        _rating = 0;
      case 0:
        _action = RatingAction.unrated;
        _rating = 0;
      default:
        _action = RatingAction.set;
        _rating = entryRating;
    }
  }

  bool get isValid => !(_action == RatingAction.set && _rating <= 0);

  void _submit(BuildContext context) {
    late int entryRating;
    switch (_action) {
      case .set:
        entryRating = _rating;
      case .rejected:
        entryRating = -1;
      case .unrated:
        entryRating = 0;
    }
    Navigator.maybeOf(context)?.pop(entryRating);
  }

  @override
  Widget build(BuildContext context) {
    return MediaQueryDataProvider(
      child: TooltipTheme(
        data: TooltipTheme.of(context).copyWith(preferBelow: false),
        child: Builder(
          builder: (context) {
            final l10n = context.l10n;

            return AvesDialog(
              title: l10n.editEntryRatingDialogTitle,
              scrollableContent: [
                RadioGroup(
                  groupValue: _action,
                  onChanged: (v) {
                    if (v != RatingAction.set) {
                      _rating = 0;
                    }
                    setState(() => _action = v!);
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RadioListTile<RatingAction>(
                        value: RatingAction.set,
                        title: Wrap(
                          children: [
                            ...List.generate(5, (i) {
                              final thisRating = i + 1;
                              final disabled = _rating < thisRating;
                              return GestureDetector(
                                onTap: () => setState(() {
                                  _action = RatingAction.set;
                                  _rating = thisRating;
                                }),
                                behavior: HitTestBehavior.opaque,
                                child: Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Icon(
                                    AIcons.rating,
                                    fill: disabled ? 0 : 1,
                                    color: disabled
                                        ? AColors.starDisabled
                                        : AColors.starEnabled,
                                  ),
                                ),
                              );
                            }),
                          ],
                        ),
                      ),
                      RadioListTile<RatingAction>(
                        value: RatingAction.rejected,
                        title: Text(l10n.filterRatingRejectedLabel),
                      ),
                      RadioListTile<RatingAction>(
                        value: RatingAction.unrated,
                        title: Text(l10n.filterNoRatingLabel),
                      ),
                    ],
                  ),
                ),
              ],
              actions: [
                const CancelButton(),
                TextButton(
                  onPressed: isValid ? () => _submit(context) : null,
                  child: Text(l10n.applyButtonLabel),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
class MediaQueryDataProvider extends StatelessWidget {
  final Widget child;

  const MediaQueryDataProvider({super.key, required this.child});

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

    final Widget contentWidget;
    final content = widget.content;
    final scrollableContent = widget.scrollableContent;
    if (content != null) {
      contentWidget = content;
    } else if (scrollableContent != null) {
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
                  4 +
                  (widget.title != null ? 0 : AvesDialog.cornerRadius.y / 2),
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

      contentWidget = Container(
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
    } else {
      contentWidget = const SizedBox();
    }

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
      content: contentWidget,
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