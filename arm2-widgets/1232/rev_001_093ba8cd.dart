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
    _searchController = fixtureSearchController;
    _selectedStatus = fixtureSelectedStatus;
  }

  late TextEditingController _searchController;

  late CoreFilterStatus? _selectedStatus;

  @override
  Widget build(BuildContext context) {
    final statusOptions = CoreFilterStatus.values;
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SearchBar(
              controller: _searchController,
              hintText: S.of(context).core_filter_search_hint,
              leading: const Icon(Icons.search),
              padding: const WidgetStatePropertyAll<EdgeInsets>(
                EdgeInsets.symmetric(horizontal: 16.0),
              ),
              trailing: [
                if (_searchController.text.isNotEmpty)
                  IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      /* spm: non-rebuild body erased */
                    },
                  ),
              ],
              onChanged: (value) {
                /* spm: non-rebuild body erased */
              },
            ),
            const SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: statusOptions.map((status) {
                  final isSelected =
                      (_selectedStatus == null &&
                          status == CoreFilterStatus.all) ||
                      _selectedStatus == status;
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: FilterChip(
                      label: Text(status.title(context)),
                      selected: isSelected,
                      onSelected: (selected) {
                        /* spm: non-rebuild body erased */
                      },
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum CoreFilterStatus { all, active, lost, inactive, unknown }
