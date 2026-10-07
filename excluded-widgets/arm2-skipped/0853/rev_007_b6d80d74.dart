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
            child: CustomScrollView(
              slivers: [
                SliverPersistentHeader(
                  pinned: true,
                  delegate: OnboardingSliverTopBar(
                    icon: Icons.dns_rounded,
                    title: t.onboarding.serverRequired,
                  ),
                ),
                SliverList.list(
                  children: [
                    Text(
                      t.onboarding.serverRequiredDescription,
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: 16),
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
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      leading: Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        value: ref
                            .watch(onboardingProvider)
                            .confirmServerRunning,
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
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
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
                    ref.watch(onboardingProvider).confirmServerRunning == true
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
    );
  }
}

class OnboardingSliverTopBar extends SliverPersistentHeaderDelegate {
  final IconData icon;
  final String title;

  const OnboardingSliverTopBar({required this.icon, required this.title});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final iconPercentage =
        shrinkOffset.clamp(0, _maxExent - _minExent) / (_maxExent - _minExent);
    final textPercentage =
        shrinkOffset.clamp(0, _maxExent - _minExent) / (_maxExent - _minExent);

    final iconSize =
        _iconMinSize + (_iconMaxSize - _iconMinSize) * (1 - iconPercentage);
    final textSize =
        _textMinSize + (_textMaxSize - _textMinSize) * (1 - textPercentage);
    final textTopPosition =
        _textMinTopPosition +
        (_textMaxTopPosition - _textMinTopPosition) * (1 - textPercentage);
    final textLeftPosition =
        _textMinLeftPosition +
        (_textMaxLeftPosition - _textMinLeftPosition) * (1 - textPercentage);

    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: Icon(
              icon,
              size: iconSize,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Positioned(
            top: textTopPosition,
            left: textLeftPosition,
            child: Text(title, style: TextStyle(fontSize: textSize)),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => _maxExent;

  @override
  double get minExtent => _minExent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

const _maxExent = 130.0;

const _minExent = 50.0;

const _iconMinSize = 30;

const _iconMaxSize = 50;

const _textMinSize = 22;

const _textMaxSize = 28;

const _textMinTopPosition = 0;

const _textMaxTopPosition = 70;

const _textMinLeftPosition = 44;

const _textMaxLeftPosition = 0;























// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
