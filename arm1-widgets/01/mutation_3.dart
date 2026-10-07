import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  late WalletState state;
  late bool onlyNKN;

  @override
  void initState() {
    super.initState();
    application = applicationValue;
    state = fixtureWalletState;
    onlyNKN = fixtureOnlyNKN;
  }

  close({BuildContext? ctx, result}) {
    if (Navigator.of(ctx ?? this.context).canPop())
      Navigator.of(this.context).pop(result);
  }

  @override
  Widget build(BuildContext context) {
    if (state is WalletLoaded) {
      List<WalletSchema> wallets = onlyNKN
          ? (state as WalletLoaded).wallets
                .where((w) => w.type == WalletType.nkn)
                .toList()
          : (state as WalletLoaded).wallets;
      return ListView.builder(
        itemCount: wallets.length,
        itemBuilder: (BuildContext context, int index) {
          if (index < 0 || index >= wallets.length) return SizedBox.shrink();
          WalletSchema wallet = wallets[index];
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              WalletItem(
                walletType: wallet.type,
                wallet: wallet,
                bgColor: application.theme.backgroundLightColor,
                radius: BorderRadius.circular(0),
                onTap: () {
                  close(ctx: context, result: wallet);
                },
              ),
              Divider(height: 1, indent: 84, endIndent: 20),
            ],
          );
        },
      );
    }
    return SizedBox.shrink();
  }
}

class WalletItem extends StatelessWidget {
  final String walletType;
  final WalletSchema wallet;
  final GestureTapCallback? onTap;
  final bool onTapWave;
  final Color? bgColor;
  final BorderRadius? radius;
  final EdgeInsetsGeometry? padding;
  final Widget? tail;

  WalletItem({
    required this.walletType,
    required this.wallet,
    this.onTap,
    this.onTapWave = true,
    this.bgColor,
    this.radius,
    this.padding,
    this.tail,
  });

  @override
  Widget build(BuildContext context) {
    return this.onTap != null
        ? this.onTapWave
              ? Material(
                  color: this.bgColor,
                  elevation: 0,
                  borderRadius: this.radius,
                  child: InkWell(
                    borderRadius: this.radius,
                    onTap: this.onTap,
                    child: _getItemBody(context),
                  ),
                )
              : InkWell(
                  borderRadius: this.radius,
                  onTap: this.onTap,
                  child: _getItemBody(context),
                )
        : _getItemBody(context);
  }

  Widget _getItemBody(BuildContext context) {
    SkinTheme theme = application.theme;

    return Container(
      decoration: BoxDecoration(
        color: (this.onTap != null && this.onTapWave) ? null : this.bgColor,
        borderRadius: this.radius,
      ),
      padding: this.padding ?? EdgeInsets.only(left: 16, right: 16),
      child: Row(
        children: [
          WalletAvatar(
            width: 48,
            height: 48,
            walletType: this.walletType,
            padding: EdgeInsets.only(right: 20, top: 16, bottom: 16),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Label(this.wallet.name ?? "", type: LabelType.h3),
                Label(
                  Format.nknBalance(
                    this.wallet.balance,
                    decimalDigits: 4,
                    symbol: 'NKN',
                  ),
                  type: LabelType.bodySmall,
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(9)),
                  color: this.walletType == WalletType.eth
                      ? theme.ethLogoBackground.withAlpha(25)
                      : theme.successColor.withAlpha(25),
                ),
                child: Text(
                  this.walletType == WalletType.eth
                      ? Settings.locale((s) => s.ERC_20, ctx: context)
                      : Settings.locale((s) => s.mainnet, ctx: context),
                  style: TextStyle(
                    color: this.walletType == WalletType.eth
                        ? theme.ethLogoBackground
                        : theme.successColor,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
              ),
              this.walletType == WalletType.eth
                  ? Padding(
                      padding: EdgeInsets.only(right: 4, top: 4),
                      child: Label(
                        Format.nknBalance(
                          this.wallet.balanceEth,
                          symbol: 'ETH',
                        ),
                        type: LabelType.bodySmall,
                      ),
                    )
                  : SizedBox.shrink(),
            ],
          ),
          this.tail ?? Container(),
        ],
      ),
    );
  }
}

class WalletAvatar extends StatelessWidget {
  final double width;
  final double height;
  final String walletType;
  final EdgeInsetsGeometry padding;
  final double radius;
  final bool ethBig;
  final double ethWidth;
  final double ethHeight;
  final double ethTop;
  final double ethRight;

  WalletAvatar({
    this.width = 48,
    this.height = 48,
    this.walletType = WalletType.nkn,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
    this.radius = 8,
    this.ethBig = false,
    this.ethWidth = 20,
    this.ethHeight = 20,
    this.ethTop = 12,
    this.ethRight = 15,
  });

  @override
  Widget build(BuildContext context) {
    bool canEtgBig = this.walletType == WalletType.eth && this.ethBig;
    return Stack(
      children: [
        Padding(
          padding: this.padding,
          child: Container(
            width: this.width,
            height: this.height,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: application.theme.logoBackground,
              borderRadius: BorderRadius.all(Radius.circular(this.radius)),
            ),
            child: Asset.svg(
              canEtgBig ? 'ethereum-logo' : 'logo',
              color: canEtgBig
                  ? application.theme.ethLogoColor
                  : application.theme.nknLogoColor,
              width: canEtgBig ? this.ethWidth : null,
              height: canEtgBig ? this.ethHeight : null,
            ),
          ),
        ),
        this.walletType == WalletType.eth && !this.ethBig
            ? Positioned(
                top: this.ethTop,
                right: this.ethRight,
                child: Container(
                  width: this.ethWidth,
                  height: this.ethHeight,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: application.theme.ethLogoBackground,
                    shape: BoxShape.circle,
                  ),
                  child: Asset.svg('ethereum-logo'),
                ),
              )
            : SizedBox.shrink(),
      ],
    );
  }
}

class Label extends StatelessWidget {
  String text;
  final LabelType type;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final int? maxLines;
  final bool softWrap;
  TextOverflow? overflow;
  final bool dark;
  final double? height;
  final TextDecoration? decoration;
  final FontStyle? fontStyle;
  final double? textScaleFactor;
  final double? maxWidth;

  Label(
    this.text, {
    this.type = LabelType.label,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.maxLines,
    this.softWrap = false,
    this.overflow,
    this.dark = false,
    this.height,
    this.decoration,
    this.fontStyle,
    this.textScaleFactor = 1.0,
    this.maxWidth,
  }) {
    overflow ??= softWrap ? null : TextOverflow.ellipsis;
  }

  @override
  Widget build(BuildContext context) {
    final DefaultTextStyle defaultTextStyle = DefaultTextStyle.of(context);
    final theme = application.theme;
    TextStyle textStyle = defaultTextStyle.style;

    switch (type) {
      case LabelType.h1:
        textStyle = textStyle.merge(theme.headline1);
        break;
      case LabelType.h2:
        textStyle = textStyle.merge(theme.headline2);
        break;
      case LabelType.h3:
        textStyle = textStyle.merge(theme.headline3);
        break;
      case LabelType.h4:
        textStyle = textStyle.merge(theme.headline4);
        break;
      case LabelType.display:
        textStyle = textStyle.merge(theme.display);
        break;
      case LabelType.bodyLarge:
        textStyle = textStyle.merge(theme.bodyText1);
        break;
      case LabelType.bodyRegular:
        textStyle = textStyle.merge(theme.bodyText2);
        break;
      case LabelType.bodySmall:
        textStyle = textStyle.merge(theme.bodyText3);
        break;
      case LabelType.label:
        text = text.toUpperCase();
        textStyle = textStyle
            .merge(theme.display)
            .copyWith(fontWeight: FontWeight.bold);
        break;
      default:
        break;
    }

    if (color != null) {
      textStyle = textStyle.copyWith(color: color);
    }

    if (fontSize != null) {
      textStyle = textStyle.copyWith(fontSize: fontSize);
    }

    if (fontWeight != null) {
      textStyle = textStyle.copyWith(fontWeight: fontWeight);
    }

    if (dark) {
      textStyle = textStyle.copyWith(color: theme.fontLightColor);
    }

    if (height != null) {
      textStyle = textStyle.copyWith(height: height);
    }

    if (decoration != null) {
      textStyle = textStyle.copyWith(decoration: decoration);
    }

    if (fontStyle != null) {
      textStyle = textStyle.copyWith(fontStyle: fontStyle);
    }

    return this.maxWidth != null
        ? ConstrainedBox(
            constraints: BoxConstraints(maxWidth: this.maxWidth!),
            child: Text(
              text,
              style: textStyle,
              textAlign: textAlign,
              maxLines: maxLines ?? defaultTextStyle.maxLines,
              softWrap: softWrap,
              overflow: overflow,
            ),
          )
        : Text(
            text,
            style: textStyle,
            textAlign: textAlign,
            maxLines: maxLines ?? defaultTextStyle.maxLines,
            softWrap: softWrap,
            overflow: overflow,
          );
  }
}