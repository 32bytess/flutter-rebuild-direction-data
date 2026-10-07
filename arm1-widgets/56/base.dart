// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  final _controller = TextEditingController();

  late FeeEntity _fastestFeeRate;
  late FeeEntity _selected;

  double _customFeeRate = 0;

  String get _customFeeRateString => _customFeeRate.toStringAsFixed(1);

  @override
  void initState() {
    super.initState();
    _fastestFeeRate = makeFastestFee();
    _selected = makeFastestFee();
    _customFeeRate = _selected.feeRate;
    _controller.text = _customFeeRateString;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onChanged(FeeEntity fee) {
    setState(() {
      _selected = fee;
    });
  }

  void _onCustomChanged(String text) {
    final parsed = num.tryParse(text);
    if (parsed != null) {
      _customFeeRate = parsed.toDouble();
      _onChanged(
        FeeEntity(type: FeeType.custom, feeRate: _customFeeRate),
      );
    } else {
      _customFeeRate = 0;
      _controller.text = '';
    }
    setState(() {});
  }

  Widget _buildFastestSection(bool isSelected) {
    return InkWell(
      radius: 2,
      onTap: () => _onChanged(_fastestFeeRate),
      child: Material(
        elevation: isSelected ? 4 : 1,
        borderRadius: BorderRadius.circular(2),
        clipBehavior: Clip.hardEdge,
        color: Theme.of(context).colorScheme.onSecondary,
        shadowColor: Theme.of(context).colorScheme.secondary,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    BBText(
                      'Fastest',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    const SizedBox(height: 4),
                    BBText(
                      'Get your transaction confirmed fastest',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    const SizedBox(height: 2),
                    BBText(
                      '${_fastestFeeRate.feeRate.toStringAsFixed(1)} sats/vB',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.radio_button_checked_outlined,
                color: isSelected
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.surface,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCustomFeeSection(bool isSelected) {
    return InkWell(
      radius: 2,
      onTap: () => _onChanged(
        FeeEntity(type: FeeType.custom, feeRate: _customFeeRate),
      ),
      child: Material(
        elevation: isSelected ? 4 : 1,
        borderRadius: BorderRadius.circular(2),
        clipBehavior: Clip.hardEdge,
        color: Theme.of(context).colorScheme.onSecondary,
        shadowColor: Theme.of(context).colorScheme.secondary,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BBText(
                    'Custom fee',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Icon(
                    Icons.radio_button_checked_outlined,
                    color: isSelected
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.surface,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              BBInputText(
                controller: _controller,
                value: _controller.text,
                onChanged: _onCustomChanged,
                onlyNumbers: true,
                rightIcon: Text(
                  'sats/vB',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            _buildFastestSection(_selected.type == FeeType.fastest),
            const SizedBox(height: 16),
            _buildCustomFeeSection(_selected.type == FeeType.custom),
          ],
        ),
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

    if (maxLines == null) {
      return Text(
        text,
        style: effectiveStyle,
        textAlign: textAlign,
        softWrap: true,
        overflow: overflow,
      );
    }

    return Text(
      text,
      style: effectiveStyle,
      maxLines: maxLines,
      textAlign: textAlign,
      softWrap: true,
      overflow: overflow,
    );
  }
}
class BBInputText extends StatefulWidget {
  const BBInputText({
    super.key,
    this.uiKey,
    this.controller,
    required this.onChanged,
    required this.value,
    this.hint,
    this.hintStyle,
    this.rightIcon,
    this.onRightTap,
    this.disabled = false,
    this.focusNode,
    this.onEnter,
    this.onDone,
    this.maxLength,
    this.onlyPaste = false,
    this.onlyNumbers = false,
    this.obscure = false,
    this.style,
    this.hideBorder = false,
    this.maxLines,
    this.minLines,
    this.fixedPrefix,
  });

  final Key? uiKey;
  final TextEditingController? controller;
  final Function(String) onChanged;
  final String value;
  final String? hint;
  final TextStyle? hintStyle;
  final Widget? rightIcon;
  final Function? onRightTap;
  final bool disabled;
  final FocusNode? focusNode;
  final Function? onEnter;
  final Function(String)? onDone;
  final int? maxLength;
  final bool onlyPaste;
  final bool onlyNumbers;
  final bool obscure;
  final int? maxLines;
  final int? minLines;
  final TextStyle? style;
  final bool hideBorder;
  final String? fixedPrefix;

  @override
  State<BBInputText> createState() => _BBInputTextState();
}
class _BBInputTextState extends State<BBInputText> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        widget.controller ?? TextEditingController(text: widget.value);
  }

  @override
  void didUpdateWidget(BBInputText oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != _controller.text) {
      _controller.value = TextEditingValue(
        text: widget.value,
        selection: TextSelection.collapsed(offset: widget.value.length),
      );
    }
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  InputBorder _getBorder(BuildContext context) {
    if (widget.hideBorder) return InputBorder.none;

    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(2),
      borderSide: BorderSide(color: Theme.of(context).colorScheme.outline),
    );
  }

  @override
  Widget build(BuildContext context) {
    final shouldPreventNewlines =
        widget.maxLines != null && widget.maxLines! <= 2;

    return TextField(
      key: widget.uiKey,
      controller: _controller,
      onChanged: widget.onChanged,
      focusNode: widget.focusNode,
      enabled: !widget.disabled,
      keyboardType: widget.onlyPaste
          ? TextInputType.none
          : widget.onlyNumbers
          ? const TextInputType.numberWithOptions(decimal: true)
          : TextInputType.multiline,
      textInputAction: shouldPreventNewlines
          ? TextInputAction.done
          : TextInputAction.newline,
      inputFormatters: [
        if (shouldPreventNewlines)
          FilteringTextInputFormatter.deny(RegExp(r'\n')),
        if (widget.maxLength != null)
          LengthLimitingTextInputFormatter(widget.maxLength),
      ],
      obscureText: widget.obscure,
      obscuringCharacter: widget.onlyNumbers ? 'x' : '*',
      enableIMEPersonalizedLearning: false,
      maxLength: widget.maxLength,
      minLines: widget.minLines ?? 1,
      maxLines: widget.maxLines ?? (widget.obscure ? 1 : null),
      style:
          widget.style ??
          Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),
      onTap: () => widget.onEnter?.call(),
      onSubmitted: widget.onDone,
      textAlign: TextAlign.left,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle:
            widget.hintStyle ??
            TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant),
        prefixIcon: widget.fixedPrefix != null
            ? Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 16,
                ),
                child: Text(
                  widget.fixedPrefix!,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            : null,
        suffixIcon: widget.rightIcon != null
            ? IconButton(
                padding: const EdgeInsets.all(5),
                icon: widget.rightIcon!,
                onPressed: () => widget.onRightTap?.call(),
              )
            : null,
        border: _getBorder(context),
        enabledBorder: _getBorder(context),
        focusedBorder: _getBorder(context),
        disabledBorder: _getBorder(context),
        contentPadding: const EdgeInsets.all(16),
        filled: true,
        fillColor: Theme.of(context).colorScheme.surface,
      ),
    );
  }
}
