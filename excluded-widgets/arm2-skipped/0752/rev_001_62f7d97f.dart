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
  }

  Widget _actionButton({
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: ShadButton.outline(
        onPressed: onPressed,
        width: double.infinity,
        leading: Icon(icon, size: 16),
        child: Align(alignment: Alignment.centerLeft, child: Text(label)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final service = DataBackupService();
    final db = ref.read(databaseProvider);
    return Column(
      children: [
        _actionButton(
          icon: Icons.forum_outlined,
          label: l10n.export_conversations,
          onPressed: () {
            /* spm: non-rebuild body erased */
          },
        ),
        _actionButton(
          icon: Icons.download_outlined,
          label: l10n.import_conversations,
          onPressed: () {
            /* spm: non-rebuild body erased */
          },
        ),
        _actionButton(
          icon: Icons.smart_toy_outlined,
          label: l10n.export_personas,
          onPressed: () {
            /* spm: non-rebuild body erased */
          },
        ),
        _actionButton(
          icon: Icons.download_outlined,
          label: l10n.import_personas,
          onPressed: () {
            /* spm: non-rebuild body erased */
          },
        ),
        _actionButton(
          icon: Icons.settings_outlined,
          label: l10n.export_settings,
          onPressed: () {
            /* spm: non-rebuild body erased */
          },
        ),
        _actionButton(
          icon: Icons.download_outlined,
          label: l10n.import_settings,
          onPressed: () {
            /* spm: non-rebuild body erased */
          },
        ),
        _actionButton(
          icon: Icons.folder_zip_outlined,
          label: l10n.export_all_zip,
          onPressed: () {
            /* spm: non-rebuild body erased */
          },
        ),
        _actionButton(
          icon: Icons.unarchive_outlined,
          label: l10n.import_all_zip,
          onPressed: () {
            /* spm: non-rebuild body erased */
          },
        ),
      ],
    );
  }
}















// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
