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

  /// Dropdown value: null, or stored id only if still among [ _liveVoiceOptions ].
  String? _resolvedLiveVoiceSelection(FlutterClawConfig config) {
    final cur = config.agents.defaults.liveVoiceModelId;
    if (cur == null || cur.isEmpty) return null;
    final ids = _liveVoiceOptions(config).map((m) => m.id).toSet();
    return ids.contains(cur) ? cur : null;
  }

  /// Live catalog models for providers the user has authenticated (deduped by id).
  List<CatalogModel> _liveVoiceOptions(FlutterClawConfig config) {
    final seen = <String>{};
    final out = <CatalogModel>[];
    for (final pid in config.providerCredentials.keys) {
      if (!config.isProviderAuthenticated(pid)) continue;
      for (final m in ModelCatalog.liveCatalogModelsForProvider(pid)) {
        if (seen.add(m.id)) out.add(m);
      }
    }
    return out;
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
          // -- API Keys compact row --
          Card(
            clipBehavior: Clip.antiAlias,
            child: ListTile(
              leading: Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: config.providerCredentials.isNotEmpty
                      ? colors.primaryContainer
                      : colors.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(AppTokens.radiusSM),
                ),
                child: Icon(
                  Icons.key,
                  size: 18,
                  color: config.providerCredentials.isNotEmpty
                      ? colors.primary
                      : colors.onSurfaceVariant,
                ),
              ),
              title: Text(
                context.l10n.providers,
                style: theme.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                config.providerCredentials.isEmpty
                    ? context.l10n.noProvidersConfigured
                    : config.providerCredentials.keys
                          .map(
                            (pid) =>
                                ModelCatalog.getProvider(
                                  pid.split(':').first,
                                )?.displayName ??
                                pid,
                          )
                          .toSet()
                          .join(' · '),
                style: theme.textTheme.bodySmall?.copyWith(
                  color: colors.onSurfaceVariant,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                /* spm: non-rebuild body erased */
              },
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
            ...config.modelList.where((m) => !m.isLiveOnly).map((m) {
              final index = config.modelList.indexWhere(
                (e) =>
                    e.modelName == m.modelName &&
                    e.model == m.model &&
                    e.provider == m.provider,
              );
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
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: isDefault
                          ? colors.primaryContainer
                          : colors.surfaceContainerHighest,
                      borderRadius: BorderRadius.circular(AppTokens.radiusSM),
                    ),
                    child: ProviderBrandIcon(
                      provider: provider,
                      size: 20,
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

          if (_liveVoiceOptions(config).isNotEmpty)
            ExpansionTile(
              title: Text(
                context.l10n.advancedSettings,
                style: theme.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                context.l10n.voiceCallModelSection,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: colors.onSurfaceVariant,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                  child: Text(
                    context.l10n.voiceCallModelDescription,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colors.onSurfaceVariant,
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 4,
                    ),
                    child: DropdownButtonFormField<String?>(
                      initialValue: _resolvedLiveVoiceSelection(config),
                      isExpanded: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: context.l10n.voiceCallModelLabel,
                      ),
                      items: [
                        DropdownMenuItem<String?>(
                          value: null,
                          child: Text(context.l10n.voiceCallModelAutomatic),
                        ),
                        ..._liveVoiceOptions(config).map(
                          (cm) => DropdownMenuItem<String?>(
                            value: cm.id,
                            child: Text(
                              '${ModelCatalog.getProvider(cm.providerId)?.displayName ?? cm.providerId} — ${cm.displayName}',
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                      onChanged: (v) async {
                        /* spm: non-rebuild body erased */
                      },
                    ),
                  ),
                ),
                SwitchListTile(
                  title: Text(context.l10n.preferLiveVoiceBootstrapTitle),
                  subtitle: Text(
                    context.l10n.preferLiveVoiceBootstrapSubtitle,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colors.onSurfaceVariant,
                    ),
                  ),
                  value: config.agents.defaults.preferLiveVoiceBootstrap,
                  onChanged: (v) async {
                    /* spm: non-rebuild body erased */
                  },
                ),
                Card(
                  margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 4,
                    ),
                    child: DropdownButtonFormField<String>(
                      initialValue:
                          kLiveVoices.containsKey(
                            config.agents.defaults.liveVoiceName,
                          )
                          ? config.agents.defaults.liveVoiceName
                          : 'Puck',
                      isExpanded: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: context.l10n.liveVoiceNameLabel,
                      ),
                      items: kLiveVoices.entries
                          .map(
                            (e) => DropdownMenuItem<String>(
                              value: e.key,
                              child: Text('${e.key} — ${e.value}'),
                            ),
                          )
                          .toList(),
                      onChanged: (v) async {
                        /* spm: non-rebuild body erased */
                      },
                    ),
                  ),
                ),
              ],
            ),

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

/// Gemini Live prebuilt voices with their personality descriptions.
const Map<String, String> kLiveVoices = {
  'Puck': 'Upbeat',
  'Charon': 'Informational',
  'Kore': 'Firm',
  'Fenrir': 'Excitable',
  'Aoede': 'Breezy',
  'Leda': 'Youthful',
  'Orus': 'Firm',
  'Autonoe': 'Bright',
  'Enceladus': 'Breathy',
  'Iapetus': 'Clear',
  'Umbriel': 'Easy-going',
  'Algieba': 'Smooth',
  'Despina': 'Smooth',
  'Erinome': 'Clear',
  'Algenib': 'Gravelly',
  'Rasalgethi': 'Informational',
  'Laomedeia': 'Upbeat',
  'Achernar': 'Soft',
  'Alnilam': 'Firm',
  'Schedar': 'Even',
  'Gacrux': 'Mature',
  'Pulcherrima': 'Forward',
  'Achird': 'Friendly',
  'Zubenelgenubi': 'Casual',
  'Vindemiatrix': 'Gentle',
  'Sadachbia': 'Lively',
  'Sadaltager': 'Knowledgeable',
  'Sulafat': 'Warm',
  'Zephyr': 'Bright',
  'Shimmer': 'Clear',
};

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
