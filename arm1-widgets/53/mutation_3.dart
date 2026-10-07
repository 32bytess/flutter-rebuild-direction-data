// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  final ScrollController _internalScrollController = ScrollController();

  String? _title;
  ScrollController? _scrollController;
  List<Widget>? _scrollableContent;
  late double _horizontalContentPadding;
  Widget? _content;
  late List<Widget> _actions;

  ScrollController get scrollController =>
      _scrollController ?? _internalScrollController;

  @override
  void initState() {
    super.initState();
    settings = settingsValue;
    _title = fixtureTitle;
    _scrollController = null;
    _scrollableContent = fixtureScrollableContent();
    _horizontalContentPadding = AvesDialog.defaultHorizontalContentPadding;
    _content = null;
    _actions = makeActions();
  }

  @override
  void dispose() {
    _internalScrollController.dispose();
    super.dispose();
  }

  Widget _buildContent(BuildContext context) {
    final content = _content;
    if (content != null) {
      return content;
    }

    final scrollableContent = _scrollableContent;
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
              radius: Radius.circular(16),
              crossAxisMargin: 4,
              // adapt margin when corner is around content itself, not outside for the title
              mainAxisMargin:
                  4 +
                  (_title != null ? 0 : AvesDialog.cornerRadius.y / 2),
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
        padding: EdgeInsets.symmetric(horizontal: AvesDialog.borderWidth),
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

    return SizedBox();
  }

  @override
  Widget build(BuildContext context) {
    final title = _title;
    return AlertDialog(
      title: title != null
          ? Padding(
              // padding to avoid transparent border overlapping
              padding: EdgeInsets.symmetric(
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
      content: _buildContent(context),
      contentPadding: _scrollableContent != null
          ? EdgeInsets.zero
          : EdgeInsets.only(
              left: _horizontalContentPadding,
              top: 20,
              right: _horizontalContentPadding,
            ),
      actions: _actions,
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
      padding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
      decoration: AvesDialog.contentDecoration(context),
      child: Text(title, textAlign: TextAlign.center),
    );
  }
}