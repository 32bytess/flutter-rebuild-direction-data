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
      return const Center(child: CircularProgressIndicator());
    }
    if (state.error != null) {
      return Center(
        child: Text(
          state.error!,
          style: context.font.bodyLarge,
          softWrap: true,
        ),
      );
    }
    if (state.seeds.isEmpty) {
      return Center(
        child: Text(
          context.loc.legacySeedViewNoSeedsMessage,
          style: context.font.bodyLarge,
          softWrap: true,
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
                  Text(
                    context.loc.legacySeedViewMnemonicLabel,
                    style: context.font.bodyLarge.copyWith(
                      color: context.appColors.primary,
                    ),
                    softWrap: true,
                  ),
                  const SizedBox(height: 8),
                  AutoSizeText(
                    seed.mnemonic,
                    style: context.font.bodyMedium.copyWith(
                      color: context.appColors.secondary,
                    ),
                    maxLines: 5,
                    softWrap: true,
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
                    Text(
                      context.loc.legacySeedViewPassphrasesLabel,
                      style: context.font.bodyLarge,
                      softWrap: true,
                    ),
                    ...seed.passphrases.map(
                      (p) => Text(
                        p.passphrase.isNotEmpty
                            ? p.passphrase
                            : context.loc.legacySeedViewEmptyPassphrase,
                        style: context.font.bodyMedium,
                        softWrap: true,
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