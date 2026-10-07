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
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final unsafeOn = ref.watch(unsafeModeProvider);
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.securitySettingsTitle)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              l10n.securitySettingsIntro,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colors.onSurfaceVariant,
              ),
            ),
          ),

          // ── Security checks section ───────────────────────────────────
          _SectionHeader(
            icon: Icons.security_outlined,
            label: l10n.securitySectionToolExecution,
            color: colors.primary,
          ),
          const SizedBox(height: 8),
          Card(
            child: Column(
              children: [
                SwitchListTile(
                  secondary: Icon(
                    Icons.security,
                    color: unsafeOn ? colors.error : colors.primary,
                  ),
                  title: Text(l10n.securityPatternDetectionTitle),
                  subtitle: Text(
                    l10n.securityPatternDetectionSubtitle,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colors.onSurfaceVariant,
                    ),
                  ),
                  value: !unsafeOn,
                  onChanged: (enabled) {
                    /* spm: non-rebuild body erased */
                  },
                ),
              ],
            ),
          ),

          // Warning banner when unsafe mode is on
          if (unsafeOn) ...[
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: colors.errorContainer,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.warning_amber_rounded,
                    color: colors.onErrorContainer,
                    size: 20,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      l10n.securityUnsafeModeBanner,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: colors.onErrorContainer,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],

          const SizedBox(height: 24),

          // ── One-shot override section ─────────────────────────────────
          _SectionHeader(
            icon: Icons.info_outline,
            label: l10n.securitySectionHowItWorks,
            color: colors.primary,
          ),
          const SizedBox(height: 8),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _HowItWorksRow(
                    icon: Icons.block_outlined,
                    text: l10n.securityHowItWorksBlocked,
                  ),
                  const SizedBox(height: 10),
                  _HowItWorksRow(
                    icon: Icons.looks_one_outlined,
                    text: l10n.securityHowItWorksUnsafeCmd,
                  ),
                  const SizedBox(height: 10),
                  _HowItWorksRow(
                    icon: Icons.lock_open_outlined,
                    text: l10n.securityHowItWorksToggleSession,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({
    required this.icon,
    required this.label,
    required this.color,
  });

  final IconData icon;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Icon(icon, size: 16, color: color),
        const SizedBox(width: 8),
        Text(
          label,
          style: theme.textTheme.labelMedium?.copyWith(
            color: color,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.8,
          ),
        ),
      ],
    );
  }
}

class _HowItWorksRow extends StatelessWidget {
  const _HowItWorksRow({required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 18, color: theme.colorScheme.onSurfaceVariant),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ),
      ],
    );
  }
}













// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
