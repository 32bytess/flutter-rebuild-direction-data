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
    Widget buildOwnerField() {
      return BBTextFormField(
        labelText: 'Owner Name',
        hintText: 'Owner name will appear here',
        controller: _ownerNameController,
        disabled: true,
        suffix: _ownerNameController.text.isNotEmpty
            ? const Icon(Icons.check_circle, color: Colors.green)
            : isChecking
            ? SizedBox(
                width: 20,
                height: 20,
                child: Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              )
            : const Icon(Icons.check_circle_outline, color: Colors.grey),
        validator: (v) {
          if (v == null || v.trim().isEmpty) {
            return "Please validate the phone number";
          }
          return null;
        },
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        buildOwnerField(),
        buildOwnerField(),
        buildOwnerField(),
        buildOwnerField(),
      ],
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
          Text(
            labelText!,
            style:
                labelStyle ??
                Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: isDisabled
                      ? Theme.of(context).colorScheme.outline
                      : Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.w500,
                ),
            textAlign: TextAlign.left,
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
                ? Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      prefixText!,
                      style: (style ?? Theme.of(context).textTheme.bodyLarge)
                          ?.copyWith(
                            color: isDisabled
                                ? Theme.of(context).colorScheme.outline
                                : null,
                          ),
                    ),
                  )
                : prefix,
            prefixIconConstraints: prefixText != null
                ? const BoxConstraints(minWidth: 0, minHeight: 0)
                : null,
            suffixIcon: suffixText != null
                ? Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Text(
                      suffixText!,
                      style: (style ?? Theme.of(context).textTheme.bodyLarge)
                          ?.copyWith(
                            color: isDisabled
                                ? Theme.of(context).colorScheme.outline
                                : null,
                          ),
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