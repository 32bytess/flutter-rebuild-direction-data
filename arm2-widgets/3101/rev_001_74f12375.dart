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
    final hasChangelog = info.changelog != null && info.changelog!.isNotEmpty;
    if (!hasChangelog) {
      return ListTile(
        title: Text(
          'Доступна v${info.version}',
          style: const TextStyle(color: AppColors.textPrimary),
        ),
        subtitle: resumableBytes > 0
            ? Text(
                'Продолжить (${(resumableBytes / 1024 / 1024).toStringAsFixed(1)} МБ)',
                style: const TextStyle(
                  color: AppColors.textSecondary,
                  fontSize: 12,
                ),
              )
            : null,
        trailing: TextButton(
          onPressed: () {
            /* spm: non-rebuild body erased */
          },
          child: Text(resumableBytes > 0 ? 'Продолжить' : 'Скачать'),
        ),
      );
    }
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        tilePadding: const EdgeInsets.symmetric(horizontal: 16),
        childrenPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        title: Text(
          'Доступна v${info.version}',
          style: const TextStyle(color: AppColors.textPrimary),
        ),
        subtitle: resumableBytes > 0
            ? Text(
                'Продолжить (${(resumableBytes / 1024 / 1024).toStringAsFixed(1)} МБ)',
                style: const TextStyle(
                  color: AppColors.textSecondary,
                  fontSize: 12,
                ),
              )
            : null,
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () {
                /* spm: non-rebuild body erased */
              },
              child: Text(resumableBytes > 0 ? 'Продолжить' : 'Скачать'),
            ),
            const Icon(
              Icons.expand_more,
              color: AppColors.textDisabled,
              size: 20,
            ),
          ],
        ),
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: SelectableText(
              info.changelog!,
              style: const TextStyle(
                color: AppColors.textSecondary,
                fontSize: 12,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}













// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
