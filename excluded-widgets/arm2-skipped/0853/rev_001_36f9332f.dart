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
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.dns_rounded,
                      size: 50,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      t.onboarding.serverRequired,
                      style: const TextStyle(fontSize: 28),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      t.onboarding.serverRequiredDescription,
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
                Container(height: 24),
                Card(
                  child: InkWell(
                    onTap: () {
                      /* spm: non-rebuild body erased */
                    },
                    borderRadius: BorderRadius.circular(10),
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/resources/github.svg',
                            color: Theme.of(context).colorScheme.primary,
                            width: 40,
                            height: 40,
                          ),
                          const SizedBox(width: 24),
                          Flexible(
                            child: Text(
                              t.onboarding.installationInstructions,
                              style: TextStyle(
                                fontSize: 16,
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
          Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.all(8),
                leading: Checkbox(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  value: ref.watch(onboardingProvider).confirmServerRunning,
                  onChanged: (_) {
                    /* spm: non-rebuild body erased */
                  },
                ),
                title: Text(
                  t.onboarding.serverRunningConfirmation,
                  style: const TextStyle(fontSize: 14),
                ),
                onTap: () {
                  /* spm: non-rebuild body erased */
                },
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FilledButton(
                    onPressed: () {
                      /* spm: non-rebuild body erased */
                    },
                    child: Row(
                      children: [
                        const Icon(Icons.arrow_back_rounded),
                        const SizedBox(width: 8),
                        Text(t.onboarding.previous),
                      ],
                    ),
                  ),
                  FilledButton(
                    onPressed:
                        ref.watch(onboardingProvider).confirmServerRunning ==
                            true
                        ? () => ref.read(onboardingProvider.notifier).nextPage()
                        : null,
                    child: Row(
                      children: [
                        Text(t.onboarding.next),
                        const SizedBox(width: 8),
                        const Icon(Icons.arrow_forward_rounded),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}























// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
