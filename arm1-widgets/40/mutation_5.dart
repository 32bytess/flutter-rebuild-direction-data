// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late bool _expanded;

  @override
  void initState() {
    super.initState();
    _expanded = false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _HeaderRow(
          expanded: _expanded,
          onToggleExpanded: () {
            setState(() {
              _expanded = !_expanded;
            });
          },
        ),
        if (_expanded)
          const Padding(
            padding: EdgeInsets.only(left: 8, right: 8, bottom: 8),
            child: LoadingLineContent(),
          ),
      ],
    );
  }
}

class _HeaderRow extends StatelessWidget {
  const _HeaderRow({required this.expanded, required this.onToggleExpanded});

  final bool expanded;
  final VoidCallback onToggleExpanded;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          const Expanded(flex: 2, child: _LabelText()),
          Expanded(
            flex: 3,
            child: _ValueRow(
              expanded: expanded,
              onToggleExpanded: onToggleExpanded,
            ),
          ),
        ],
      ),
    );
  }
}

class _LabelText extends StatelessWidget {
  const _LabelText();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      'Label',
      style: theme.textTheme.bodyMedium?.copyWith(
        color: Theme.of(context).colorScheme.onSurface,
      ),
    );
  }
}

class _ValueRow extends StatelessWidget {
  const _ValueRow({required this.expanded, required this.onToggleExpanded});

  final bool expanded;
  final VoidCallback onToggleExpanded;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Flexible(
          child: Text(
            'Value',
            textAlign: TextAlign.end,
            overflow: TextOverflow.clip,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
              decoration: TextDecoration.none,
            ),
          ),
        ),
        const SizedBox(width: 8),
        const _CopyIconButton(),
        const SizedBox(width: 8),
        _ExpandIconButton(expanded: expanded, onToggle: onToggleExpanded),
      ],
    );
  }
}

class _CopyIconButton extends StatelessWidget {
  const _CopyIconButton();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Theme.of(context).colorScheme.primary.withAlpha(30),
        onTap: () {
          Clipboard.setData(ClipboardData(text: 'copy-value'));
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Copied')));
        },
        child: Icon(
          Icons.copy_outlined,
          size: 18,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}

class _ExpandIconButton extends StatelessWidget {
  const _ExpandIconButton({required this.expanded, required this.onToggle});

  final bool expanded;
  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onToggle,
        child: Icon(
          expanded ? Icons.expand_less : Icons.expand_more,
          size: 18,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}

class LoadingLineContent extends StatelessWidget {
  const LoadingLineContent({
    super.key,
    this.width = double.infinity,
    this.height = 12.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
  });

  final double width;
  final double height;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: width,
            height: height,
            color: Theme.of(context).colorScheme.surface,
          ),
        ],
      ),
    );
  }
}