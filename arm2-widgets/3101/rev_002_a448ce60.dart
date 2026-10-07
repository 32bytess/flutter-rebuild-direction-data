// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'package:flutter/material.dart';
part 'dependencies.dart';


class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  GeneratedWidget.fixture({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  late WidgetRef ref;

  @override
  void initState() {
    super.initState();
    ref = fixtureRef;
    info = fixtureInfo;
    resumableBytes = fixtureResumableBytes;
  }

  late UpdateInfo info;

  late int resumableBytes;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context).extension<TeapodTokens>()!;
    final hasChangelog = info.changelog != null && info.changelog!.isNotEmpty;
    final btnLabel = resumableBytes > 0 ? 'ПРОДОЛЖИТЬ' : 'СКАЧАТЬ';
    if (!hasChangelog) {
      return _UpdateRow(
        t: t,
        label: 'Доступна v${info.version}',
        action: _SqBtn(
          t: t,
          label: btnLabel,
          filled: true,
          onTap: () {
            /* spm: non-rebuild body erased */
          },
        ),
      );
    }
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        tilePadding: EdgeInsets.zero,
        childrenPadding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
        title: Text(
          'Доступна v${info.version}',
          style: AppTheme.sans(size: 14, color: t.text),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _SqBtn(
              t: t,
              label: btnLabel,
              filled: true,
              onTap: () {
                /* spm: non-rebuild body erased */
              },
            ),
            const SizedBox(width: 8),
            Icon(Icons.expand_more, color: t.textMuted, size: 18),
          ],
        ),
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: SelectableText(
              info.changelog!,
              style: AppTheme.mono(size: 11, color: t.textDim, height: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}

class _UpdateRow extends StatelessWidget {
  final TeapodTokens t;
  final String label;
  final Color? labelColor;
  final Widget action;
  const _UpdateRow({
    required this.t,
    required this.label,
    required this.action,
    this.labelColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              label,
              style: AppTheme.sans(size: 14, color: labelColor ?? t.text),
            ),
          ),
          const SizedBox(width: 12),
          action,
        ],
      ),
    );
  }
}

class _SqBtn extends StatelessWidget {
  final TeapodTokens t;
  final String label;
  final bool filled;
  final VoidCallback? onTap;
  const _SqBtn({
    required this.t,
    required this.label,
    this.filled = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        color: filled ? t.accent : null,
        decoration: filled
            ? null
            : BoxDecoration(border: Border.all(color: t.line)),
        child: Text(
          label,
          style: AppTheme.mono(
            size: 10,
            color: filled ? t.bg : t.accent,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}















// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
