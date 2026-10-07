// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late BackupSettingsState state;

  @override
  void initState() {
    super.initState();
    state = fixtureBackupSettingsState;
  }

  @override
  Widget build(BuildContext context) {
    final rows = <MapEntry<String, bool>>[
      MapEntry('Physical Backup', state.isDefaultPhysicalBackupTested),
      MapEntry('Encrypted Vault', state.isDefaultEncryptedBackupTested),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: rows
          .map<Widget>(
            (entry) => _StatusRow(label: entry.key, isTested: entry.value),
          )
          .expand(
            (widget) sync* {
              yield widget;
              yield const SizedBox(height: 15);
            },
          )
          .toList()
        ..removeLast(),
    );
  }
}
class _StatusRow extends StatelessWidget {
  final String label;
  final bool isTested;

  const _StatusRow({required this.label, required this.isTested});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label, style: Theme.of(context).textTheme.bodyMedium),
        const Spacer(),
        Text(
          isTested ? 'Tested' : 'Not Tested',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: isTested ? Colors.green : Colors.red,
          ),
        ),
      ],
    );
  }
}