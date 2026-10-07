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

  @override
  Widget build(BuildContext context) {
    final configManager = ref.watch(configManagerProvider);
    final config = configManager.config;
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.gateway)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Gateway
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.dns),
                  title: Text(context.l10n.host),
                  trailing: Text(
                    config.gateway.host,
                    style: const TextStyle(fontFamily: 'monospace'),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.numbers),
                  title: Text(context.l10n.port),
                  trailing: Text(
                    '${config.gateway.port}',
                    style: const TextStyle(fontFamily: 'monospace'),
                  ),
                ),
                SwitchListTile(
                  secondary: const Icon(Icons.play_circle_outline),
                  title: Text(context.l10n.autoStart),
                  subtitle: Text(context.l10n.startGatewayWhenLaunches),
                  value: config.gateway.autoStart,
                  onChanged: (val) async {
                    /* spm: non-rebuild body erased */
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.lock_outline),
                  title: const Text('Access token'),
                  subtitle: Text(
                    config.gateway.token.isEmpty
                        ? 'Not set — open access (loopback only)'
                        : '••••••••',
                    style: TextStyle(
                      color: config.gateway.token.isEmpty
                          ? Theme.of(context).colorScheme.onSurfaceVariant
                          : null,
                    ),
                  ),
                  trailing: const Icon(Icons.edit_outlined),
                  onTap: () {
                    /* spm: non-rebuild body erased */
                  },
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),

          // Heartbeat
          Text(
            context.l10n.heartbeat,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.8,
            ),
          ),
          const SizedBox(height: 8),
          Card(
            child: Column(
              children: [
                SwitchListTile(
                  secondary: const Icon(Icons.favorite_outline),
                  title: Text(context.l10n.enabled),
                  subtitle: Text(context.l10n.periodicAgentTasks),
                  value: config.heartbeat.enabled,
                  onChanged: (val) async {
                    /* spm: non-rebuild body erased */
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.timer),
                  title: Text(context.l10n.interval),
                  trailing: Text(
                    context.l10n.intervalMinutes(config.heartbeat.interval),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}





















// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
