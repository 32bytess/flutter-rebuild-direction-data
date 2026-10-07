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
      appBar: AppBar(title: Text(context.l10n.providersAndModels)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // -- Providers section --
          _SectionLabel(title: context.l10n.providers),
          if (config.providerCredentials.isEmpty)
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  context.l10n.noProvidersConfigured,
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
                    child: ProviderBrandIcon(
                      provider: catalogProv,
                      size: 20,
                      iconColor: colors.primary,
                      fallbackIcon: Icons.key,
                    ),
                  ),
                  title: Text(
                    catalogProv?.displayName ?? provId,
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    provId == 'bedrock' && cred.awsRegion != null
                        ? 'Region: ${cred.awsRegion}'
                        : cred.apiBase ?? catalogProv?.apiBase ?? '',
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
                        tooltip: context.l10n.editCredentials,
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
              label: Text(context.l10n.addProvider),
            ),
          ),

          const SizedBox(height: 24),

          // -- Models section --
          _SectionLabel(title: context.l10n.models),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              context.l10n.defaultModelHint,
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
                    child: ProviderBrandIcon(
                      provider: provider,
                      size: 22,
                      iconColor: isDefault
                          ? colors.primary
                          : colors.onSurfaceVariant,
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
                            PopupMenuItem(
                              value: 'default',
                              child: ListTile(
                                leading: const Icon(Icons.star_outline),
                                title: Text(context.l10n.setAsDefaultAction),
                                contentPadding: EdgeInsets.zero,
                                dense: true,
                              ),
                            ),
                          PopupMenuItem(
                            value: 'edit',
                            child: ListTile(
                              leading: const Icon(Icons.edit_outlined),
                              title: Text(context.l10n.editAction),
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

/// Shows a bundled SVG brand mark when [CatalogProvider.logoAsset] is set,
/// otherwise [CatalogProvider.icon]. If [provider] is null, uses [fallbackIcon].
class ProviderBrandIcon extends StatelessWidget {
  const ProviderBrandIcon({
    super.key,
    required this.provider,
    required this.size,
    this.iconColor,
    this.fallbackIcon = Icons.smart_toy,
  });

  final CatalogProvider? provider;
  final double size;
  final Color? iconColor;
  final IconData fallbackIcon;

  @override
  Widget build(BuildContext context) {
    final color = iconColor ?? Theme.of(context).colorScheme.onSurface;
    final p = provider;
    if (p == null) {
      return Icon(fallbackIcon, size: size, color: color);
    }
    final asset = p.logoAsset;
    if (asset == null || asset.isEmpty) {
      return Icon(p.icon, size: size, color: color);
    }
    final pad = size * 0.14;
    return SizedBox(
      width: size,
      height: size,
      child: Padding(
        padding: EdgeInsets.all(pad),
        child: SvgPicture.asset(
          asset,
          fit: BoxFit.contain,
          alignment: Alignment.center,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
          errorBuilder: (context, error, stackTrace) =>
              Icon(p.icon, size: size, color: color),
        ),
      ),
    );
  }
}



































// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
