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
    t = tValue;
    ref = fixtureRef;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final iconSize = width > height ? height : width;
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(color: Colors.grey.shade300, width: 50, height: 50),
                  const SizedBox(height: 24),
                  Text(
                    t.onboarding.title,
                    style: const TextStyle(fontSize: 28),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    t.onboarding.subtitle,
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  FilledButton(
                    onPressed: () {
                      /* spm: non-rebuild body erased */
                    },
                    child: Row(
                      children: [
                        Text(t.onboarding.start),
                        const SizedBox(width: 8),
                        const Icon(Icons.arrow_forward_rounded),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Center(
            child: Transform.rotate(
              angle: 0.7,
              child: Icon(
                Icons.link_rounded,
                size: iconSize - 48,
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}













// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
