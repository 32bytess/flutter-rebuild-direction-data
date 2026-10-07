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
    final analytics = ref.read(analyticsServiceProvider);
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Providers & Models')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // -- Providers section --
          _SectionLabel(title: 'Providers'),
          if (config.providerCredentials.isEmpty)
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'No providers configured.',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: colors.onSurfaceVariant,
                  ),
                ),
              ),
            )
          else
            ...config.providerCredentials.entries.map((entry) {
              final provId = entry.key;
              final cred = entry.value;
              final catalogProv = ModelCatalog.getProvider(provId);
              return Card(
                clipBehavior: Clip.antiAlias,
                child: ListTile(
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: colors.primaryContainer,
                      borderRadius: BorderRadius.circular(AppTokens.radiusSM),
                    ),
                    child: Icon(
                      catalogProv?.icon ?? Icons.key,
                      color: colors.primary,
                      size: 20,
                    ),
                  ),
                  title: Text(
                    catalogProv?.displayName ?? provId,
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    cred.apiBase ?? catalogProv?.apiBase ?? '',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colors.onSurfaceVariant,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 18,
                      ),
                      const SizedBox(width: 4),
                      IconButton(
                        icon: const Icon(Icons.edit_outlined, size: 20),
                        tooltip: 'Edit credentials',
                        onPressed: () {
                          /* spm: non-rebuild body erased */
                        },
                      ),
                    ],
                  ),
                ),
              );
            }),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: OutlinedButton.icon(
              onPressed: () {
                /* spm: non-rebuild body erased */
              },
              icon: const Icon(Icons.add),
              label: const Text('Add provider'),
            ),
          ),

          const SizedBox(height: 24),

          // -- Models section --
          _SectionLabel(title: context.l10n.models),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              'The default model is used by agents that don\'t specify their own.',
              style: theme.textTheme.bodySmall?.copyWith(
                color: colors.onSurfaceVariant,
              ),
            ),
          ),
          if (config.modelList.isEmpty)
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Icon(
                      Icons.warning_amber_rounded,
                      size: 40,
                      color: Colors.orange.shade700,
                    ),
                    const SizedBox(height: 12),
                    Text(context.l10n.noModelsConfigured),
                    const SizedBox(height: 4),
                    Text(
                      context.l10n.addModelToStartChatting,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: colors.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: 16),
                    FilledButton.icon(
                      onPressed: () {
                        /* spm: non-rebuild body erased */
                      },
                      icon: const Icon(Icons.add),
                      label: Text(context.l10n.addModel),
                    ),
                  ],
                ),
              ),
            )
          else
            ...config.modelList.asMap().entries.map((entry) {
              final index = entry.key;
              final m = entry.value;
              final isDefault = m.modelName == config.agents.defaults.modelName;
              final provider = ModelCatalog.getProvider(m.provider);
              final isAuth =
                  config.isProviderAuthenticated(m.provider) ||
                  (m.apiKey != null && m.apiKey!.isNotEmpty);

              return Card(
                clipBehavior: Clip.antiAlias,
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 6,
                  ),
                  leading: Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: isDefault
                          ? colors.primaryContainer
                          : colors.surfaceContainerHighest,
                      borderRadius: BorderRadius.circular(AppTokens.radiusSM),
                    ),
                    child: Icon(
                      provider?.icon ?? Icons.smart_toy,
                      color: isDefault
                          ? colors.primary
                          : colors.onSurfaceVariant,
                      size: 22,
                    ),
                  ),
                  title: Row(
                    children: [
                      Flexible(
                        child: Text(
                          m.modelName,
                          style: theme.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (m.isFree) ...[const SizedBox(width: 8), _FreeBadge()],
                      if (isDefault) ...[
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 1,
                          ),
                          decoration: BoxDecoration(
                            color: colors.primaryContainer,
                            borderRadius: BorderRadius.circular(
                              AppTokens.radiusPill,
                            ),
                          ),
                          child: Text(
                            context.l10n.default_,
                            style: TextStyle(
                              color: colors.primary,
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                  subtitle: Text(
                    '${provider?.displayName ?? m.provider} / ${m.model}',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colors.onSurfaceVariant,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        isAuth ? Icons.check_circle : Icons.error_outline,
                        color: isAuth ? Colors.green : Colors.red,
                        size: 20,
                      ),
                      // Popup menu replaces the old long-press to set default
                      PopupMenuButton<String>(
                        icon: const Icon(Icons.more_vert, size: 20),
                        onSelected: (action) {
                          /* spm: non-rebuild body erased */
                        },
                        itemBuilder: (_) => [
                          if (!isDefault)
                            const PopupMenuItem(
                              value: 'default',
                              child: ListTile(
                                leading: Icon(Icons.star_outline),
                                title: Text('Set as default'),
                                contentPadding: EdgeInsets.zero,
                                dense: true,
                              ),
                            ),
                          const PopupMenuItem(
                            value: 'edit',
                            child: ListTile(
                              leading: Icon(Icons.edit_outlined),
                              title: Text('Edit'),
                              contentPadding: EdgeInsets.zero,
                              dense: true,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  onTap: () {
                    /* spm: non-rebuild body erased */
                  },
                ),
              );
            }),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: OutlinedButton.icon(
              onPressed: () {
                /* spm: non-rebuild body erased */
              },
              icon: const Icon(Icons.add),
              label: Text(context.l10n.addModel),
            ),
          ),

          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  const _SectionLabel({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 8, left: 4),
      child: Text(
        title,
        style: Theme.of(context).textTheme.labelMedium?.copyWith(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.8,
        ),
      ),
    );
  }
}

class _FreeBadge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 1),
      decoration: BoxDecoration(
        color: Colors.green.shade100,
        borderRadius: BorderRadius.circular(AppTokens.radiusPill),
      ),
      child: Text(
        context.l10n.free,
        style: TextStyle(
          color: Colors.green.shade800,
          fontSize: 9,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}

































// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
