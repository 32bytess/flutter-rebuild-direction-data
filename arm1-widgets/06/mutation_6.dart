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
    final label1 = 'Physical Backup';
    final isTested1 = state.isDefaultPhysicalBackupTested;
    final label2 = 'Encrypted Vault';
    final isTested2 = state.isDefaultEncryptedBackupTested;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(label1, style: Theme.of(context).textTheme.bodyMedium),
            const Spacer(),
            Text(
              isTested1 ? 'Tested' : 'Not Tested',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: isTested1 ? Colors.green : Colors.red,
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Text(label2, style: Theme.of(context).textTheme.bodyMedium),
            const Spacer(),
            Text(
              isTested2 ? 'Tested' : 'Not Tested',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: isTested2 ? Colors.green : Colors.red,
              ),
            ),
          ],
        ),
      ],
    );
  }
}