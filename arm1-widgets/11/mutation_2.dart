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
  late (String, bool) data;

  @override
  void initState() {
    super.initState();
    data = fixturePinData;
  }

  @override
  Widget build(BuildContext context) {
    final (pinCode, obscurePinCode) = data;
    return BBInputText(
      value: pinCode,
      obscure: obscurePinCode,
      onRightTap: () => setState(() {
        data = (data.$1, !data.$2);
      }),
      rightIcon: IconTheme.merge(
        data: IconThemeData(color: Theme.of(context).colorScheme.onSurface),
        child: obscurePinCode
            ? const Icon(Icons.visibility_off_outlined)
            : const Icon(Icons.visibility_outlined),
      ),
      onlyNumbers: true,
      onChanged: (value) {},
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
      textInputAction:
          shouldPreventNewlines ? TextInputAction.done : TextInputAction.newline,
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