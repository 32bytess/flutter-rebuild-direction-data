// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class Gap extends StatelessWidget {
  final double size;
  const Gap(this.size, {super.key});

  @override
  Widget build(BuildContext context) => SizedBox(height: size, width: size);
}
class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late bool _hasDcaActive;
  late bool _showSettings;
  late UserDca _dca;

  @override
  void initState() {
    super.initState();
    _hasDcaActive = false;
    _showSettings = false;
    _dca = UserDca(
      amount: 100.0,
      currency: FiatCurrency.usd,
      frequency: DcaBuyFrequency.daily,
      network: DcaNetwork.bitcoin,
      address: '1A1zP1eP5QGefi2DMPTfTL5SLmv7Divf8R',
    );
  }

  Widget? _buildDcaContent(UserDca dca, BuildContext context) {
    if (dca.amount == null ||
        dca.currency == null ||
        dca.frequency == null ||
        dca.network == null ||
        dca.address == null) {
      return Text(
        context.loc.exchangeDcaUnableToGetConfig,
        style: TextStyle(
          color: context.appColors.onSurface.withValues(alpha: 0.6),
        ),
      );
    }

    return DcaSettingsContent(
      amount: dca.amount!,
      currency: dca.currency!,
      frequency: dca.frequency!,
      network: dca.network!,
      address: dca.address!,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  _hasDcaActive
                      ? context.loc.exchangeDcaDeactivateTitle
                      : context.loc.exchangeDcaActivateTitle,
                ),
                if (_hasDcaActive) ...[
                  const Gap(4),
                  GestureDetector(
                    onTap: () => setState(() => _showSettings = !_showSettings),
                    child: Text(
                      _showSettings
                          ? context.loc.exchangeDcaHideSettings
                          : context.loc.exchangeDcaViewSettings,
                      style: TextStyle(
                        fontSize: 14,
                        color: context.appColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: context.appColors.primary,
                      ),
                    ),
                  ),
                  const Gap(4),
                ],
              ],
            ),
          ),
          Switch(
            value: _hasDcaActive,
            onChanged: (value) {
              if (value) {
                // Activate DCA
                context.pushNamed(DcaRoute.dca.name);
              } else {
                // Deactivate DCA - show confirmation dialog
                showDialog(
                  context: context,
                  builder: (BuildContext dialogContext) {
                    return AlertDialog(
                      backgroundColor: context.appColors.surfaceFixed,
                      title: Text(
                        context.loc.exchangeDcaCancelDialogTitle,
                        style: TextStyle(
                          color: context.appColors.onSurfaceFixed,
                        ),
                      ),
                      content: Text(
                        context.loc.exchangeDcaCancelDialogMessage,
                        style: TextStyle(
                          color: context.appColors.onSurfaceFixed,
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(dialogContext).pop();
                          },
                          child: Text(
                            context.loc.exchangeDcaCancelDialogCancelButton,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(dialogContext).pop();
                            context.read<ExchangeCubit>().stopDca();
                          },
                          child: Text(
                            context.loc.exchangeDcaCancelDialogConfirmButton,
                          ),
                        ),
                      ],
                    );
                  },
                );
              }
            },
          ),
        ],
      ),
      subtitle: _hasDcaActive && _showSettings
          ? Padding(
              padding: const EdgeInsets.only(top: 8),
              child: _buildDcaContent(_dca, context),
            )
          : null,
    );
  }
}
class DcaSettingsContent extends StatelessWidget {
  const DcaSettingsContent({
    super.key,
    required this.amount,
    required this.currency,
    required this.frequency,
    required this.network,
    required this.address,
  });

  final double amount;
  final FiatCurrency currency;
  final DcaBuyFrequency frequency;
  final DcaNetwork network;
  final String address;

  @override
  Widget build(BuildContext context) {
    final frequency = switch (this.frequency) {
      DcaBuyFrequency.hourly => context.loc.exchangeDcaFrequencyHour,
      DcaBuyFrequency.daily => context.loc.exchangeDcaFrequencyDay,
      DcaBuyFrequency.weekly => context.loc.exchangeDcaFrequencyWeek,
      DcaBuyFrequency.monthly => context.loc.exchangeDcaFrequencyMonth,
    };
    final network = switch (this.network) {
      DcaNetwork.bitcoin => context.loc.exchangeDcaNetworkBitcoin,
      DcaNetwork.lightning => context.loc.exchangeDcaNetworkLightning,
      DcaNetwork.liquid => context.loc.exchangeDcaNetworkLiquid,
    };
    final addressLabel = switch (this.network) {
      DcaNetwork.bitcoin => context.loc.exchangeDcaAddressLabelBitcoin,
      DcaNetwork.lightning => context.loc.exchangeDcaAddressLabelLightning,
      DcaNetwork.liquid => context.loc.exchangeDcaAddressLabelLiquid,
    };

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.loc.exchangeDcaSummaryMessage(
            FormatAmount.fiat(amount, currency.code),
            frequency,
            network,
          ),
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const Gap(8),
        Text(
          context.loc.exchangeDcaAddressDisplay(addressLabel, address),
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
