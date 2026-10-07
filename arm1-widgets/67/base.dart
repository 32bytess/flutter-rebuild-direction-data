// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  late TextEditingController _amountController;
  Currency? _currency;
  double? _balance;
  late Map<String, double> _balances;
  late BitcoinUnit _bitcoinUnit;
  late bool _isFiatCurrencyInput;

  @override
  void initState() {
    super.initState();
    _currency = fixtureCurrency;
    _balance = fixtureBalance;
    _balances = fixtureBalances();
    _bitcoinUnit = fixtureBitcoinUnit;
    _isFiatCurrencyInput = fixtureIsFiatCurrencyInput;
    _amountController = makeAmountController();
    _amountController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currency = _currency;
    final balance = _balance;
    final balances = _balances;
    final bitcoinUnit = _bitcoinUnit;
    final isFiatCurrencyInput = _isFiatCurrencyInput;
    final amountInputDecimals = isFiatCurrencyInput
        ? currency?.decimals ?? 2
        : bitcoinUnit.decimals;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(context.loc.buyEnterAmount, style: context.font.bodyMedium),
        const Gap(4.0),
        Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 16.0,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (currency == null)
                  const LoadingLineContent(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                  )
                else
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: _amountController,
                          keyboardType: const TextInputType.numberWithOptions(
                            decimal: true,
                          ),
                          inputFormatters: amountInputDecimals > 0
                              ? [
                                  FilteringTextInputFormatter.allow(
                                    RegExp(
                                      r'^\d+\.?\d{0,'
                                      '$amountInputDecimals'
                                      '}',
                                    ),
                                  ),
                                ]
                              : [FilteringTextInputFormatter.digitsOnly],
                          style: context.font.displaySmall?.copyWith(
                            color: context.appColors.primary,
                          ),
                          decoration: InputDecoration(
                            hintText: NumberFormat.decimalPatternDigits(
                              decimalDigits: amountInputDecimals,
                            ).format(0),
                            hintStyle: context.font.displaySmall?.copyWith(
                              color: context.appColors.onSurfaceVariant,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const Gap(8.0),
                      Text(
                        isFiatCurrencyInput ? currency.code : bitcoinUnit.code,
                        style: context.font.displaySmall?.copyWith(
                          color: context.appColors.primary,
                        ),
                      ),
                    ],
                  ),
                const Gap(16),
                if (currency == null)
                  const LoadingLineContent(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                  )
                else
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            _isFiatCurrencyInput = !_isFiatCurrencyInput;
                          });
                          // Clear the amount input when switching currency type
                          // manually to avoid confusion with the previous input
                          // and since the input formatters will change.
                          _amountController.clear();
                        },
                        child: Icon(
                          Icons.swap_vert,
                          color: context.appColors.outline,
                        ),
                      ),
                      const Gap(8.0),
                      Text(
                        isFiatCurrencyInput ? bitcoinUnit.code : currency.code,
                        style: context.font.bodyMedium?.copyWith(
                          color: context.appColors.outline,
                        ),
                      ),
                      // CurrencyText(
                      //   amountSat ?? 0,
                      //   showFiat: !isFiatCurrencyInput,
                      //   style: context.font.bodyMedium?.copyWith(
                      //     color: context.colour.outline,
                      //   ),
                      //   fiatCurrency: currency.code,
                      //   fiatAmount: !isFiatCurrencyInput ? fiatAmount : null,
                      // ),
                      // Text(
                      //   ' approx.',
                      //   style: context.font.bodyMedium?.copyWith(
                      //     color: context.colour.outline,
                      //   ),
                      // ),
                      const Spacer(),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          onPressed: () {
                            if (!isFiatCurrencyInput) {
                              setState(() {
                                _isFiatCurrencyInput = true;
                              });
                            }
                            _amountController.text = balance?.toString() ?? '0';
                          },
                          child: Text(
                            context.loc.buyMax,
                            style: context.font.bodyMedium?.copyWith(
                              color: context.appColors.primary,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
        const Gap(16.0),
        Text(context.loc.buyPaymentMethod, style: context.font.bodyMedium),
        const Gap(4.0),
        SizedBox(
          height: 56,
          child: Material(
            elevation: 4,
            shadowColor: context.appColors.onSurface.withValues(alpha: 0.7),
            color: context.appColors.surface,
            borderRadius: BorderRadius.circular(4.0),
            child: Center(
              child: DropdownButtonFormField<String>(
                initialValue: currency?.code,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                ),
                dropdownColor: context.appColors.surface,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: context.appColors.onSurface,
                ),
                items: balances.keys
                    .map(
                      (currencyCode) => DropdownMenuItem<String>(
                        value: currencyCode,
                        child: Text(
                          '$currencyCode Balance - ${FormatAmount.fiat(balances[currencyCode] ?? 0, currencyCode, simpleFormat: true)}',
                          style: context.font.headlineSmall?.copyWith(
                            color: context.appColors.secondary,
                          ),
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  if (value != null) {
                    setState(() {
                      _currency = Currency(
                        code: value,
                        decimals: _currency?.decimals ?? 2,
                      );
                    });
                  }
                },
              ),
            ),
          ),
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
