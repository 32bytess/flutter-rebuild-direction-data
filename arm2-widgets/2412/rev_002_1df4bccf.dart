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
    final config = ref.watch(configManagerProvider).config;
    final hasModels = config.modelList.isNotEmpty;
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.settings)),
      body: ListView(
        children: [
          _SettingsTile(
            icon: Icons.hub_outlined,
            title: 'Providers & Models',
            subtitle: hasModels
                ? '${config.modelList.length} model${config.modelList.length == 1 ? '' : 's'} configured'
                : 'No models configured',
            subtitleColor: hasModels ? null : colors.error,
            onTap: () {
              /* spm: non-rebuild body erased */
            },
          ),
          _SettingsTile(
            icon: Icons.router_outlined,
            title: context.l10n.gateway,
            subtitle: config.gateway.autoStart
                ? 'Auto-start enabled'
                : 'Auto-start off',
            onTap: () {
              /* spm: non-rebuild body erased */
            },
          ),
          _SettingsTile(
            icon: Icons.shield_outlined,
            title: 'Tool Policies',
            subtitle: config.tools.disabled.isEmpty
                ? 'All tools enabled'
                : '${config.tools.disabled.length} tool${config.tools.disabled.length == 1 ? '' : 's'} disabled',
            onTap: () {
              /* spm: non-rebuild body erased */
            },
          ),
          _SettingsTile(
            icon: Icons.info_outline,
            title: context.l10n.about,
            subtitle: 'FlutterClaw v0.1.0',
            onTap: () {
              /* spm: non-rebuild body erased */
            },
          ),
        ],
      ),
    );
  }
}

class _SettingsTile extends StatelessWidget {
  const _SettingsTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
    this.subtitleColor,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final Color? subtitleColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: theme.colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(icon, color: theme.colorScheme.primary, size: 20),
      ),
      title: Text(
        title,
        style: theme.textTheme.titleSmall?.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: theme.textTheme.bodySmall?.copyWith(
          color: subtitleColor ?? theme.colorScheme.onSurfaceVariant,
        ),
      ),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}





















// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
