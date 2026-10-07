// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class Gif extends StatelessWidget {
  final Autostart autostart;
  final double width;
  final double height;
  final Widget child;
  const Gif({
    super.key,
    required this.autostart,
    required this.width,
    required this.height,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width, height: height, child: child);
  }
}
class Gap extends StatelessWidget {
  final double size;
  const Gap(this.size, {super.key});

  @override
  Widget build(BuildContext context) => SizedBox(height: size, width: size);
}
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
  Widget build(BuildContext context) {
    return Text(
      data,
      style: style,
      maxLines: maxLines,
      textAlign: textAlign,
      softWrap: softWrap,
      overflow: overflow,
    );
  }
}
// --------------- generated widget ---------------

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late RecoverBullState state;

  @override
  void initState() {
    super.initState();
    state = fixtureRecoverBullState;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (state.isLoading)
                ProgressScreen(
                  isLoading: true,
                  title: context.loc.recoverbullFetchingVaultKey,
                  description: context.loc.recoverbullConnectingTor,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
class _LoadingIndicator extends StatelessWidget {
  const _LoadingIndicator();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Gif(
        autostart: Autostart.loop,
        width: 200,
        height: 200,
        child: Container(color: Colors.grey.shade300, width: 80, height: 80),
      ),
    );
  }
}
class _TitleBlock extends StatelessWidget {
  final String title;
  const _TitleBlock(this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(16),
        BBText(
          title,
          textAlign: TextAlign.center,
          style: context.font.headlineLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
class _DescriptionBlock extends StatelessWidget {
  final String description;
  const _DescriptionBlock(this.description);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(16),
        BBText(
          description,
          textAlign: TextAlign.center,
          style: context.font.bodySmall,
          maxLines: 3,
        ),
      ],
    );
  }
}
class ProgressScreen extends StatelessWidget {
  final String? title;
  final String? description;
  final bool isLoading;
  const ProgressScreen({
    required this.isLoading,
    super.key,
    this.title,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isLoading) const _LoadingIndicator(),
          if (title != null) _TitleBlock(title!),
          if (description != null) _DescriptionBlock(description!),
        ],
      ),
    );
  }
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