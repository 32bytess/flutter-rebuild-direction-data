// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'package:flutter/material.dart';
part 'dependencies.dart';


class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  late final Herb widgetHerb;

  @override
  void initState() {
    super.initState();
    widgetHerb = fixtureHerb;
    _isBookmarked = fixtureIsBookmarked;
  }

  late bool _isBookmarked;

  void _toggleBookmark() async {
    /* spm: non-rebuild body erased */
  }

  Widget _buildSection(String title, String content, ColorScheme cs) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: cs.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(content, style: const TextStyle(fontSize: 15, height: 1.6)),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final herb = widgetHerb;
    final cs = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(herb.name),
        actions: [
          IconButton(
            icon: Icon(_isBookmarked ? Icons.bookmark : Icons.bookmark_border),
            onPressed: _toggleBookmark,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Center(
              child: Text(
                '${herb.natureEmoji} ${herb.natureCategory}',
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Header: name + category + flavor
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    herb.name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: [
                      Chip(
                        label: Text(herb.category),
                        backgroundColor: cs.primaryContainer,
                        labelStyle: TextStyle(color: cs.onPrimaryContainer),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        visualDensity: VisualDensity.compact,
                      ),
                      if (herb.flavor.isNotEmpty)
                        Chip(
                          label: Text('味${herb.flavor}'),
                          backgroundColor: cs.secondaryContainer,
                          labelStyle: TextStyle(color: cs.onSecondaryContainer),
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          visualDensity: VisualDensity.compact,
                        ),
                      if (herb.meridians.isNotEmpty)
                        Chip(
                          label: Text('归经: ${herb.meridians.join(" ")}'),
                          backgroundColor: cs.tertiaryContainer,
                          labelStyle: TextStyle(color: cs.onTertiaryContainer),
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          visualDensity: VisualDensity.compact,
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // 性味
          if (herb.nature != null) _buildSection('性味', herb.nature!, cs),

          // 主治
          if (herb.action != null) _buildSection('主治', herb.action!, cs),

          // 本经原文
          if (herb.original != null) _buildSection('本经原文', herb.original!, cs),

          // 倪注
          if (herb.niNote != null) _buildSection('倪注', herb.niNote!, cs),

          // 容川注
          if (herb.rongchuan != null) _buildSection('容川注', herb.rongchuan!, cs),

          // 用量
          if (herb.dosage != null) _buildSection('用量', herb.dosage!, cs),

          // 禁忌
          if (herb.contraindication != null)
            Card(
              color: cs.errorContainer,
              margin: const EdgeInsets.only(bottom: 12),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.warning_amber, color: cs.onErrorContainer),
                        const SizedBox(width: 8),
                        Text(
                          '禁忌',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: cs.onErrorContainer,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      herb.contraindication!,
                      style: TextStyle(
                        fontSize: 15,
                        height: 1.6,
                        color: cs.onErrorContainer,
                      ),
                    ),
                  ],
                ),
              ),
            ),

          // 倪师临床口述
          if (herb.clinicalNotes != null)
            Card(
              color: cs.tertiaryContainer,
              margin: const EdgeInsets.only(bottom: 12),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.record_voice_over,
                          color: cs.onTertiaryContainer,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '倪师临床口述',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: cs.onTertiaryContainer,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      herb.clinicalNotes!,
                      style: TextStyle(
                        fontSize: 15,
                        height: 1.6,
                        color: cs.onTertiaryContainer,
                      ),
                    ),
                  ],
                ),
              ),
            ),

          // 历代医家注释
          if (herb.historicalNotes != null && herb.historicalNotes!.isNotEmpty)
            Card(
              color: cs.surfaceContainerHighest,
              margin: const EdgeInsets.only(bottom: 12),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.history_edu, color: cs.onSurfaceVariant),
                        const SizedBox(width: 8),
                        Text(
                          '历代医家注释',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: cs.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      herb.historicalNotes!,
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.6,
                        color: cs.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            ),

          // 药物比较
          if (herb.herbComparisons.isNotEmpty)
            Card(
              color: cs.primaryContainer.withOpacity(0.3),
              margin: const EdgeInsets.only(bottom: 12),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.compare_arrows, color: cs.primary),
                        const SizedBox(width: 8),
                        Text(
                          '药物比较',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: cs.primary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    ...herb.herbComparisons.map(
                      (c) => Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Text(
                          '· $c',
                          style: TextStyle(
                            fontSize: 14,
                            height: 1.5,
                            color: cs.onSurface,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          // 含此药的方剂
          Builder(
            builder: (context) {
              final formulas = FormulaRepository.getAll()
                  .where(
                    (f) => f.components.any(
                      (c) => HerbRepository.canonicalOf(c.name) == herb.name,
                    ),
                  )
                  .toList();
              if (formulas.isEmpty) return const SizedBox.shrink();
              return Card(
                margin: const EdgeInsets.only(bottom: 12),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.medication, color: cs.primary),
                          const SizedBox(width: 8),
                          Text(
                            '含此药的方剂 (${formulas.length})',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: cs.primary,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      ...formulas.map(
                        (f) => ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text(
                            f.name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            '${f.meridian} · ${f.indication.length > 40 ? f.indication.substring(0, 40) + "..." : f.indication}',
                            style: const TextStyle(fontSize: 12),
                          ),
                          trailing: const Icon(Icons.chevron_right, size: 20),
                          onTap: () {
                            /* spm: non-rebuild body erased */
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}













// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
