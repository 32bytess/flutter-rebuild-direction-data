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
  @override
  void initState() {
    super.initState();
    _selectedType = fixtureSelectedType;
  }

  late ServerType? _selectedType;

  Widget _buildServerCard({
    required ServerType type,
    required String title,
    required String subtitle,
    required Widget iconWidget,
    required ThemeData theme,
  }) {
    final isSelected = _selectedType == type;

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: theme.scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: iconWidget,
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: theme.textTheme.labelSmall?.copyWith(
                letterSpacing: 2,
                color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            /// TODO: Replace with actual app logo
            Padding(
              padding: const EdgeInsets.all(8),
              child: Placeholder(fallbackHeight: 24, fallbackWidth: 24),
            ),
            const Text(
              'LOCALMIND',
              style: TextStyle(letterSpacing: 2, fontSize: 14),
            ),
          ],
        ),
        centerTitle: false,
        actions: [
          TextButton.icon(
            onPressed: () {
              /* spm: non-rebuild body erased */
            },
            label: const Text('Skip'),
            icon: HugeIcon(icon: Icons.circle),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 24),
                  Text(
                    'Connect Your\nServer',
                    textAlign: TextAlign.center,
                    style: theme.textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.w800,
                      height: 1.1,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Connect to LM Studio, Ollama, or\nOpenRouter to start your private AI\nexperience.',
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 24),
                  _buildServerCard(
                    type: ServerType.lmStudio,
                    title: 'LM Studio',
                    subtitle: 'LOCAL API',
                    iconWidget: Icon(
                      Icons.terminal_rounded,
                      color: _selectedType == ServerType.lmStudio
                          ? theme.colorScheme.primary
                          : theme.colorScheme.onSurface,
                    ),
                    theme: theme,
                  ),
                  const SizedBox(height: 16),
                  _buildServerCard(
                    type: ServerType.ollama,
                    title: 'Ollama',
                    subtitle: 'CLI ENGINE',
                    iconWidget: Icon(
                      Icons.smart_toy_rounded,
                      color: _selectedType == ServerType.ollama
                          ? theme.colorScheme.primary
                          : theme.colorScheme.onSurface,
                    ),
                    theme: theme,
                  ),
                  const SizedBox(height: 16),
                  _buildServerCard(
                    type: ServerType.openRouter,
                    title: 'OpenRouter',
                    subtitle: 'UNIFIED CLOUD',
                    iconWidget: HugeIcon(
                      icon: Icons.circle,
                      color: _selectedType == ServerType.openRouter
                          ? theme.colorScheme.primary
                          : theme.colorScheme.onSurface,
                    ),
                    theme: theme,
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                // Status Indicator
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: _selectedType != null
                            ? theme.colorScheme.primary
                            : theme.colorScheme.onSurface.withValues(
                                alpha: 0.4,
                              ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      _selectedType != null
                          ? 'READY TO CONTINUE'
                          : 'WAITING FOR SELECTION',
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: theme.colorScheme.onSurface.withValues(
                          alpha: 0.5,
                        ),
                        letterSpacing: 2,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                ShadButton(
                  width: double.infinity,
                  enabled: _selectedType != null,
                  onPressed: () {
                    /* spm: non-rebuild body erased */
                  },
                  child: const Text(
                    'Continue',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).padding.bottom,
                ), // Reduced bottom padding slightly for small screens
              ],
            ),
          ),
        ],
      ),
    );
  }
}

enum ServerType { lmStudio, ollama, openRouter }











// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
