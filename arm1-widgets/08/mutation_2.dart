// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dependencies.dart';

class ReaderWidget extends StatelessWidget {
  final Duration scanDelay;
  final Duration scanDelaySuccess;
  final void Function(ScanResult) onScan;
  final ResolutionPreset resolution;
  final bool showGallery;
  final bool tryInverted;

  const ReaderWidget({
    super.key,
    required this.scanDelay,
    required this.scanDelaySuccess,
    required this.onScan,
    this.resolution = ResolutionPreset.high,
    this.showGallery = false,
    this.tryInverted = false,
  });

  @override
  Widget build(BuildContext context) => const SizedBox.expand(child: ColoredBox(color: Colors.black));
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
  Widget build(BuildContext context) => Text(
    data,
    style: style,
    maxLines: maxLines,
    textAlign: textAlign,
    softWrap: softWrap ?? true,
    overflow: overflow,
  );
}
// ---- Generated widget ----

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late BroadcastSignedTxState state;

  @override
  void initState() {
    super.initState();
    zx = zxValue;
    log = logValue;
    state = fixtureBroadcastSignedTxState;
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<BroadcastSignedTxCubit>();
    return Stack(
      fit: StackFit.expand,
      children: [
        QrScannerWidget(
          onScanned: cubit.onQrScanned,
          resolution: ResolutionPreset.high,
          scanDelay:
              state
                  .bbqr
                  .parts
                  .isNotEmpty // if scanning bbqr, reduce delay
              ? const Duration(milliseconds: 50)
              : const Duration(milliseconds: 100),
        ),

        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.02,
          left: 0,
          right: 0,
          child: Center(
            child: IconButton(
              onPressed: () => context.pop(),
              icon: Icon(
                CupertinoIcons.xmark_circle,
                color: context.appColors.onPrimary,
                size: 64,
              ),
            ),
          ),
        ),

        if (state.bbqr.isScanningBbqr)
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.2,
            left: 0,
            right: 0,
            child: Center(
              child: BBText(
                '${state.bbqr.parts.length} / ${state.bbqr.options!.total}',
                style: context.font.labelMedium,
                color: context.appColors.onPrimary,
              ),
            ),
          ),
      ],
    );
  }
}
class QrScannerWidget extends StatefulWidget {
  final void Function(String data) onScanned;
  final ResolutionPreset resolution;
  final Duration scanDelay;

  const QrScannerWidget({
    super.key,
    required this.onScanned,
    this.resolution = ResolutionPreset.high,
    this.scanDelay = const Duration(milliseconds: 1000),
  });

  @override
  State<QrScannerWidget> createState() => _ScannerState();
}
class _ScannerState extends State<QrScannerWidget> {
  final UrQrReader _urReader = UrQrReader();
  String _progressText = '';

  @override
  void dispose() {
    super.dispose();
    zx.stopCameraProcessing();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ReaderWidget(
          scanDelay: widget.scanDelay,
          scanDelaySuccess: widget.scanDelay,
          onScan: (result) {
            if (!mounted) return;

            if (result.isValid &&
                result.text != null &&
                result.text!.isNotEmpty) {
              _processQrData(result.text!);
            }
          },
          resolution: widget.resolution,
          showGallery: true,
          tryInverted: true,
        ),

        // UR Progress Display
        if (_progressText.isNotEmpty)
          Positioned(
            bottom: 100,
            left: 16,
            right: 16,
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: context.appColors.secondary,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              child: Text(
                _progressText,
                style: TextStyle(
                  color: context.appColors.onSecondary,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ],
    );
  }

  void _processQrData(String data) {
    if (data.toLowerCase().startsWith('ur:')) {
      _processUrData(data);
    } else {
      widget.onScanned(data);
    }
  }

  void _processUrData(String data) {
    try {
      _urReader.receive(data);

      setState(() {
        if (_urReader.expectedParts != null) {
          final percent = (_urReader.progress * 100).toInt();
          _progressText = 'Scanning: $percent%';
        } else {
          _progressText = 'UR Progress: ${_urReader.processedParts} parts';
        }
      });

      if (_urReader.isComplete) {
        if (_urReader.decoded != null) {
          setState(() => _progressText = 'Scanning completed');
          widget.onScanned(_urReader.decoded!.toString());
        } else {
          setState(() => _progressText = 'UR decoding failed');
        }
      }
    } catch (e) {
      log.severe(
        message: 'UR processing failed',
        error: e,
        trace: StackTrace.current,
      );
      setState(() => _progressText = 'UR processing failed');
    }
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