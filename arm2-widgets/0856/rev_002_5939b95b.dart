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
    version = fixtureVersion;
  }

  static const String appName = 'Running Services Monitor';

  late String version;

  static const String email = 'biplobsd11@gmail.com';

  static const String sourceCodeUrl =
      'https://github.com/biplobsd/running_services_monitor';

  static const String blogsUrl = 'https://biplobsd.github.io';

  static const String buyMeCoffeeUrl = 'https://buymeacoffee.com/biplobsd';

  static const String developerName = 'Biplob Kumar Sutradhar';

  Widget _buildInfoTile(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    VoidCallback? onTap,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: onTap,
      trailing: onTap != null ? const Icon(Icons.open_in_new, size: 16) : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Center(
                  child: Column(
                    children: [
                      Container(color: Colors.grey.shade300, width: 64, height: 64),
                      const SizedBox(height: 16),
                      const Text(
                        appName,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        version,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                _buildInfoTile(
                  context,
                  icon: Icons.person,
                  title: 'Developer',
                  subtitle: developerName,
                ),
                _buildInfoTile(
                  context,
                  icon: Icons.email,
                  title: 'Email',
                  subtitle: email,
                  onTap: () {
                    /* spm: non-rebuild body erased */
                  },
                ),
                _buildInfoTile(
                  context,
                  icon: Icons.code,
                  title: 'Source Code',
                  subtitle: 'github.com/biplobsd/running_services_monitor',
                  onTap: () {
                    /* spm: non-rebuild body erased */
                  },
                ),
                _buildInfoTile(
                  context,
                  icon: Icons.web,
                  title: 'Blogs',
                  subtitle: 'biplobsd.github.io',
                  onTap: () {
                    /* spm: non-rebuild body erased */
                  },
                ),
                const SizedBox(height: 24),
                Center(
                  child: FilledButton.icon(
                    onPressed: () {
                      /* spm: non-rebuild body erased */
                    },
                    icon: const Icon(Icons.coffee),
                    label: const Text('Buy Me a Coffee'),
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.amber[800],
                      foregroundColor: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const Center(
                  child: Text(
                    'Made in Bangladesh',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
