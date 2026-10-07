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
    final todo = ref.watch(currentTodo);
    final itemFocusNode = useFocusNode();
    useListenable(itemFocusNode);
    final isFocused = itemFocusNode.hasFocus;
    final textEditingController = useTextEditingController();
    final textFieldFocusNode = useFocusNode();
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
      child: Focus(
        focusNode: itemFocusNode,
        onFocusChange: (focused) {
          /* spm: non-rebuild body erased */
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: ListTile(
                onTap: () {
                  /* spm: non-rebuild body erased */
                },
                leading: GestureDetector(
                  onTap: () {
                    /* spm: non-rebuild body erased */
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: todo.isCompleted
                        ? Icon(
                            Icons.circle,
                            size: 32.0,
                            color: Theme.of(context).colorScheme.secondary,
                          )
                        : Icon(
                            Icons.circle,
                            size: 32.0,
                            color: Theme.of(
                              context,
                            ).colorScheme.secondary.withOpacity(0.45),
                          ),
                  ),
                ),
                title: isFocused
                    ? Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: TextField(
                          autofocus: true,
                          focusNode: textFieldFocusNode,
                          controller: textEditingController,

                          ///due to bug in indic keyboard . It fills suggestion automatically two times.
                          enableSuggestions: false,
                          cursorColor: Theme.of(context).colorScheme.secondary,
                          decoration: const InputDecoration(
                            labelText: 'Edit Task',
                          ),
                        ),
                      )
                    : Text(
                        todo.description,
                        style: TextStyle(
                          decoration: todo.isCompleted
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                        ),
                      ),
                trailing: GestureDetector(
                  onTap: () {
                    /* spm: non-rebuild body erased */
                  },
                  child: todo.isPinned
                      ? Icon(
                          Icons.circle,
                          size: 24.0,
                          color: Theme.of(context).colorScheme.secondary,
                        )
                      : Icon(
                          Icons.circle,
                          size: 24.0,
                          color: Theme.of(
                            context,
                          ).colorScheme.secondary.withOpacity(0.45), //
                        ),
                ),
              ),
            ),
            const SizedBox(height: 2),
            const Divider(height: 1, thickness: 1),
          ],
        ),
      ),
    );
  }
}



















// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
