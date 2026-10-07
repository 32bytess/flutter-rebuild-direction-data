// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'dart:async';
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
    _box = fixtureBox;
    _rootFolderPath = fixtureRootFolderPath;
    _selected = fixtureSelected;
  }

  static const Map<String, String> _langs = {
    'en': 'English',
    'de': 'Deutsch (German)',
    'es': 'Español (Spanish)',
    'fr': 'Français (French)',
    'nl': 'Nederlands (Dutch)',
    'mul': 'Multiple / Multilingual',
    'pt': 'Português (Portuguese)',
    'it': 'Italiano (Italian)',
    'ru': 'Русский (Russian)',
    'el': 'Ελληνικά (Greek)',
    'grc': 'Ancient Greek',
    'ja': '日本語 (Japanese)',
    'pl': 'Polski (Polish)',
    'zh': '中文 (Chinese)',
    'he': 'עברית (Hebrew)',
    'la': 'Latina (Latin)',
    'fi': 'Suomi (Finnish)',
    'sv': 'Svenska (Swedish)',
    'ca': 'Català (Catalan)',
    'da': 'Dansk (Danish)',
    'eo': 'Esperanto',
  };

  late Box _box;

  late List<String> _selected;

  late String? _rootFolderPath;

  Future<void> _editLanguages() async {
    /* spm: non-rebuild body erased */
  }

  Future<void> _selectRootFolder() async {
    /* spm: non-rebuild body erased */
  }

  String _themeSubtitle(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.light:
        return 'Light';
      case ThemeMode.dark:
        return 'Dark';
      case ThemeMode.system:
      default:
        return 'System default';
    }
  }

  @override
  Widget build(BuildContext context) {
    final chips = _selected.isEmpty
        ? [const Chip(label: Text('All languages (no filter)'))]
        : _selected.map((c) => Chip(label: Text(_langs[c] ?? c))).toList();
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    final currentTheme = themeNotifier.themeMode;
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Theme selection (moved from App Bar)
          ListTile(
            leading: const Icon(Icons.brightness_6),
            title: const Text('Theme'),
            subtitle: Text(_themeSubtitle(currentTheme)),
            trailing: const Icon(Icons.edit),
            onTap: () {
              /* spm: non-rebuild body erased */
            },
          ),
          const Divider(),

          // Language filter
          ListTile(
            leading: const Icon(Icons.language),
            title: const Text('Visible languages'),
            subtitle: Wrap(spacing: 8, runSpacing: -8, children: chips),
            trailing: const Icon(Icons.edit),
            onTap: _editLanguages,
          ),
          const Divider(),

          // Local Audiobooks Directory
          ListTile(
            leading: const Icon(Icons.folder),
            title: const Text('Local Audiobooks Directory'),
            subtitle: Text(
              _rootFolderPath ?? 'No directory selected',
              style: TextStyle(
                color: _rootFolderPath != null
                    ? Theme.of(context).textTheme.bodySmall?.color
                    : Colors.grey,
              ),
            ),
            trailing: const Icon(Icons.edit),
            onTap: _selectRootFolder,
          ),
          const Divider(),

          // Licenses
          ListTile(
            leading: const Icon(Icons.book),
            title: const Text('3rd Party Libraries'),
            subtitle: const Text('View licenses of the libraries used'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              /* spm: non-rebuild body erased */
            },
          ),
          const Divider(),

          // About
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('About'),
            subtitle: const Text('Learn more about this app'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              /* spm: non-rebuild body erased */
            },
          ),
        ],
      ),
    );
  }
}











// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
