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

  Widget _categoryRow({
    required String label,
    required VoidCallback onExport,
    required VoidCallback onImport,
    required AppLocalizations l10n,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          ShadButton.outline(onPressed: onExport, child: Text(l10n.export)),
          const SizedBox(width: 8),
          ShadButton.outline(onPressed: onImport, child: Text(l10n.import)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final service = DataBackupService();
    final db = ref.watch(databaseProvider);
    final prefs = ref.watch(sharedPreferencesProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _categoryRow(
          label: l10n.conversations_label,
          l10n: l10n,
          onExport: () {
            /* spm: non-rebuild body erased */
          },
          onImport: () {
            /* spm: non-rebuild body erased */
          },
        ),
        _categoryRow(
          label: l10n.personas_label,
          l10n: l10n,
          onExport: () {
            /* spm: non-rebuild body erased */
          },
          onImport: () {
            /* spm: non-rebuild body erased */
          },
        ),
        _categoryRow(
          label: l10n.settings_label,
          l10n: l10n,
          onExport: () {
            /* spm: non-rebuild body erased */
          },
          onImport: () {
            /* spm: non-rebuild body erased */
          },
        ),
        const SizedBox(height: 8),
        ShadButton.outline(
          onPressed: () {
            /* spm: non-rebuild body erased */
          },
          width: double.infinity,
          leading: const Icon(Icons.folder_zip_outlined, size: 16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(l10n.export_all_zip),
          ),
        ),
        const SizedBox(height: 8),
        ShadButton.outline(
          onPressed: () {
            /* spm: non-rebuild body erased */
          },
          width: double.infinity,
          leading: const Icon(Icons.unarchive_outlined, size: 16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(l10n.import_all_zip),
          ),
        ),
      ],
    );
  }
}

















// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
