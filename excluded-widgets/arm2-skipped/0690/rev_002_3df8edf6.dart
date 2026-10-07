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
  late final List<Voice> voices;
  late final EngineId engine;

  late WidgetRef ref;

  @override
  void initState() {
    super.initState();
    voices = fixtureVoices;
    engine = fixtureEngine;
    ref = fixtureRef;
    _playingVoice = fixturePlayingVoice;
  }

  late Voice? _playingVoice;

  Widget _voiceChip(
    Voice voice,
    ThemeData theme,
    Color accent,
    String? selectedVoiceId,
  ) {
    final isPlaying = _playingVoice == voice;
    final isSelected = voice.id == selectedVoiceId;

    return Material(
      color: Colors.transparent,
      child: Container(
        height: 36,
        decoration: BoxDecoration(
          color: isSelected
              ? Colors.green.withValues(alpha: 0.1)
              : isPlaying
              ? accent.withValues(alpha: 0.1)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected
                ? Colors.green.withValues(alpha: 0.5)
                : isPlaying
                ? accent.withValues(alpha: 0.3)
                : theme.colorScheme.outline.withValues(alpha: 0.2),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
                /* spm: non-rebuild body erased */
              },
              borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                  right: 8,
                  top: 8,
                  bottom: 8,
                ),
                child: Row(
                  children: [
                    if (isSelected) ...[
                      const Icon(
                        Icons.check_circle,
                        size: 16,
                        color: Colors.green,
                      ),
                      const SizedBox(width: 6),
                    ],
                    Text(
                      voice.name,
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: isSelected
                            ? Colors.green
                            : isPlaying
                            ? accent
                            : theme.colorScheme.onSurface,
                        fontWeight: isSelected || isPlaying
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 1,
              height: 20,
              color: isSelected
                  ? Colors.green.withValues(alpha: 0.3)
                  : isPlaying
                  ? accent.withValues(alpha: 0.2)
                  : theme.colorScheme.outline.withValues(alpha: 0.2),
            ),
            InkWell(
              onTap: () {
                /* spm: non-rebuild body erased */
              },
              borderRadius: const BorderRadius.horizontal(
                right: Radius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                child: Icon(
                  isPlaying ? Icons.stop : Icons.play_arrow,
                  size: 16,
                  color: isPlaying
                      ? accent
                      : theme.colorScheme.onSurface.withValues(alpha: 0.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final settings = ref.watch(settingsProvider);
    final selectedVoiceId = engine == settings.ttsEngine
        ? settings.ttsVoiceId
        : null;
    final females = voices.where((v) => v.gender == 'f').toList();
    final males = voices.where((v) => v.gender == 'm').toList();
    final accent = Color(EngineMeta.forEngine(engine).accentColor);
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (males.isNotEmpty) ...[
            Text(
              'Male',
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
              ),
            ),
            const SizedBox(height: 6),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: males
                    .map(
                      (v) => Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: _voiceChip(v, theme, accent, selectedVoiceId),
                      ),
                    )
                    .toList(),
              ),
            ),
            const SizedBox(height: 12),
          ],
          if (females.isNotEmpty) ...[
            Text(
              'Female',
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
              ),
            ),
            const SizedBox(height: 6),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: females
                    .map(
                      (v) => Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: _voiceChip(v, theme, accent, selectedVoiceId),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

enum EngineId { system, kitten, piper }
















// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
