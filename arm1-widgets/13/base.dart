// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class Gap extends StatelessWidget {
  final double size;

  const Gap(this.size, {super.key});

  @override
  Widget build(BuildContext context) => SizedBox(width: size, height: size);
}
class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late (Wallet?, Wallet?) wallets;

  @override
  void initState() {
    super.initState();
    wallets = fixtureWalletsRecord;
    blocRegistry[TransferBloc] = TransferBloc(fixtureTransferState);
  }

  @override
  void dispose() {
    blocRegistry.remove(TransferBloc);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final (fromWallet, toWallet) = wallets;
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            icon: Icon(Icons.swap_vert, color: context.appColors.primary),
            onPressed: fromWallet != null && toWallet != null
                ? () {
                    context.read<TransferBloc>().add(
                      TransferEvent.walletsChanged(
                        fromWallet: toWallet,
                        toWallet: fromWallet,
                      ),
                    );
                  }
                : null,
          ),
        ),
        const SwapToWalletDropdown(),
      ],
    );
  }
}
class SwapToWalletDropdown extends StatelessWidget {
  const SwapToWalletDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    final wallets = context.select((TransferBloc bloc) => bloc.state.wallets);
    final selected = context.select((TransferBloc bloc) => bloc.state.toWallet);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(context.loc.swapToLabel, style: context.font.bodyLarge),
        const Gap(4),
        if (wallets.isEmpty)
          const LoadingLineContent()
        else
          BBDropdown<Wallet>(
            items: wallets
                .map(
                  (wallet) => DropdownMenuItem(
                    value: wallet,
                    child: Row(
                      children: [
                        const Icon(Icons.account_balance_wallet),
                        const Gap(8),
                        Text(wallet.displayLabel(context)),
                      ],
                    ),
                  ),
                )
                .toList(),
            value: selected,
            validator: (value) {
              if (value == null) {
                return context.loc.swapValidationSelectToWallet;
              }
              return null;
            },
            onChanged: (value) {
              if (value != null) {
                final bloc = context.read<TransferBloc>();
                final currentFromWallet = bloc.state.fromWallet;
                if (currentFromWallet != null) {
                  bloc.add(
                    TransferWalletsChanged(
                      fromWallet: currentFromWallet,
                      toWallet: value,
                    ),
                  );
                }
              }
            },
          ),
      ],
    );
  }
}
class LoadingLineContent extends StatelessWidget {
  const LoadingLineContent({
    super.key,
    this.width = double.infinity,
    this.height = 12.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
  });

  final double width;
  final double height;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: context.appColors.shimmerBase,
      highlightColor: context.appColors.shimmerHighlight,
      child: Padding(
        padding: padding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: width,
              height: height,
              color: context.appColors.surface,
            ),
          ],
        ),
      ),
    );
  }
}
class BBDropdown<T> extends StatelessWidget {
  const BBDropdown({
    super.key,
    required this.items,
    required this.value,
    required this.onChanged,
    this.validator,
    this.hint,
    this.label,
    this.height = 64,
  });

  final List<DropdownMenuItem<T>> items;
  final T? value;
  final ValueChanged<T?>? onChanged;
  final FormFieldValidator<T>? validator;
  final Widget? hint;
  final String? label;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: height,
      child: Theme(
        data: Theme.of(context).copyWith(
          popupMenuTheme: PopupMenuThemeData(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
              side: BorderSide(color: context.appColors.primary, width: 1.0),
            ),
            color: context.appColors.onPrimary,
            elevation: 8,
          ),
        ),
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButtonFormField<T>(
            initialValue: value,
            items: items.map((item) {
              return DropdownMenuItem<T>(
                value: item.value,
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  child: item.child,
                ),
              );
            }).toList(),
            onChanged: onChanged,
            validator: validator,
            hint: hint,
            dropdownColor: context.appColors.onSecondary,
            menuMaxHeight: 240,
            itemHeight: height,
            alignment: Alignment.center,
            isExpanded: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: context.appColors.surface,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 16.0,
              ),
              isDense: false,
            ),
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: context.appColors.primary,
            ),
          ),
        ),
      ),
    );
  }
}
