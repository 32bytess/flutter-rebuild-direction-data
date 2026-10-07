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

  Widget _buildThemeCard({
    required AppThemeType type,
    required String title,
    required String subtitle,
    required Widget iconWidget,
    required AppThemeType currentTheme,
    required BuildContext context,
  }) {
    final theme = Theme.of(context);
    final isSelected = currentTheme == type;

    return GestureDetector(
      onTap: () {
        /* spm: non-rebuild body erased */
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected
                ? theme.colorScheme.primary
                : theme.colorScheme.outline.withValues(alpha: 0.3),
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: theme.scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: iconWidget,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
                    ),
                  ),
                ],
              ),
            ),
            if (isSelected)
              Icon(Icons.check_circle, color: theme.colorScheme.primary),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final currentTheme = ref.watch(themeModeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Theme'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            /* spm: non-rebuild body erased */
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Personalize the app appearance. You can always change this later in settings.',
                style: theme.textTheme.titleMedium?.copyWith(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                ),
              ),
              const SizedBox(height: 32),

              Expanded(
                child: ListView(
                  children: [
                    _buildThemeCard(
                      type: AppThemeType.system,
                      title: 'System',
                      subtitle: 'Matches your device settings',
                      iconWidget: HugeIcon(
                        icon: Icons.circle,
                        color: currentTheme == AppThemeType.system
                            ? theme.colorScheme.primary
                            : theme.colorScheme.onSurface,
                      ),
                      currentTheme: currentTheme,
                      context: context,
                    ),
                    const SizedBox(height: 16),
                    _buildThemeCard(
                      type: AppThemeType.light,
                      title: 'Light',
                      subtitle: 'Clean and bright',
                      iconWidget: HugeIcon(
                        icon: Icons.circle,
                        color: currentTheme == AppThemeType.light
                            ? theme.colorScheme.primary
                            : theme.colorScheme.onSurface,
                      ),
                      currentTheme: currentTheme,
                      context: context,
                    ),
                    const SizedBox(height: 16),
                    _buildThemeCard(
                      type: AppThemeType.dark,
                      title: 'Dark',
                      subtitle: 'Easy on the eyes',
                      iconWidget: HugeIcon(
                        icon: Icons.circle,
                        color: currentTheme == AppThemeType.dark
                            ? theme.colorScheme.primary
                            : theme.colorScheme.onSurface,
                      ),
                      currentTheme: currentTheme,
                      context: context,
                    ),
                    const SizedBox(height: 16),
                    _buildThemeCard(
                      type: AppThemeType.claude,
                      title: 'Claude',
                      subtitle: 'A warm, peach-tinted theme',
                      iconWidget: HugeIcon(
                        icon: Icons.circle,
                        color: currentTheme == AppThemeType.claude
                            ? theme.colorScheme.primary
                            : theme.colorScheme.onSurface,
                      ),
                      currentTheme: currentTheme,
                      context: context,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),
              ShadButton(
                width: double.infinity,
                onPressed: () async {
                  /* spm: non-rebuild body erased */
                },
                child: const Text(
                  'Finish Setup',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum AppThemeType { system, light, dark, claude }















// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
