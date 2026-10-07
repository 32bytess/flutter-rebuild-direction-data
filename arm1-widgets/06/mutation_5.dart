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
    return _BackupSettingsBody(state: state);
  }
}
class _BackupSettingsBody extends StatelessWidget {
  final BackupSettingsState state;

  const _BackupSettingsBody({required this.state});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _StatusRow(
          label: 'Physical Backup',
          isTested: state.isDefaultPhysicalBackupTested,
        ),
        const SizedBox(height: 15),
        _StatusRow(
          label: 'Encrypted Vault',
          isTested: state.isDefaultEncryptedBackupTested,
        ),
      ],
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