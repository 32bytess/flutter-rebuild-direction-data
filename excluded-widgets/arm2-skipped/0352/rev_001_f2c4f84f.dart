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
    _tabController = fixtureTabController;
    _selectedCategory = fixtureSelectedCategory;
    _searchQuery = fixtureSearchQuery;
    _penetrationSearch = fixturePenetrationSearch;
    _selectedMeridian = fixtureSelectedMeridian;
    _acupointSearch = fixtureAcupointSearch;
  }

  late TabController _tabController;

  late String _selectedCategory;

  late String _searchQuery;

  late String _penetrationSearch;

  late String _selectedMeridian;

  late String _acupointSearch;

  List<AcupointEntry> _getEntries() {
    if (_searchQuery.isNotEmpty) {
      return AcupunctureRepository.search(_searchQuery);
    }
    return AcupunctureRepository.getByCategory(_selectedCategory);
  }

  List<PenetrationEntry> _getPenetrations() {
    return AcupunctureRepository.searchPenetrations(_penetrationSearch);
  }

  Widget _buildEntriesTab() {
    final categories = AcupunctureRepository.getCategories();
    final entries = _getEntries();

    return Column(
      children: [
        // 搜索框
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: '搜索症状或穴位...',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 12),
            ),
            onChanged: (value) {
              /* spm: non-rebuild body erased */
            },
          ),
        ),

        // 分类过滤
        SizedBox(
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final cat = categories[index];
              final isSelected = _selectedCategory == cat;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: ChoiceChip(
                  label: Text(cat),
                  selected: isSelected,
                  onSelected: (selected) {
                    /* spm: non-rebuild body erased */
                  },
                ),
              );
            },
          ),
        ),

        const SizedBox(height: 8),

        // 条目列表
        Expanded(
          child: entries.isEmpty
              ? const Center(child: Text('无匹配结果'))
              : ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  itemCount: entries.length,
                  itemBuilder: (context, index) {
                    return _buildEntryCard(entries[index]);
                  },
                ),
        ),
      ],
    );
  }

  Widget _buildEntryCard(AcupointEntry entry) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ExpansionTile(
        title: Row(
          children: [
            Expanded(
              child: Text(
                entry.symptom,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: entry.source == 'nihaisha'
                    ? Colors.orange.shade100
                    : Colors.blue.shade100,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                entry.sourceLabel,
                style: TextStyle(
                  fontSize: 10,
                  color: entry.source == 'nihaisha'
                      ? Colors.orange.shade800
                      : Colors.blue.shade800,
                ),
              ),
            ),
          ],
        ),
        subtitle: Text(
          entry.acupointsText,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 13,
          ),
        ),
        trailing: entry.hasCase
            ? Icon(Icons.article, color: Theme.of(context).colorScheme.tertiary)
            : null,
        children: [
          if (entry.aliases.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Row(
                children: [
                  Text('别名: ', style: TextStyle(color: Colors.grey[600])),
                  Text(entry.aliases.join('、')),
                ],
              ),
            ),

          // 穴位详情
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Wrap(
              spacing: 6,
              runSpacing: 4,
              children: entry.acupoints.map((a) {
                return GestureDetector(
                  onTap: () {
                    /* spm: non-rebuild body erased */
                  },
                  child: Chip(
                    label: Text(a.name),
                    backgroundColor: a.method != null
                        ? Colors.orange.shade100
                        : Colors.blue.shade50,
                    labelStyle: const TextStyle(fontSize: 12),
                    visualDensity: VisualDensity.compact,
                  ),
                );
              }).toList(),
            ),
          ),

          if (entry.notes.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Text(
                '备注: ${entry.notes}',
                style: TextStyle(color: Colors.grey[600], fontSize: 12),
              ),
            ),

          if (entry.hasCase)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  entry.medicalCase,
                  style: const TextStyle(fontSize: 13),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildPenetrationTab() {
    final penetrations = _getPenetrations();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: '搜索透穴或适应症...',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 12),
            ),
            onChanged: (value) {
              /* spm: non-rebuild body erased */
            },
          ),
        ),
        Expanded(
          child: penetrations.isEmpty
              ? const Center(child: Text('无匹配结果'))
              : ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  itemCount: penetrations.length,
                  itemBuilder: (context, index) {
                    return _buildPenetrationCard(penetrations[index]);
                  },
                ),
        ),
      ],
    );
  }

  Widget _buildPenetrationCard(PenetrationEntry entry) {
    // 从名称中提取穴位（如"中府透云门"→["中府", "云门"]）
    final acupointNames = _extractAcupointsFromName(entry.name);

    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ExpansionTile(
        title: Text(
          entry.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 穴位 chips（可点击跳转详情）
            if (acupointNames.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Wrap(
                  spacing: 6,
                  runSpacing: 4,
                  children: acupointNames.map((name) {
                    return GestureDetector(
                      onTap: () {
                        /* spm: non-rebuild body erased */
                      },
                      child: Chip(
                        label: Text(name, style: const TextStyle(fontSize: 11)),
                        backgroundColor: Colors.blue.shade50,
                        visualDensity: VisualDensity.compact,
                      ),
                    );
                  }).toList(),
                ),
              ),
            // 适应症
            Wrap(
              spacing: 4,
              runSpacing: 4,
              children: entry.indications.map((ind) {
                return Chip(
                  label: Text(ind, style: const TextStyle(fontSize: 11)),
                  backgroundColor: Colors.green.shade50,
                  visualDensity: VisualDensity.compact,
                );
              }).toList(),
            ),
          ],
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '来源',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 4),
                Text(entry.source),
                if (entry.hasInsight) ...[
                  const SizedBox(height: 12),
                  Text(
                    '临证心悟',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(entry.clinicalInsight),
                ],
                if (entry.hasCase) ...[
                  const SizedBox(height: 12),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(entry.medicalCase),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<String> _extractAcupointsFromName(String name) {
    // 解析穴位名称，支持多种格式：
    // - "中府透云门" → ["中府", "云门"]
    // - "曲池透少海、三间透合谷" → ["曲池", "少海", "三间", "合谷"]
    final List<String> acupoints = [];
    final parts = name.split('、');
    for (final part in parts) {
      final subParts = part.split('透');
      for (final sub in subParts) {
        final trimmed = sub.trim();
        if (trimmed.isNotEmpty && trimmed.length <= 4) {
          acupoints.add(trimmed);
        }
      }
    }
    return acupoints;
  }

  List<AcupointDetail> _getAcupoints() {
    if (_acupointSearch.isNotEmpty) {
      return AcupointRepository.search(_acupointSearch);
    }
    return AcupointRepository.getByMeridian(_selectedMeridian);
  }

  Widget _buildAcupointBrowseTab() {
    final meridians = ['全部', ...AcupointRepository.getMeridians()];
    final acupoints = _getAcupoints();

    return Column(
      children: [
        // 搜索框
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: '搜索穴位名称或位置...',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 12),
            ),
            onChanged: (value) {
              /* spm: non-rebuild body erased */
            },
          ),
        ),

        // 经络过滤
        SizedBox(
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            itemCount: meridians.length,
            itemBuilder: (context, index) {
              final m = meridians[index];
              final isSelected = _selectedMeridian == m;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: ChoiceChip(
                  label: Text(m),
                  selected: isSelected,
                  onSelected: (selected) {
                    /* spm: non-rebuild body erased */
                  },
                ),
              );
            },
          ),
        ),

        const SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            '共 ${acupoints.length} 个穴位',
            style: TextStyle(fontSize: 12, color: Colors.grey[600]),
          ),
        ),

        const SizedBox(height: 4),

        // 穴位列表
        Expanded(
          child: acupoints.isEmpty
              ? const Center(child: Text('无匹配结果'))
              : ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  itemCount: acupoints.length,
                  itemBuilder: (context, index) {
                    return _buildAcupointCard(acupoints[index]);
                  },
                ),
        ),
      ],
    );
  }

  Widget _buildAcupointCard(AcupointDetail acupoint) {
    final colorScheme = Theme.of(context).colorScheme;
    final hasDetail =
        acupoint.description.isNotEmpty || acupoint.location.isNotEmpty;

    return Card(
      margin: const EdgeInsets.only(bottom: 6),
      child: ListTile(
        title: Row(
          children: [
            Text(
              acupoint.name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(width: 8),
            if (acupoint.meridian.isNotEmpty)
              Chip(
                label: Text(
                  acupoint.meridian,
                  style: const TextStyle(fontSize: 10),
                ),
                backgroundColor: colorScheme.primaryContainer,
                labelStyle: TextStyle(color: colorScheme.onPrimaryContainer),
                visualDensity: VisualDensity.compact,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
          ],
        ),
        subtitle: acupoint.location.isNotEmpty
            ? Text(
                acupoint.location,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 12),
              )
            : null,
        trailing: hasDetail ? const Icon(Icons.chevron_right) : null,
        onTap: hasDetail
            ? () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => AcupointDetailScreen(acupoint: acupoint),
                  ),
                );
              }
            : null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Theme.of(context).colorScheme.surface,
          child: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: '穴位处方', icon: Icon(Icons.healing)),
              Tab(text: '透针透穴', icon: Icon(Icons.timeline)),
              Tab(text: '穴位讲解', icon: Icon(Icons.explore)),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              _buildEntriesTab(),
              _buildPenetrationTab(),
              _buildAcupointBrowseTab(),
            ],
          ),
        ),
      ],
    );
  }
}

class AcupointDetailScreen extends StatelessWidget {
  final AcupointDetail acupoint;

  const AcupointDetailScreen({super.key, required this.acupoint});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(acupoint.name),
        actions: [
          if (acupoint.meridian.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Center(
                child: Chip(
                  label: Text(acupoint.meridian),
                  backgroundColor: colorScheme.primaryContainer,
                  labelStyle: TextStyle(color: colorScheme.onPrimaryContainer),
                  visualDensity: VisualDensity.compact,
                ),
              ),
            ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // 属性标签
          if (acupoint.attribute.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Chip(
                label: Text(acupoint.attribute),
                backgroundColor: Colors.orange.shade100,
              ),
            ),

          // 简介
          if (acupoint.description.isNotEmpty)
            _buildSection('简介', acupoint.description, colorScheme),

          // 位置
          if (acupoint.location.isNotEmpty)
            _buildSection('位置', acupoint.location, colorScheme),

          // 针刺
          if (acupoint.needling.isNotEmpty)
            _buildSection('针刺', acupoint.needling, colorScheme),

          // 灸法
          if (acupoint.moxibustion.isNotEmpty)
            _buildSection('灸法', acupoint.moxibustion, colorScheme),

          // 禁忌
          if (acupoint.contraindication.isNotEmpty)
            _buildSection(
              '禁忌',
              acupoint.contraindication,
              colorScheme,
              isWarning: true,
            ),

          // 倪海厦临床心悟
          if (acupoint.clinicalNotes.isNotEmpty)
            _buildSection(
              '倪海厦临床心悟',
              acupoint.clinicalNotes,
              colorScheme,
              isHighlight: true,
            ),
        ],
      ),
    );
  }

  Widget _buildSection(
    String title,
    String content,
    ColorScheme colorScheme, {
    bool isWarning = false,
    bool isHighlight = false,
  }) {
    final bgColor = isWarning
        ? Colors.red.shade50
        : isHighlight
        ? Colors.blue.shade50
        : Colors.grey.shade50;
    final borderColor = isWarning
        ? Colors.red.shade200
        : isHighlight
        ? Colors.blue.shade200
        : Colors.grey.shade200;

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: isWarning
                  ? Colors.red.shade700
                  : isHighlight
                  ? colorScheme.primary
                  : colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: borderColor),
            ),
            child: Text(
              content,
              style: const TextStyle(fontSize: 14, height: 1.6),
            ),
          ),
        ],
      ),
    );
  }
}




















// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
