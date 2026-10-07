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

  @override
  Widget build(BuildContext context) {
    final selectedCategory = ref.watch(categoryProvider);
    final List<TaskCategory> categories = TaskCategory.values.toList();
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          Text('Category', style: context.textTheme.titleLarge),
          const Gap(10),
          ListView.separated(
            itemCount: categories.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: const AlwaysScrollableScrollPhysics(),
            itemBuilder: (ctx, index) {
              final category = categories[index];

              return InkWell(
                onTap: () {
                  /* spm: non-rebuild body erased */
                },
                borderRadius: BorderRadius.circular(30),
                child: CircleContainer(
                  color: category.color.withOpacity(0.3),
                  child: Icon(
                    category.icon,
                    color: selectedCategory == category
                        ? context.colorScheme.primary
                        : category.color.withOpacity(0.5),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => const Gap(8),
          ),
        ],
      ),
    );
  }
}

enum TaskCategory {
  personal(Icons.book, Colors.lightBlue),
  work(Icons.emoji_events, Colors.amber),
  others(Icons.calendar_month_rounded, Colors.purple);

  static TaskCategory stringToTaskCategory(String name) {
    try {
      return TaskCategory.values.firstWhere(
        (category) => category.name == name,
      );
    } catch (e) {
      return TaskCategory.others;
    }
  }

  final IconData icon;
  final Color color;
  const TaskCategory(this.icon, this.color);
}

class CircleContainer extends StatelessWidget {
  const CircleContainer({super.key, this.child, required this.color});
  final Widget? child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(9),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(width: 2, color: color),
      ),
      child: Center(child: child),
    );
  }
}













// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
