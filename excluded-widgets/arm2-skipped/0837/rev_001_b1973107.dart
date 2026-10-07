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
  late final String widgetResponse;
  late final bool isDark;

  late WidgetRef ref;

  @override
  void initState() {
    super.initState();
    widgetResponse = fixtureResponse;
    isDark = fixtureIsDark;
    ref = fixtureRef;
    _scrollController = fixtureScrollController;
    _lastTrackedWord = fixtureLastTrackedWord;
    _trackedResponse = fixtureTrackedResponse;
  }

  late ScrollController _scrollController;

  late int _lastTrackedWord;

  late String? _trackedResponse;

  void _scheduleActiveWordScroll({
    required String response,
    required int activeWordIndex,
    required TextSpan textSpan,
    required double maxWidth,
    required double maxHeight,
    required TextScaler textScaler,
    required TextDirection textDirection,
  }) {
    if (activeWordIndex < 0 ||
        activeWordIndex == _lastTrackedWord ||
        !maxWidth.isFinite ||
        maxWidth <= 0) {
      return;
    }

    _lastTrackedWord = activeWordIndex;
    final charOffset = _wordStartCharOffset(response, activeWordIndex);
    if (charOffset < 0) return;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      /* spm: non-rebuild body erased */
    });
  }

  int _wordStartCharOffset(String text, int targetWordIndex) {
    var inWord = false;
    var wordIndex = -1;
    for (var i = 0; i < text.length; i++) {
      final isWord = _isWordChar(text.codeUnitAt(i));
      if (isWord && !inWord) {
        wordIndex++;
        if (wordIndex == targetWordIndex) return i;
        inWord = true;
      } else if (!isWord) {
        inWord = false;
      }
    }
    return -1;
  }

  /// Returns the index of the word currently being spoken, or -1 if no
  /// word is currently active (e.g. between sentences, before TTS has
  /// populated `chunks`).
  int _activeWordIndex(String response, TtsState tts) {
    if (!tts.isSpeaking) return -1;

    if (tts.spokenCharOffset >= 0 && response.isNotEmpty) {
      final safeOffset = tts.spokenCharOffset.clamp(0, response.length - 1);
      return _wordIndexAtChar(response, safeOffset);
    }

    if (tts.chunks.isEmpty ||
        tts.currentChunkIndex < 0 ||
        tts.currentChunkIndex >= tts.chunks.length) {
      return -1;
    }

    final chunkStartChars = _chunkCharStarts(response, tts.chunks);
    final charIdx = _globalCharIndex(
      chunkIndex: tts.currentChunkIndex,
      chunkStartChars: chunkStartChars,
      chunks: tts.chunks,
      duration: tts.duration,
      position: tts.position,
    );
    if (charIdx < 0) return -1;

    return _wordIndexAtChar(response, charIdx);
  }

  /// Maps each TTS chunk to a starting character offset within the
  /// original response string so we can locate the spoken character.
  /// Falls back to char-proportional split when the TTS chunks don't
  /// map cleanly (e.g. markdown was stripped, text was rephrased).
  List<int> _chunkCharStarts(String response, List<String> chunks) {
    final starts = <int>[];
    int cursor = 0;
    for (final chunk in chunks) {
      final idx = response.indexOf(chunk, cursor);
      starts.add(idx >= 0 ? idx : cursor);
      cursor = (idx >= 0 ? idx : cursor) + chunk.length;
    }
    return starts;
  }

  /// Approximates the global character index that's currently being
  /// spoken, by combining the chunk-of-the-moment's start offset with
  /// the chunk's share of the total `duration` and the live `position`.
  int _globalCharIndex({
    required int chunkIndex,
    required List<int> chunkStartChars,
    required List<String> chunks,
    required Duration duration,
    required Duration position,
  }) {
    if (chunks.isEmpty) return -1;

    final totalChars = chunks.fold<int>(0, (sum, c) => sum + c.length);
    if (totalChars == 0) return -1;

    final prevChunkChars = <int>[0];
    for (var i = 0; i < chunks.length; i++) {
      prevChunkChars.add(prevChunkChars.last + chunks[i].length);
    }

    final safeDuration = duration.inMilliseconds > 0
        ? duration.inMilliseconds
        : totalChars * 60;
    final safePosition = position.inMilliseconds.clamp(0, safeDuration);
    final globalCharIdx = ((safePosition / safeDuration) * totalChars)
        .round()
        .clamp(0, totalChars);

    // Within which chunk does that character fall?
    int targetChunk = chunks.length - 1;
    for (var i = 0; i < chunks.length; i++) {
      if (globalCharIdx < prevChunkChars[i + 1]) {
        targetChunk = i;
        break;
      }
    }

    final chunkStart = chunkStartChars[targetChunk];
    final charInChunk = (globalCharIdx - prevChunkChars[targetChunk]).clamp(
      0,
      chunks[targetChunk].length,
    );
    return chunkStart + charInChunk;
  }

  /// Builds the highlighted word index for a text by walking whitespace-
  /// separated tokens and returning the index of the one containing
  /// [charIdx].
  int _wordIndexAtChar(String text, int charIdx) {
    if (charIdx < 0 || charIdx >= text.length) return -1;
    var inWord = false;
    var wordIndex = -1;
    for (var i = 0; i < text.length; i++) {
      final isWordChar = _isWordChar(text.codeUnitAt(i));
      if (isWordChar && !inWord) {
        wordIndex++;
        inWord = true;
      } else if (!isWordChar && inWord) {
        inWord = false;
      }
      if (i == charIdx && inWord) {
        return wordIndex;
      }
    }
    // If charIdx is the last char and is inside a word.
    return inWord ? wordIndex : -1;
  }

  bool _isWordChar(int codeUnit) {
    // Letters, digits, and apostrophes (don't break "don't" into two).
    final isAlnum =
        (codeUnit >= 0x30 && codeUnit <= 0x39) || // 0-9
        (codeUnit >= 0x41 && codeUnit <= 0x5A) || // A-Z
        (codeUnit >= 0x61 && codeUnit <= 0x7A) || // a-z
        (codeUnit >= 0xC0 && codeUnit <= 0x024F); // Latin extended
    final isApostrophe = codeUnit == 0x27 || codeUnit == 0x2019; // ' '
    return isAlnum || isApostrophe;
  }

  List<InlineSpan> _buildWordSpans({
    required String response,
    required int activeIndex,
    required TextStyle base,
    required TextStyle active,
  }) {
    final spans = <InlineSpan>[];
    var wordIndex = -1;
    var buffer = StringBuffer();
    var inWord = false;

    void flushBuffer({required bool trailingWord}) {
      if (buffer.isEmpty) return;
      final text = buffer.toString();
      spans.add(
        TextSpan(
          text: text,
          style: trailingWord && wordIndex == activeIndex ? active : base,
        ),
      );
      buffer = StringBuffer();
    }

    for (var i = 0; i < response.length; i++) {
      final code = response.codeUnitAt(i);
      final isWord = _isWordChar(code);
      if (isWord && !inWord) {
        // Flush preceding whitespace.
        flushBuffer(trailingWord: false);
        wordIndex++;
        inWord = true;
      } else if (!isWord && inWord) {
        // End of word — flush with active/inactive style.
        flushBuffer(trailingWord: true);
        inWord = false;
      }
      buffer.write(response[i]);
    }
    if (inWord) {
      flushBuffer(trailingWord: true);
    } else {
      flushBuffer(trailingWord: false);
    }
    return spans;
  }

  @override
  Widget build(BuildContext context) {
    final tts = ref.watch(ttsProvider);
    final spokenContent = tts.playingContent;
    final response = spokenContent != null && spokenContent.trim().isNotEmpty
        ? spokenContent
        : widgetResponse;
    if (_trackedResponse != response) {
      _trackedResponse = response;
      _lastTrackedWord = -1;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        /* spm: non-rebuild body erased */
      });
    }
    if (response.isEmpty) {
      return Text(
        '...',
        key: const ValueKey('speaking'),
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: isDark
              ? Colors.white.withValues(alpha: 0.7)
              : Colors.black.withValues(alpha: 0.7),
          height: 1.45,
        ),
        textAlign: TextAlign.center,
      );
    }
    final accent = VoiceModePalette.accentFor(
      VoiceModePhase.speaking,
      isDark: isDark,
    );
    final mutedColor = isDark
        ? Colors.white.withValues(alpha: 0.7)
        : Colors.black.withValues(alpha: 0.7);
    final highlightedWordIndex = _activeWordIndex(response, tts);
    final base = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: mutedColor,
      height: 1.45,
    );
    final spans = _buildWordSpans(
      response: response,
      activeIndex: highlightedWordIndex,
      base: base,
      active: base.copyWith(color: accent, fontWeight: FontWeight.w700),
    );
    final textSpan = TextSpan(style: base, children: spans);
    final textScaler = MediaQuery.textScalerOf(context);
    final textDirection = Directionality.of(context);
    final maxHeight =
        textScaler.scale(base.fontSize ?? 16) * (base.height ?? 1) * 4;
    return LayoutBuilder(
      builder: (context, constraints) {
        _scheduleActiveWordScroll(
          response: response,
          activeWordIndex: highlightedWordIndex,
          textSpan: textSpan,
          maxWidth: constraints.maxWidth,
          maxHeight: maxHeight,
          textScaler: textScaler,
          textDirection: textDirection,
        );

        return ConstrainedBox(
          constraints: BoxConstraints(maxHeight: maxHeight),
          child: SingleChildScrollView(
            key: const ValueKey('speaking-scroll'),
            controller: _scrollController,
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
              width: constraints.maxWidth,
              child: RichText(
                key: const ValueKey('speaking'),
                textAlign: TextAlign.center,
                text: textSpan,
              ),
            ),
          ),
        );
      },
    );
  }
}

/// The phase of the voice-to-voice conversation loop.
enum VoiceModePhase {
  /// Overlay is open but idle — waiting for the user to start.
  idle,

  /// Actively listening for user speech via STT.
  listening,

  /// User speech captured; waiting for LLM response.
  processing,

  /// LLM response complete; TTS is speaking.
  speaking,

  /// An error occurred in one of the phases.
  error,
}




















// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
