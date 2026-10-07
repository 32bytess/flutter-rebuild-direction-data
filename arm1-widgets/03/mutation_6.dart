// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  late WalletState state;

  WalletSchema? _wallet;

  @override
  void initState() {
    super.initState();
    application = applicationValue;
    state = makeWalletState();
    _wallet = fixtureSampleWallets.first;
  }

  @override
  Widget build(BuildContext context) {
    if (state is WalletLoaded) {
      // refresh balance
      List<WalletSchema> finds = (state as WalletLoaded).wallets
          .where((w) => w.address == this._wallet?.address)
          .toList();
      if (finds.isNotEmpty) {
        this._wallet = finds[0];
      }
      // else {
      //   if (Navigator.of(this.context).canPop()) Navigator.pop(this.context);
      // }
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (_wallet != null)
                Label(
                  Format.nknBalance(
                    _wallet?.balance ?? 0,
                    decimalDigits: 4,
                  ),
                  maxWidth: Settings.screenWidth() * 0.7,
                  type: LabelType.h1,
                  maxLines: 10,
                  softWrap: true,
                )
              else
                Label('--', type: LabelType.h1),
              Label(
                'NKN',
                type: LabelType.bodySmall,
                color: application.theme.fontColor1,
              ), // .pad(t: 4),
            ],
          ),
          if (_wallet?.type == WalletType.eth)
            Label(
              Format.nknBalance(
                _wallet?.balanceEth ?? 0,
                decimalDigits: 4,
              ),
              type: LabelType.bodySmall,
            ),
          if (_wallet?.type == WalletType.eth)
            Padding(
              padding: const EdgeInsets.only(left: 6, right: 2),
              child: Label(
                'ETH',
                type: LabelType.bodySmall,
                color: application.theme.fontColor1,
              ),
            ),
        ],
      ),
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
              textScaleFactor: textScaleFactor,
            ),
          )
        : Text(
            text,
            style: textStyle,
            textAlign: textAlign,
            maxLines: maxLines ?? defaultTextStyle.maxLines,
            softWrap: softWrap,
            overflow: overflow,
            textScaleFactor: textScaleFactor,
          );
  }
}