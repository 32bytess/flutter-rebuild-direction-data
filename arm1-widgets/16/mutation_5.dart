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
  late bool isChecking;

  final TextEditingController _ownerNameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    isChecking = fixtureIsChecking;
  }

  @override
  Widget build(BuildContext context) {
    return BBTextFormField(
      labelText: 'Owner Name',
      hintText: 'Owner name will appear here',
      controller: _ownerNameController,
      disabled: true,
      suffix: _SuffixIcon(
        hasValue: _ownerNameController.text.isNotEmpty,
        isChecking: isChecking,
      ),
      validator: (v) {
        if (v == null || v.trim().isEmpty) {
          return "Please validate the phone number";
        }
        return null;
      },
    );
  }
}

class _SuffixIcon extends StatelessWidget {
  const _SuffixIcon({required this.hasValue, required this.isChecking});

  final bool hasValue;
  final bool isChecking;

  @override
  Widget build(BuildContext context) {
    if (hasValue) {
      return const Icon(Icons.check_circle, color: Colors.green);
    }
    if (isChecking) {
      return const _CheckingIndicator();
    }
    return const Icon(Icons.check_circle_outline, color: Colors.grey);
  }
}

class _CheckingIndicator extends StatelessWidget {
  const _CheckingIndicator();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20,
      height: 20,
      child: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(
            Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}

class _FieldLabel extends StatelessWidget {
  const _FieldLabel({required this.text, required this.style});

  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style, textAlign: TextAlign.left);
  }
}

class _FieldAffixText extends StatelessWidget {
  const _FieldAffixText({
    required this.text,
    required this.style,
    required this.alignRight,
  });

  final String text;
  final TextStyle? style;
  final bool alignRight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: alignRight
          ? const EdgeInsets.only(right: 16.0)
          : const EdgeInsets.only(left: 16.0),
      child: Text(text, style: style),
    );
  }
}

class BBTextFormField extends StatelessWidget {
  const BBTextFormField({
    super.key,
    this.labelText,
    this.labelStyle,
    this.controller,
    this.focusNode,
    this.autofocus,
    this.inputFormatters,
    this.style,
    this.textInputAction,
    this.hintText,
    this.onChanged,
    this.onFieldSubmitted,
    this.validator,
    this.prefix,
    this.prefixText,
    this.suffix,
    this.suffixText,
    this.disabled,
  });

  final String? labelText;
  final TextStyle? labelStyle;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool? autofocus;
  final List<TextInputFormatter>? inputFormatters;
  final TextStyle? style;
  final TextInputAction? textInputAction;
  final String? hintText;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final String? Function(String?)? validator;
  final String? prefixText;
  final Widget? prefix;
  final String? suffixText;
  final Widget? suffix;
  final bool? disabled;

  @override
  Widget build(BuildContext context) {
    final isDisabled = disabled ?? false;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (labelText != null)
          _FieldLabel(
            text: labelText!,
            style:
                labelStyle ??
                Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: isDisabled
                      ? Theme.of(context).colorScheme.outline
                      : Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.w500,
                ),
          ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          focusNode: focusNode,
          autofocus: autofocus ?? false,
          textInputAction: textInputAction,
          inputFormatters: inputFormatters,
          style: (style ?? Theme.of(context).textTheme.bodyLarge)?.copyWith(
            color: isDisabled ? Theme.of(context).colorScheme.outline : null,
          ),
          enabled: !isDisabled,
          decoration: InputDecoration(
            fillColor: isDisabled
                ? Theme.of(context).colorScheme.surfaceContainerHighest
                : Theme.of(context).colorScheme.onSecondary,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.secondaryFixedDim,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.secondaryFixedDim,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                color: Theme.of(
                  context,
                ).colorScheme.secondaryFixedDim.withValues(alpha: 0.5),
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.outline,
            ),
            prefixIcon: prefixText != null
                ? _FieldAffixText(
                    text: prefixText!,
                    alignRight: false,
                    style: (style ?? Theme.of(context).textTheme.bodyLarge)
                        ?.copyWith(
                          color: isDisabled
                              ? Theme.of(context).colorScheme.outline
                              : null,
                        ),
                  )
                : prefix,
            prefixIconConstraints: prefixText != null
                ? const BoxConstraints(minWidth: 0, minHeight: 0)
                : null,
            suffixIcon: suffixText != null
                ? _FieldAffixText(
                    text: suffixText!,
                    alignRight: true,
                    style: (style ?? Theme.of(context).textTheme.bodyLarge)
                        ?.copyWith(
                          color: isDisabled
                              ? Theme.of(context).colorScheme.outline
                              : null,
                        ),
                  )
                : suffix,
            suffixIconConstraints: suffixText != null
                ? const BoxConstraints(minWidth: 0, minHeight: 0)
                : null,
          ),
          onFieldSubmitted: onFieldSubmitted,
          validator: validator,
          onChanged: onChanged,
        ),
      ],
    );
  }
}