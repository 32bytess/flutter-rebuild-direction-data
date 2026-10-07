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

  Widget _buildCategory(
    BuildContext context,
    String label,
    IconData icon,
    List<String> tools,
    FlutterClawConfig config,
    dynamic configManager,
  ) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 16, color: theme.colorScheme.primary),
            const SizedBox(width: 8),
            Text(
              label,
              style: theme.textTheme.labelMedium?.copyWith(
                color: theme.colorScheme.primary,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.8,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Card(
          child: Column(
            children: tools.map((toolName) {
              final info = _getToolInfo(context, toolName);
              final friendlyName = info.$1;
              final description = info.$2;
              final disabled = config.tools.disabled.contains(toolName);
              return SwitchListTile(
                title: Text(friendlyName),
                subtitle: Text(
                  description,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
                value: !disabled,
                onChanged: (enabled) {
                  /* spm: non-rebuild body erased */
                },
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final configManager = ref.watch(configManagerProvider);
    final config = configManager.config;
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.toolPolicies)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              context.l10n.toolPoliciesDesc,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          Card(
            color: theme.colorScheme.surfaceContainerHighest,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.l10n.toolPoliciesOtherToolsNote,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextButton(
                    onPressed: () {
                      /* spm: non-rebuild body erased */
                    },
                    child: Text(context.l10n.toolPoliciesMcpLink),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          _buildCategory(
            context,
            context.l10n.privacySensors,
            Icons.privacy_tip_outlined,
            _kPrivacyTools,
            config,
            configManager,
          ),
          const SizedBox(height: 16),
          _buildCategory(
            context,
            context.l10n.networkCategory,
            Icons.wifi_outlined,
            _kNetworkTools,
            config,
            configManager,
          ),
          const SizedBox(height: 16),
          _buildCategory(
            context,
            context.l10n.systemCategory,
            Icons.terminal,
            _kSystemTools,
            config,
            configManager,
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

const _kPrivacyTools = [
  'camera_take_photo',
  'camera_record_video',
  'get_location',
  'get_health_data',
  'contacts_search',
  'ui_screenshot',
];

const _kNetworkTools = ['web_fetch', 'web_search', 'http_request'];

const _kSystemTools = [
  'run_shell_command',
  'image_generate',
  'ui_launch_app',
  'ui_launch_intent',
];

(String, String) _getToolInfo(BuildContext context, String toolName) {
  final l10n = context.l10n;
  switch (toolName) {
    case 'camera_take_photo':
      return (l10n.toolTakePhotos, l10n.toolTakePhotosDesc);
    case 'camera_record_video':
      return (l10n.toolRecordVideo, l10n.toolRecordVideoDesc);
    case 'get_location':
      return (l10n.toolLocation, l10n.toolLocationDesc);
    case 'get_health_data':
      return (l10n.toolHealthData, l10n.toolHealthDataDesc);
    case 'contacts_search':
      return (l10n.toolContacts, l10n.toolContactsDesc);
    case 'ui_screenshot':
      return (l10n.toolScreenshots, l10n.toolScreenshotsDesc);
    case 'web_fetch':
      return (l10n.toolWebFetch, l10n.toolWebFetchDesc);
    case 'web_search':
      return (l10n.toolWebSearch, l10n.toolWebSearchDesc);
    case 'http_request':
      return (l10n.toolHttpRequests, l10n.toolHttpRequestsDesc);
    case 'run_shell_command':
      return (l10n.toolSandboxShell, l10n.toolSandboxShellDesc);
    case 'image_generate':
      return (l10n.toolImageGeneration, l10n.toolImageGenerationDesc);
    case 'ui_launch_app':
      return (l10n.toolLaunchApps, l10n.toolLaunchAppsDesc);
    case 'ui_launch_intent':
      return (l10n.toolLaunchIntents, l10n.toolLaunchIntentsDesc);
    default:
      return (toolName, toolName);
  }
}



















// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
