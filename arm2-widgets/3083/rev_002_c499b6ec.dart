// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'package:flutter/material.dart';
part 'dependencies.dart';


class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget();

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
    _selectedPreset = fixtureSelectedPreset;
    _customType = fixtureCustomType;
    _customCtrl = fixtureCustomCtrl;
  }

  late String _selectedPreset;

  late DnsType _customType;

  late TextEditingController _customCtrl;

  void _save() {
    /* spm: non-rebuild body erased */
  }

  @override
  Widget build(BuildContext context) {
    final isCustom = _selectedPreset == 'custom';
    return Scaffold(
      appBar: AppBar(
        title: const Text('DNS сервер'),
        actions: [
          TextButton(
            onPressed: _save,
            child: const Text(
              'Сохранить',
              style: TextStyle(color: AppColors.primary),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Выберите DNS сервер:',
            style: TextStyle(color: AppColors.textSecondary, fontSize: 12),
          ),
          const SizedBox(height: 8),
          ...DnsServerConfig.presets.map((p) {
            final val = p['value'] as String;
            final label = p['label'] as String;
            return RadioListTile<String>(
              title: Text(label, style: const TextStyle(fontSize: 14)),
              value: val,
              groupValue: _selectedPreset,
              onChanged: (v) {
                /* spm: non-rebuild body erased */
              },
            );
          }),
          if (isCustom) ...[
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.surfaceElevated,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Тип сервера:',
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 4),
                  DropdownButton<DnsType>(
                    value: _customType,
                    isExpanded: true,
                    underline: const SizedBox(),
                    items: DnsType.values
                        .map(
                          (t) => DropdownMenuItem(
                            value: t,
                            child: Text(
                              t == DnsType.udp
                                  ? 'UDP (порт 53)'
                                  : t == DnsType.doh
                                  ? 'DoH (HTTPS)'
                                  : 'DoT (TLS)',
                              style: const TextStyle(
                                color: AppColors.textPrimary,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (v) {
                      /* spm: non-rebuild body erased */
                    },
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _customCtrl,
                    decoration: InputDecoration(
                      hintText: _customType == DnsType.doh
                          ? 'https://...'
                          : 'IP-адрес',
                      border: const OutlineInputBorder(),
                      isDense: true,
                    ),
                    onChanged: (_) {
                      /* spm: non-rebuild body erased */
                    },
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}

/// Тип DNS сервера
enum DnsType {
  udp, // Обычный UDP DNS (порт 53)
  doh, // DNS over HTTPS
  dot, // DNS over TLS
}














// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
