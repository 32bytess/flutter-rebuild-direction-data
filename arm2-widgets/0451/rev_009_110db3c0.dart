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
    _fltDate = fixtureFltDate;
    _fltTime = fixtureFltTime;
    _fltCompleted = fixtureFltCompleted;
    _fltRepeat = fixtureFltRepeat;
    _fltReminder = fixtureFltReminder;
    _tasks = fixtureTasks;
  }

  late List<Task> _tasks;

  late DateTime? _fltDate;

  late TimeOfDay? _fltTime;

  late bool? _fltCompleted;

  late String? _fltRepeat;

  late bool? _fltReminder;

  String _fmtDate(DateTime d) => DateFormat('dd/MM/yy').format(d);

  String _fmtTime(TimeOfDay t) =>
      DateFormat('h:mm a').format(DateTime(0, 1, 1, t.hour, t.minute));

  List<Task> get _filteredTasks {
    Iterable<Task> it = _tasks;

    if (_fltDate != null) {
      final d = _fmtDate(_fltDate!);
      it = it.where((t) => (t.date ?? '') == d);
    }
    if (_fltTime != null) {
      final tm = _fmtTime(_fltTime!);
      it = it.where((t) => (t.time ?? '') == tm);
    }
    if (_fltCompleted != null) {
      it = it.where((t) => t.completed == _fltCompleted);
    }
    if (_fltRepeat != null) {
      it = it.where((t) {
        final r = (t.repeatRule ?? '').trim();
        if (r.isEmpty) return false;
        if (_fltRepeat == 'Weekly') return r.startsWith('Weekly');
        return r == _fltRepeat;
      });
    }
    if (_fltReminder != null) {
      it = it.where((t) => t.hasNotification == _fltReminder);
    }

    final a = it.where((t) => !t.completed).toList();
    final b = it.where((t) => t.completed).toList();
    return [...a, ...b];
  }

  void _openSettings() {
    /* spm: non-rebuild body erased */
  }

  double verticalPadding(BuildContext context) =>
      MediaQuery.of(context).size.height * 0.07;

  double horizontalPadding(BuildContext context) =>
      MediaQuery.of(context).size.width * 0.05;

  Future<void> _openFilterSheet() async {
    /* spm: non-rebuild body erased */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          // Header
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                horizontalPadding(context),
                verticalPadding(context),
                horizontalPadding(context),
                12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Row 1: Logo + Settings
                  Row(
                    children: [
                      SvgPicture.asset('assets/trans_logo.svg', height: 28),
                      const Spacer(),
                      IconButton(
                        iconSize: 28,
                        splashRadius: 28,
                        tooltip: 'Settings',
                        onPressed: _openSettings,
                        icon: const Icon(Icons.menu, color: Colors.black87),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  // Row 2: Today + Filter
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Today',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 24,
                          height: 1.3,
                        ),
                      ),
                      const Spacer(),
                      ConstrainedBox(
                        constraints: const BoxConstraints(
                          minWidth: 96,
                          minHeight: 48,
                        ),
                        child: _FilterChipButton(
                          label: 'Filter',
                          onTap: _openFilterSheet, // open bottom sheet
                          height: 36,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Task list (uses filtered tasks)
          SliverList.separated(
            itemBuilder: (context, index) {
              final task = _filteredTasks[index];
              return Dismissible(
                key: ValueKey(task.id),
                direction: task.completed
                    ? DismissDirection.endToStart
                    : DismissDirection.none,
                background: const SizedBox.shrink(),
                secondaryBackground: Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  color: Colors.red.shade50,
                  child: Icon(Icons.delete, color: Colors.red.shade400),
                ),
                confirmDismiss: (_) async {
                  /* spm: non-rebuild body erased */
                  throw UnimplementedError();
                },
                onDismissed: (_) {
                  /* spm: non-rebuild body erased */
                },
                child: InkWell(
                  onTap: () async {
                    /* spm: non-rebuild body erased */
                  },
                  child: _TaskTile(
                    task: task,
                    onToggle: () {
                      /* spm: non-rebuild body erased */
                    },
                  ),
                ),
              );
            },
            separatorBuilder: (_, __) => const Padding(
              padding: EdgeInsets.only(left: 72, right: 16),
              child: Column(
                children: [
                  SizedBox(height: 8),
                  Divider(height: 1),
                  SizedBox(height: 8),
                ],
              ),
            ),
            itemCount: _filteredTasks.length,
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 96)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          /* spm: non-rebuild body erased */
        },
        backgroundColor: Colors.black,
        shape: const CircleBorder(),
        elevation: 3,
        child: const Icon(Icons.add, color: Colors.white, size: 28),
      ),
    );
  }
}

class _FilterChipButton extends StatelessWidget {
  const _FilterChipButton({
    required this.label,
    required this.onTap,
    this.height = 36,
    this.minWidth = 96,
  });

  final String label;
  final VoidCallback onTap;
  final double minWidth;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 48, minWidth: 48),
      child: Material(
        color: Colors.white,
        shape: StadiumBorder(side: BorderSide(color: Colors.grey.shade300)),
        child: InkWell(
          customBorder: const StadiumBorder(),
          onTap: onTap,
          child: SizedBox(
            height: height,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    label,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      height: 1.3,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(width: 8),
                  SvgPicture.asset(
                    'assets/filter.svg',
                    height: 18,
                    width: 18,
                    colorFilter: const ColorFilter.mode(
                      Colors.black87,
                      BlendMode.srcIn,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// UI-facing model used on this page (mapped from DB rows).
class Task {
  Task({
    required this.id,
    required this.title,
    this.description,
    this.time,
    this.date,
    this.hasNotification = false,
    this.repeatRule,
    this.completed = false,
  });

  final int id;
  String title;
  String? description;
  String? time; // e.g., "11:30 AM"
  String? date; // e.g., "26/11/24"
  bool hasNotification;
  String? repeatRule; // e.g., "Daily", "Weekly", "Monthly", "Weekly:[1,2,4]"
  bool completed;
}

class _TaskTile extends StatelessWidget {
  const _TaskTile({required this.task, required this.onToggle});

  final Task task;
  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    final isDone = task.completed;

    final titleStyle = TextStyle(
      fontSize: 16,
      height: 1.5,
      fontWeight: FontWeight.w800,
      decoration: isDone ? TextDecoration.lineThrough : TextDecoration.none,
      color: isDone ? Colors.blueGrey : Colors.black,
    );

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _CircleCheck(completed: isDone, onTap: onToggle),
          const SizedBox(width: 12),
          Expanded(
            child: isDone
                ? Text(
                    task.title,
                    style: titleStyle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                : _IncompleteContent(task: task, titleStyle: titleStyle),
          ),
        ],
      ),
    );
  }
}

class _CircleCheck extends StatelessWidget {
  const _CircleCheck({required this.completed, required this.onTap});
  final bool completed;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onTap,
      customBorder: const CircleBorder(),
      radius: 24,
      child: Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: completed ? Colors.blue : Colors.blueGrey.shade200,
            width: 2,
          ),
          color: completed ? Colors.blue : Colors.transparent,
        ),
        child: completed
            ? const Icon(Icons.check, size: 16, color: Colors.white)
            : null,
      ),
    );
  }
}

class _IncompleteContent extends StatelessWidget {
  const _IncompleteContent({required this.task, required this.titleStyle});

  final Task task;
  final TextStyle titleStyle;

  @override
  Widget build(BuildContext context) {
    final metaStyle = TextStyle(
      fontSize: 12,
      height: 1.33,
      color: Colors.blueGrey.shade600,
      fontWeight: FontWeight.w600,
    );

    final List<Widget> meta = [];
    if (task.time != null) {
      meta.add(
        _Meta(icon: Icons.access_time, text: task.time!, style: metaStyle),
      );
    }
    if (task.date != null) {
      meta.add(_Meta(icon: Icons.event, text: task.date!, style: metaStyle));
    }
    if (task.hasNotification) {
      meta.add(_Meta(icon: Icons.notifications, text: '', style: metaStyle));
    }
    if ((task.repeatRule ?? '').isNotEmpty) {
      meta.add(
        _Meta(icon: Icons.repeat, text: task.repeatRule!, style: metaStyle),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          task.title,
          style: titleStyle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if ((task.description ?? '').isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 2.0, right: 8),
            child: Text(
              task.description!,
              style: TextStyle(
                fontSize: 14,
                height: 1.4,
                color: Colors.blueGrey.shade700,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        if (meta.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Wrap(spacing: 12, runSpacing: 6, children: meta),
          ),
      ],
    );
  }
}

class _Meta extends StatelessWidget {
  const _Meta({required this.icon, required this.text, required this.style});
  final IconData icon;
  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16, color: style.color),
        if (text.isNotEmpty) ...[
          const SizedBox(width: 6),
          Text(text, style: style),
        ],
      ],
    );
  }
}












// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
