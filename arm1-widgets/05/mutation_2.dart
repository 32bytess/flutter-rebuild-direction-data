// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class AutoSizeText extends StatelessWidget {
  final String data;
  final TextStyle? style;
  final int? maxLines;
  final TextAlign? textAlign;
  final bool? softWrap;
  final TextOverflow? overflow;
  const AutoSizeText(
    this.data, {
    super.key,
    this.style,
    this.maxLines,
    this.textAlign,
    this.softWrap,
    this.overflow,
  });
  @override
  Widget build(BuildContext context) => Text(
    data,
    style: style,
    maxLines: maxLines,
    textAlign: textAlign,
    softWrap: softWrap,
    overflow: overflow,
  );
}
// ── Generated widget ──────────────────────────────────────────────────────────

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  late LegacySeedViewState state;

  @override
  void initState() {
    super.initState();
    state = fixtureLegacySeedViewState;
  }

  @override
  Widget build(BuildContext context) {
    if (!state.loading && state.seeds.isEmpty && state.error == null) {
      context.read<LegacySeedViewCubit>().fetchOldSeeds();
    }
    if (state.loading) {
      return const _LoadingView();
    }
    if (state.error != null) {
      return Center(child: BBText(state.error!, style: context.font.bodyLarge));
    }
    if (state.seeds.isEmpty) {
      return Center(
        child: BBText(
          context.loc.legacySeedViewNoSeedsMessage,
          style: context.font.bodyLarge,
        ),
      );
    }
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: state.seeds.length,
      separatorBuilder: (_, _) => const SizedBox(height: 16),
      itemBuilder: (context, index) {
        final seed = state.seeds[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: context.appColors.surface,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: context.appColors.primary, width: 2),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BBText(
                    context.loc.legacySeedViewMnemonicLabel,
                    style: context.font.bodyLarge,
                    color: context.appColors.primary,
                  ),
                  const SizedBox(height: 8),
                  BBText(
                    seed.mnemonic,
                    style: context.font.bodyMedium,
                    color: context.appColors.secondary,
                    maxLines: 5,
                  ),
                ],
              ),
            ),
            if (seed.passphrases.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BBText(
                      context.loc.legacySeedViewPassphrasesLabel,
                      style: context.font.bodyLarge,
                    ),
                    ...seed.passphrases.map(
                      (p) => BBText(
                        p.passphrase.isNotEmpty
                            ? p.passphrase
                            : context.loc.legacySeedViewEmptyPassphrase,
                        style: context.font.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        );
      },
    );
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView();

  @override
  Widget build(BuildContext context) =>
      const Center(child: CircularProgressIndicator());
}

class BBText extends StatelessWidget {
  const BBText(
    this.text, {
    super.key,
    required this.style,
    this.maxLines,
    this.color,
    this.textAlign,
    this.overflow,
  });

  final String text;
  final int? maxLines;
  final TextStyle? style;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    final effectiveStyle = style?.copyWith(color: color);

    // AutoSizeText requires a maxLines bound to meaningfully shrink text.
    // Without it, the widget still runs its multi-pass layout algorithm, which
    // triggers a `!semantics.parentDataDirty` Flutter assertion when placed
    // inside constrained Material slots such as ListTile.title/subtitle or
    // CheckboxListTile.title.  Fall back to plain Text in that case — behaviour
    // is identical since there is no line count to fit into.
    if (maxLines == null) {
      return Text(
        text,
        style: effectiveStyle,
        textAlign: textAlign,
        softWrap: true,
        overflow: overflow,
      );
    }

    return AutoSizeText(
      text,
      style: effectiveStyle,
      maxLines: maxLines,
      textAlign: textAlign,
      softWrap: true,
      overflow: overflow,
    );
  }
}

