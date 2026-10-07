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
              final info = _kToolInfo[toolName];
              final friendlyName = info?.$1 ?? toolName;
              final description = info?.$2 ?? toolName;
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
      appBar: AppBar(title: const Text('Tool Policies')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              'Control what the agent can access. Disabled tools are hidden from the AI and blocked at runtime.',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          _buildCategory(
            context,
            'Privacy & Sensors',
            Icons.privacy_tip_outlined,
            _kPrivacyTools,
            config,
            configManager,
          ),
          const SizedBox(height: 16),
          _buildCategory(
            context,
            'Network',
            Icons.wifi_outlined,
            _kNetworkTools,
            config,
            configManager,
          ),
          const SizedBox(height: 16),
          _buildCategory(
            context,
            'System',
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

const _kSystemTools = ['sandbox_exec', 'image_generate'];

const _kToolInfo = {
  'camera_take_photo': (
    'Take Photos',
    'Allow the agent to take photos using the camera',
  ),
  'camera_record_video': ('Record Video', 'Allow the agent to record video'),
  'get_location': (
    'Location',
    'Allow the agent to read your current GPS location',
  ),
  'get_health_data': (
    'Health Data',
    'Allow the agent to read health/fitness data',
  ),
  'contacts_search': ('Contacts', 'Allow the agent to search your contacts'),
  'ui_screenshot': (
    'Screenshots',
    'Allow the agent to take screenshots of the screen',
  ),
  'web_fetch': ('Web Fetch', 'Allow the agent to fetch content from URLs'),
  'web_search': ('Web Search', 'Allow the agent to search the web'),
  'http_request': (
    'HTTP Requests',
    'Allow the agent to make arbitrary HTTP requests',
  ),
  'sandbox_exec': (
    'Sandbox Shell',
    'Allow the agent to run shell commands in the sandbox',
  ),
  'image_generate': (
    'Image Generation',
    'Allow the agent to generate images via AI',
  ),
};















// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
