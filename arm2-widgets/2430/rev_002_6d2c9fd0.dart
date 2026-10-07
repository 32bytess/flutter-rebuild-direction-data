// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'dart:math';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
part 'dependencies.dart';


class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  late final Color cardColor;

  @override
  void initState() {
    super.initState();
    cardColor = fixtureCardColor;
    currentColor = fixtureCurrentColor;
  }

  late Color? currentColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AlertDialog(
      title: Text(
        'Card color',
        style: theme.textTheme.bodyLarge?.copyWith(
          color: theme.colorScheme.inverseSurface,
          fontSize: 30,
        ),
      ),
      content: SingleChildScrollView(
        child: ColorPicker(
          labelTypes: const [ColorLabelType.rgb],
          displayThumbColor: true,
          hexInputBar: true,
          pickerAreaBorderRadius: BorderRadius.circular(10.0),
          paletteType: PaletteType.hsv,
          enableAlpha: false,
          pickerColor: currentColor!,
          portraitOnly: true,
          onColorChanged: (value) {
            /* spm: non-rebuild body erased */
          },
        ),
      ),
      actions: <Widget>[
        Center(
          child: OutlinedButton(
            onPressed: () {
              /* spm: non-rebuild body erased */
            },
            style: OutlinedButton.styleFrom(
              elevation: 0.0,
              side: BorderSide(color: theme.colorScheme.primary, width: 2.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(11),
              ),
            ),
            child: Text(
              'Got it',
              style: theme.textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: theme.colorScheme.tertiary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/// The default layout of Color Picker.
class ColorPicker extends StatefulWidget {
  const ColorPicker({
    Key? key,
    required this.pickerColor,
    required this.onColorChanged,
    this.pickerHsvColor,
    this.onHsvColorChanged,
    this.paletteType = PaletteType.hsvWithHue,
    this.enableAlpha = true,
    @Deprecated('Use empty list in [labelTypes] to disable label.')
    this.showLabel = true,
    this.labelTypes = const [
      ColorLabelType.rgb,
      ColorLabelType.hsv,
      ColorLabelType.hsl,
    ],
    @Deprecated(
      'Use Theme.of(context).textTheme.bodyText1 & 2 to alter text style.',
    )
    this.labelTextStyle,
    this.displayThumbColor = false,
    this.portraitOnly = false,
    this.colorPickerWidth = 300.0,
    this.pickerAreaHeightPercent = 1.0,
    this.pickerAreaBorderRadius = const BorderRadius.all(Radius.zero),
    this.hexInputBar = false,
    this.hexInputController,
    this.colorHistory,
    this.onHistoryChanged,
  }) : super(key: key);

  final Color pickerColor;
  final ValueChanged<Color> onColorChanged;
  final HSVColor? pickerHsvColor;
  final ValueChanged<HSVColor>? onHsvColorChanged;
  final PaletteType paletteType;
  final bool enableAlpha;
  final bool showLabel;
  final List<ColorLabelType> labelTypes;
  final TextStyle? labelTextStyle;
  final bool displayThumbColor;
  final bool portraitOnly;
  final double colorPickerWidth;
  final double pickerAreaHeightPercent;
  final BorderRadius pickerAreaBorderRadius;
  final bool hexInputBar;

  /// Allows setting the color using text input, via [TextEditingController].
  ///
  /// Listens to [String] input and trying to convert it to the valid [Color].
  /// Contains basic validator, that requires final input to be provided
  /// in one of those formats:
  ///
  /// * RGB
  /// * #RGB
  /// * RRGGBB
  /// * #RRGGBB
  /// * AARRGGBB
  /// * #AARRGGBB
  ///
  /// Where: A stands for Alpha, R for Red, G for Green, and B for blue color.
  /// It will only accept 3/6/8 long HEXs with an optional hash (`#`) at the beginning.
  /// Allowed characters are Latin A-F case insensitive and numbers 0-9.
  /// It does respect the [enableAlpha] flag, so if alpha is disabled, all inputs
  /// with transparency are also converted to non-transparent color values.
  /// ```dart
  ///   MaterialButton(
  ///    elevation: 3.0,
  ///    onPressed: () {
  ///      // The initial value can be provided directly to the controller.
  ///      final textController =
  ///          TextEditingController(text: '#2F19DB');
  ///      showDialog(
  ///        context: context,
  ///        builder: (BuildContext context) {
  ///          return AlertDialog(
  ///            scrollable: true,
  ///            titlePadding: const EdgeInsets.all(0.0),
  ///            contentPadding: const EdgeInsets.all(0.0),
  ///            content: Column(
  ///              children: [
  ///                ColorPicker(
  ///                  pickerColor: currentColor,
  ///                  onColorChanged: changeColor,
  ///                  colorPickerWidth: 300.0,
  ///                  pickerAreaHeightPercent: 0.7,
  ///                  enableAlpha:
  ///                      true, // hexInputController will respect it too.
  ///                  displayThumbColor: true,
  ///                  showLabel: true,
  ///                  paletteType: PaletteType.hsv,
  ///                  pickerAreaBorderRadius: const BorderRadius.only(
  ///                    topLeft: const Radius.circular(2.0),
  ///                    topRight: const Radius.circular(2.0),
  ///                  ),
  ///                  hexInputController: textController, // <- here
  ///                  portraitOnly: true,
  ///                ),
  ///                Padding(
  ///                  padding: const EdgeInsets.all(16),
  ///                  /* It can be any text field, for example:
  ///                  * TextField
  ///                  * TextFormField
  ///                  * CupertinoTextField
  ///                  * EditableText
  ///                  * any text field from 3-rd party package
  ///                  * your own text field
  ///                  so basically anything that supports/uses
  ///                  a TextEditingController for an editable text.
  ///                  */
  ///                  child: CupertinoTextField(
  ///                    controller: textController,
  ///                    // Everything below is purely optional.
  ///                    prefix: Padding(
  ///                      padding: const EdgeInsets.only(left: 8),
  ///                      child: const Icon(Icons.tag),
  ///                    ),
  ///                    suffix: IconButton(
  ///                      icon:
  ///                          const Icon(Icons.content_paste_rounded),
  ///                      onPressed: () async =>
  ///                          copyToClipboard(textController.text),
  ///                    ),
  ///                    autofocus: true,
  ///                    maxLength: 9,
  ///                    inputFormatters: [
  ///                      // Any custom input formatter can be passed
  ///                      // here or use any Form validator you want.
  ///                      UpperCaseTextFormatter(),
  ///                      FilteringTextInputFormatter.allow(
  ///                          RegExp(kValidHexPattern)),
  ///                    ],
  ///                  ),
  ///                )
  ///              ],
  ///            ),
  ///          );
  ///        },
  ///      );
  ///    },
  ///    child: const Text('Change me via text input'),
  ///    color: currentColor,
  ///    textColor: useWhiteForeground(currentColor)
  ///        ? const Color(0xffffffff)
  ///        : const Color(0xff000000),
  ///  ),
  /// ```
  ///
  /// Do not forget to `dispose()` your [TextEditingController] if you creating
  /// it inside any kind of [StatefulWidget]'s [State].
  /// Reference: https://en.wikipedia.org/wiki/Web_colors#Hex_triplet
  final TextEditingController? hexInputController;
  final List<Color>? colorHistory;
  final ValueChanged<List<Color>>? onHistoryChanged;

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  HSVColor currentHsvColor = const HSVColor.fromAHSV(0.0, 0.0, 0.0, 0.0);
  List<Color> colorHistory = [];

  @override
  void initState() {
    currentHsvColor = (widget.pickerHsvColor != null)
        ? widget.pickerHsvColor as HSVColor
        : HSVColor.fromColor(widget.pickerColor);
    // If there's no initial text in `hexInputController`,
    if (widget.hexInputController?.text.isEmpty == true) {
      // set it to the current's color HEX value.
      widget.hexInputController?.text = colorToHex(
        currentHsvColor.toColor(),
        enableAlpha: widget.enableAlpha,
      );
    }
    // Listen to the text input, If there is an `hexInputController` provided.
    widget.hexInputController?.addListener(colorPickerTextInputListener);
    if (widget.colorHistory != null && widget.onHistoryChanged != null) {
      colorHistory = widget.colorHistory ?? [];
    }
    super.initState();
  }

  @override
  void didUpdateWidget(ColorPicker oldWidget) {
    super.didUpdateWidget(oldWidget);
    currentHsvColor = (widget.pickerHsvColor != null)
        ? widget.pickerHsvColor as HSVColor
        : HSVColor.fromColor(widget.pickerColor);
  }

  void colorPickerTextInputListener() {
    // It can't be null really, since it's only listening if the controller
    // is provided, but it may help to calm the Dart analyzer in the future.
    if (widget.hexInputController == null) return;
    // If a user is inserting/typing any text — try to get the color value from it,
    // and interpret its transparency, dependent on the widget's settings.
    final Color? color = colorFromHex(
      widget.hexInputController!.text,
      enableAlpha: widget.enableAlpha,
    );
    // If it's the valid color:
    if (color != null) {
      // set it as the current color and
      setState(() => currentHsvColor = HSVColor.fromColor(color));
      // notify with a callback.
      widget.onColorChanged(color);
      if (widget.onHsvColorChanged != null)
        widget.onHsvColorChanged!(currentHsvColor);
    }
  }

  @override
  void dispose() {
    widget.hexInputController?.removeListener(colorPickerTextInputListener);
    super.dispose();
  }

  Widget colorPickerSlider(TrackType trackType) {
    return ColorPickerSlider(trackType, currentHsvColor, (HSVColor color) {
      // Update text in `hexInputController` if provided.
      widget.hexInputController?.text = colorToHex(
        color.toColor(),
        enableAlpha: widget.enableAlpha,
      );
      setState(() => currentHsvColor = color);
      widget.onColorChanged(currentHsvColor.toColor());
      if (widget.onHsvColorChanged != null)
        widget.onHsvColorChanged!(currentHsvColor);
    }, displayThumbColor: widget.displayThumbColor);
  }

  void onColorChanging(HSVColor color) {
    // Update text in `hexInputController` if provided.
    widget.hexInputController?.text = colorToHex(
      color.toColor(),
      enableAlpha: widget.enableAlpha,
    );
    setState(() => currentHsvColor = color);
    widget.onColorChanged(currentHsvColor.toColor());
    if (widget.onHsvColorChanged != null)
      widget.onHsvColorChanged!(currentHsvColor);
  }

  Widget colorPicker() {
    return ClipRRect(
      borderRadius: widget.pickerAreaBorderRadius,
      child: Padding(
        padding: EdgeInsets.all(
          widget.paletteType == PaletteType.hueWheel ? 10 : 0,
        ),
        child: ColorPickerArea(
          currentHsvColor,
          onColorChanging,
          widget.paletteType,
        ),
      ),
    );
  }

  Widget sliderByPaletteType() {
    switch (widget.paletteType) {
      case PaletteType.hsv:
      case PaletteType.hsvWithHue:
      case PaletteType.hsl:
      case PaletteType.hslWithHue:
        return colorPickerSlider(TrackType.hue);
      case PaletteType.hsvWithValue:
      case PaletteType.hueWheel:
        return colorPickerSlider(TrackType.value);
      case PaletteType.hsvWithSaturation:
        return colorPickerSlider(TrackType.saturation);
      case PaletteType.hslWithLightness:
        return colorPickerSlider(TrackType.lightness);
      case PaletteType.hslWithSaturation:
        return colorPickerSlider(TrackType.saturationForHSL);
      case PaletteType.rgbWithBlue:
        return colorPickerSlider(TrackType.blue);
      case PaletteType.rgbWithGreen:
        return colorPickerSlider(TrackType.green);
      case PaletteType.rgbWithRed:
        return colorPickerSlider(TrackType.red);
      default:
        return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait ||
        widget.portraitOnly) {
      return Column(
        children: <Widget>[
          SizedBox(
            width: widget.colorPickerWidth,
            height: widget.colorPickerWidth * widget.pickerAreaHeightPercent,
            child: colorPicker(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 5.0, 10.0, 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    /* spm: non-rebuild body erased */
                  },
                  child: ColorIndicator(currentHsvColor),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 40.0,
                        width: widget.colorPickerWidth - 75.0,
                        child: sliderByPaletteType(),
                      ),
                      if (widget.enableAlpha)
                        SizedBox(
                          height: 40.0,
                          width: widget.colorPickerWidth - 75.0,
                          child: colorPickerSlider(TrackType.alpha),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (colorHistory.isNotEmpty)
            SizedBox(
              width: widget.colorPickerWidth,
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  for (Color color in colorHistory)
                    Padding(
                      key: Key(color.hashCode.toString()),
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 10),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            /* spm: non-rebuild body erased */
                          },
                          child: ColorIndicator(
                            HSVColor.fromColor(color),
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ),
                    ),
                  const SizedBox(width: 15),
                ],
              ),
            ),
          if (widget.showLabel && widget.labelTypes.isNotEmpty)
            FittedBox(
              child: ColorPickerLabel(
                currentHsvColor,
                enableAlpha: widget.enableAlpha,
                textStyle: widget.labelTextStyle,
                colorLabelTypes: widget.labelTypes,
              ),
            ),
          if (widget.hexInputBar)
            ColorPickerInput(
              currentHsvColor.toColor(),
              (Color color) {
                setState(() => currentHsvColor = HSVColor.fromColor(color));
                widget.onColorChanged(currentHsvColor.toColor());
                if (widget.onHsvColorChanged != null)
                  widget.onHsvColorChanged!(currentHsvColor);
              },
              enableAlpha: widget.enableAlpha,
              embeddedText: false,
            ),
          const SizedBox(height: 20.0),
        ],
      );
    } else {
      return Row(
        children: <Widget>[
          SizedBox(
            width: widget.colorPickerWidth,
            height: widget.colorPickerWidth * widget.pickerAreaHeightPercent,
            child: colorPicker(),
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  const SizedBox(width: 20.0),
                  GestureDetector(
                    onTap: () {
                      /* spm: non-rebuild body erased */
                    },
                    child: ColorIndicator(currentHsvColor),
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 40.0,
                        width: 260.0,
                        child: sliderByPaletteType(),
                      ),
                      if (widget.enableAlpha)
                        SizedBox(
                          height: 40.0,
                          width: 260.0,
                          child: colorPickerSlider(TrackType.alpha),
                        ),
                    ],
                  ),
                  const SizedBox(width: 10.0),
                ],
              ),
              if (colorHistory.isNotEmpty)
                SizedBox(
                  width: widget.colorPickerWidth,
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      for (Color color in colorHistory)
                        Padding(
                          key: Key(color.hashCode.toString()),
                          padding: const EdgeInsets.fromLTRB(15, 18, 0, 0),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                /* spm: non-rebuild body erased */
                              },
                              onLongPress: () {
                                /* spm: non-rebuild body erased */
                              },
                              child: ColorIndicator(
                                HSVColor.fromColor(color),
                                width: 30,
                                height: 30,
                              ),
                            ),
                          ),
                        ),
                      const SizedBox(width: 15),
                    ],
                  ),
                ),
              const SizedBox(height: 20.0),
              if (widget.showLabel && widget.labelTypes.isNotEmpty)
                FittedBox(
                  child: ColorPickerLabel(
                    currentHsvColor,
                    enableAlpha: widget.enableAlpha,
                    textStyle: widget.labelTextStyle,
                    colorLabelTypes: widget.labelTypes,
                  ),
                ),
              if (widget.hexInputBar)
                ColorPickerInput(
                  currentHsvColor.toColor(),
                  (Color color) {
                    setState(() => currentHsvColor = HSVColor.fromColor(color));
                    widget.onColorChanged(currentHsvColor.toColor());
                    if (widget.onHsvColorChanged != null)
                      widget.onHsvColorChanged!(currentHsvColor);
                  },
                  enableAlpha: widget.enableAlpha,
                  embeddedText: false,
                ),
              const SizedBox(height: 5),
            ],
          ),
        ],
      );
    }
  }
}

/// 9 track types for slider picker widget.
class ColorPickerSlider extends StatelessWidget {
  const ColorPickerSlider(
    this.trackType,
    this.hsvColor,
    this.onColorChanged, {
    Key? key,
    this.displayThumbColor = false,
    this.fullThumbColor = false,
  }) : super(key: key);

  final TrackType trackType;
  final HSVColor hsvColor;
  final ValueChanged<HSVColor> onColorChanged;
  final bool displayThumbColor;
  final bool fullThumbColor;

  void slideEvent(RenderBox getBox, BoxConstraints box, Offset globalPosition) {
    double localDx = getBox.globalToLocal(globalPosition).dx - 15.0;
    double progress =
        localDx.clamp(0.0, box.maxWidth - 30.0) / (box.maxWidth - 30.0);
    switch (trackType) {
      case TrackType.hue:
        // 360 is the same as zero
        // if set to 360, sliding to end goes to zero
        onColorChanged(hsvColor.withHue(progress * 359));
        break;
      case TrackType.saturation:
        onColorChanged(hsvColor.withSaturation(progress));
        break;
      case TrackType.saturationForHSL:
        onColorChanged(hslToHsv(hsvToHsl(hsvColor).withSaturation(progress)));
        break;
      case TrackType.value:
        onColorChanged(hsvColor.withValue(progress));
        break;
      case TrackType.lightness:
        onColorChanged(hslToHsv(hsvToHsl(hsvColor).withLightness(progress)));
        break;
      case TrackType.red:
        onColorChanged(
          HSVColor.fromColor(
            hsvColor.toColor().withRed((progress * 0xff).round()),
          ),
        );
        break;
      case TrackType.green:
        onColorChanged(
          HSVColor.fromColor(
            hsvColor.toColor().withGreen((progress * 0xff).round()),
          ),
        );
        break;
      case TrackType.blue:
        onColorChanged(
          HSVColor.fromColor(
            hsvColor.toColor().withBlue((progress * 0xff).round()),
          ),
        );
        break;
      case TrackType.alpha:
        onColorChanged(
          hsvColor.withAlpha(
            localDx.clamp(0.0, box.maxWidth - 30.0) / (box.maxWidth - 30.0),
          ),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints box) {
        double thumbOffset = 15.0;
        Color thumbColor;
        switch (trackType) {
          case TrackType.hue:
            thumbOffset += (box.maxWidth - 30.0) * hsvColor.hue / 360;
            thumbColor = HSVColor.fromAHSV(
              1.0,
              hsvColor.hue,
              1.0,
              1.0,
            ).toColor();
            break;
          case TrackType.saturation:
            thumbOffset += (box.maxWidth - 30.0) * hsvColor.saturation;
            thumbColor = HSVColor.fromAHSV(
              1.0,
              hsvColor.hue,
              hsvColor.saturation,
              1.0,
            ).toColor();
            break;
          case TrackType.saturationForHSL:
            thumbOffset +=
                (box.maxWidth - 30.0) * hsvToHsl(hsvColor).saturation;
            thumbColor = HSLColor.fromAHSL(
              1.0,
              hsvColor.hue,
              hsvToHsl(hsvColor).saturation,
              0.5,
            ).toColor();
            break;
          case TrackType.value:
            thumbOffset += (box.maxWidth - 30.0) * hsvColor.value;
            thumbColor = HSVColor.fromAHSV(
              1.0,
              hsvColor.hue,
              1.0,
              hsvColor.value,
            ).toColor();
            break;
          case TrackType.lightness:
            thumbOffset += (box.maxWidth - 30.0) * hsvToHsl(hsvColor).lightness;
            thumbColor = HSLColor.fromAHSL(
              1.0,
              hsvColor.hue,
              1.0,
              hsvToHsl(hsvColor).lightness,
            ).toColor();
            break;
          case TrackType.red:
            thumbOffset +=
                (box.maxWidth - 30.0) * hsvColor.toColor().red / 0xff;
            thumbColor = hsvColor.toColor().withOpacity(1.0);
            break;
          case TrackType.green:
            thumbOffset +=
                (box.maxWidth - 30.0) * hsvColor.toColor().green / 0xff;
            thumbColor = hsvColor.toColor().withOpacity(1.0);
            break;
          case TrackType.blue:
            thumbOffset +=
                (box.maxWidth - 30.0) * hsvColor.toColor().blue / 0xff;
            thumbColor = hsvColor.toColor().withOpacity(1.0);
            break;
          case TrackType.alpha:
            thumbOffset += (box.maxWidth - 30.0) * hsvColor.toColor().opacity;
            thumbColor = hsvColor.toColor().withOpacity(hsvColor.alpha);
            break;
        }

        return CustomMultiChildLayout(
          delegate: _SliderLayout(),
          children: <Widget>[
            LayoutId(
              id: _SliderLayout.track,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                child: CustomPaint(painter: TrackPainter(trackType, hsvColor)),
              ),
            ),
            LayoutId(
              id: _SliderLayout.thumb,
              child: Transform.translate(
                offset: Offset(thumbOffset, 0.0),
                child: CustomPaint(
                  painter: ThumbPainter(
                    thumbColor: displayThumbColor ? thumbColor : null,
                    fullThumbColor: fullThumbColor,
                  ),
                ),
              ),
            ),
            LayoutId(
              id: _SliderLayout.gestureContainer,
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints box) {
                  RenderBox? getBox = context.findRenderObject() as RenderBox?;
                  return GestureDetector(
                    onPanDown: (DragDownDetails details) {
                      /* spm: non-rebuild body erased */
                    },
                    onPanUpdate: (DragUpdateDetails details) {
                      /* spm: non-rebuild body erased */
                    },
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class _SliderLayout extends MultiChildLayoutDelegate {
  static const String track = 'track';
  static const String thumb = 'thumb';
  static const String gestureContainer = 'gesturecontainer';

  @override
  void performLayout(Size size) {
    layoutChild(
      track,
      BoxConstraints.tightFor(
        width: size.width - 30.0,
        height: size.height / 5,
      ),
    );
    positionChild(track, Offset(15.0, size.height * 0.4));
    layoutChild(
      thumb,
      BoxConstraints.tightFor(width: 5.0, height: size.height / 4),
    );
    positionChild(thumb, Offset(0.0, size.height * 0.4));
    layoutChild(
      gestureContainer,
      BoxConstraints.tightFor(width: size.width, height: size.height),
    );
    positionChild(gestureContainer, Offset.zero);
  }

  @override
  bool shouldRelayout(_SliderLayout oldDelegate) => false;
}

/// Painter for all kinds of track types.
class TrackPainter extends CustomPainter {
  const TrackPainter(this.trackType, this.hsvColor);

  final TrackType trackType;
  final HSVColor hsvColor;

  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Offset.zero & size;
    if (trackType == TrackType.alpha) {
      final Size chessSize = Size(size.height / 2, size.height / 2);
      Paint chessPaintB = Paint()..color = const Color(0xffcccccc);
      Paint chessPaintW = Paint()..color = Colors.white;
      List.generate((size.height / chessSize.height).round(), (int y) {
        List.generate((size.width / chessSize.width).round(), (int x) {
          canvas.drawRect(
            Offset(chessSize.width * x, chessSize.width * y) & chessSize,
            (x + y) % 2 != 0 ? chessPaintW : chessPaintB,
          );
        });
      });
    }

    switch (trackType) {
      case TrackType.hue:
        final List<Color> colors = [
          const HSVColor.fromAHSV(1.0, 0.0, 1.0, 1.0).toColor(),
          const HSVColor.fromAHSV(1.0, 60.0, 1.0, 1.0).toColor(),
          const HSVColor.fromAHSV(1.0, 120.0, 1.0, 1.0).toColor(),
          const HSVColor.fromAHSV(1.0, 180.0, 1.0, 1.0).toColor(),
          const HSVColor.fromAHSV(1.0, 240.0, 1.0, 1.0).toColor(),
          const HSVColor.fromAHSV(1.0, 300.0, 1.0, 1.0).toColor(),
          const HSVColor.fromAHSV(1.0, 360.0, 1.0, 1.0).toColor(),
        ];
        Gradient gradient = LinearGradient(colors: colors);
        canvas.drawRect(rect, Paint()..shader = gradient.createShader(rect));
        break;
      case TrackType.saturation:
        final List<Color> colors = [
          HSVColor.fromAHSV(1.0, hsvColor.hue, 0.0, 1.0).toColor(),
          HSVColor.fromAHSV(1.0, hsvColor.hue, 1.0, 1.0).toColor(),
        ];
        Gradient gradient = LinearGradient(colors: colors);
        canvas.drawRect(rect, Paint()..shader = gradient.createShader(rect));
        break;
      case TrackType.saturationForHSL:
        final List<Color> colors = [
          HSLColor.fromAHSL(1.0, hsvColor.hue, 0.0, 0.5).toColor(),
          HSLColor.fromAHSL(1.0, hsvColor.hue, 1.0, 0.5).toColor(),
        ];
        Gradient gradient = LinearGradient(colors: colors);
        canvas.drawRect(rect, Paint()..shader = gradient.createShader(rect));
        break;
      case TrackType.value:
        final List<Color> colors = [
          HSVColor.fromAHSV(1.0, hsvColor.hue, 1.0, 0.0).toColor(),
          HSVColor.fromAHSV(1.0, hsvColor.hue, 1.0, 1.0).toColor(),
        ];
        Gradient gradient = LinearGradient(colors: colors);
        canvas.drawRect(rect, Paint()..shader = gradient.createShader(rect));
        break;
      case TrackType.lightness:
        final List<Color> colors = [
          HSLColor.fromAHSL(1.0, hsvColor.hue, 1.0, 0.0).toColor(),
          HSLColor.fromAHSL(1.0, hsvColor.hue, 1.0, 0.5).toColor(),
          HSLColor.fromAHSL(1.0, hsvColor.hue, 1.0, 1.0).toColor(),
        ];
        Gradient gradient = LinearGradient(colors: colors);
        canvas.drawRect(rect, Paint()..shader = gradient.createShader(rect));
        break;
      case TrackType.red:
        final List<Color> colors = [
          hsvColor.toColor().withRed(0).withOpacity(1.0),
          hsvColor.toColor().withRed(255).withOpacity(1.0),
        ];
        Gradient gradient = LinearGradient(colors: colors);
        canvas.drawRect(rect, Paint()..shader = gradient.createShader(rect));
        break;
      case TrackType.green:
        final List<Color> colors = [
          hsvColor.toColor().withGreen(0).withOpacity(1.0),
          hsvColor.toColor().withGreen(255).withOpacity(1.0),
        ];
        Gradient gradient = LinearGradient(colors: colors);
        canvas.drawRect(rect, Paint()..shader = gradient.createShader(rect));
        break;
      case TrackType.blue:
        final List<Color> colors = [
          hsvColor.toColor().withBlue(0).withOpacity(1.0),
          hsvColor.toColor().withBlue(255).withOpacity(1.0),
        ];
        Gradient gradient = LinearGradient(colors: colors);
        canvas.drawRect(rect, Paint()..shader = gradient.createShader(rect));
        break;
      case TrackType.alpha:
        final List<Color> colors = [
          hsvColor.toColor().withOpacity(0.0),
          hsvColor.toColor().withOpacity(1.0),
        ];
        Gradient gradient = LinearGradient(colors: colors);
        canvas.drawRect(rect, Paint()..shader = gradient.createShader(rect));
        break;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

/// Painter for thumb of slider.
class ThumbPainter extends CustomPainter {
  const ThumbPainter({this.thumbColor, this.fullThumbColor = false});

  final Color? thumbColor;
  final bool fullThumbColor;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawShadow(
      Path()..addOval(
        Rect.fromCircle(
          center: const Offset(0.5, 2.0),
          radius: size.width * 1.8,
        ),
      ),
      Colors.black,
      3.0,
      true,
    );
    canvas.drawCircle(
      Offset(0.0, size.height * 0.4),
      size.height,
      Paint()
        ..color = Colors.white
        ..style = PaintingStyle.fill,
    );
    if (thumbColor != null) {
      canvas.drawCircle(
        Offset(0.0, size.height * 0.4),
        size.height * (fullThumbColor ? 1.0 : 0.65),
        Paint()
          ..color = thumbColor!
          ..style = PaintingStyle.fill,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

/// Provide Rectangle & Circle 2 categories, 10 variations of palette widget.
class ColorPickerArea extends StatelessWidget {
  const ColorPickerArea(
    this.hsvColor,
    this.onColorChanged,
    this.paletteType, {
    Key? key,
  }) : super(key: key);

  final HSVColor hsvColor;
  final ValueChanged<HSVColor> onColorChanged;
  final PaletteType paletteType;

  void _handleColorRectChange(double horizontal, double vertical) {
    switch (paletteType) {
      case PaletteType.hsv:
      case PaletteType.hsvWithHue:
        onColorChanged(hsvColor.withSaturation(horizontal).withValue(vertical));
        break;
      case PaletteType.hsvWithSaturation:
        onColorChanged(hsvColor.withHue(horizontal * 360).withValue(vertical));
        break;
      case PaletteType.hsvWithValue:
        onColorChanged(
          hsvColor.withHue(horizontal * 360).withSaturation(vertical),
        );
        break;
      case PaletteType.hsl:
      case PaletteType.hslWithHue:
        onColorChanged(
          hslToHsv(
            hsvToHsl(
              hsvColor,
            ).withSaturation(horizontal).withLightness(vertical),
          ),
        );
        break;
      case PaletteType.hslWithSaturation:
        onColorChanged(
          hslToHsv(
            hsvToHsl(
              hsvColor,
            ).withHue(horizontal * 360).withLightness(vertical),
          ),
        );
        break;
      case PaletteType.hslWithLightness:
        onColorChanged(
          hslToHsv(
            hsvToHsl(
              hsvColor,
            ).withHue(horizontal * 360).withSaturation(vertical),
          ),
        );
        break;
      case PaletteType.rgbWithRed:
        onColorChanged(
          HSVColor.fromColor(
            hsvColor
                .toColor()
                .withBlue((horizontal * 255).round())
                .withGreen((vertical * 255).round()),
          ),
        );
        break;
      case PaletteType.rgbWithGreen:
        onColorChanged(
          HSVColor.fromColor(
            hsvColor
                .toColor()
                .withBlue((horizontal * 255).round())
                .withRed((vertical * 255).round()),
          ),
        );
        break;
      case PaletteType.rgbWithBlue:
        onColorChanged(
          HSVColor.fromColor(
            hsvColor
                .toColor()
                .withRed((horizontal * 255).round())
                .withGreen((vertical * 255).round()),
          ),
        );
        break;
      default:
        break;
    }
  }

  void _handleColorWheelChange(double hue, double radio) {
    onColorChanged(hsvColor.withHue(hue).withSaturation(radio));
  }

  void _handleGesture(
    Offset position,
    BuildContext context,
    double height,
    double width,
  ) {
    RenderBox? getBox = context.findRenderObject() as RenderBox?;
    if (getBox == null) return;

    Offset localOffset = getBox.globalToLocal(position);
    double horizontal = localOffset.dx.clamp(0.0, width);
    double vertical = localOffset.dy.clamp(0.0, height);

    if (paletteType == PaletteType.hueWheel) {
      Offset center = Offset(width / 2, height / 2);
      double radio = width <= height ? width / 2 : height / 2;
      double dist =
          sqrt(pow(horizontal - center.dx, 2) + pow(vertical - center.dy, 2)) /
          radio;
      double rad =
          (atan2(horizontal - center.dx, vertical - center.dy) / pi + 1) /
          2 *
          360;
      _handleColorWheelChange(
        ((rad + 90) % 360).clamp(0, 360),
        dist.clamp(0, 1),
      );
    } else {
      _handleColorRectChange(horizontal / width, 1 - vertical / height);
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double width = constraints.maxWidth;
        double height = constraints.maxHeight;

        return RawGestureDetector(
          gestures: {
            _AlwaysWinPanGestureRecognizer:
                GestureRecognizerFactoryWithHandlers<
                  _AlwaysWinPanGestureRecognizer
                >(() => _AlwaysWinPanGestureRecognizer(), (
                  _AlwaysWinPanGestureRecognizer instance,
                ) {
                  instance
                    ..onDown = ((details) => _handleGesture(
                      details.globalPosition,
                      context,
                      height,
                      width,
                    ))
                    ..onUpdate = ((details) => _handleGesture(
                      details.globalPosition,
                      context,
                      height,
                      width,
                    ));
                }),
          },
          child: Builder(
            builder: (BuildContext _) {
              switch (paletteType) {
                case PaletteType.hsv:
                case PaletteType.hsvWithHue:
                  return CustomPaint(painter: HSVWithHueColorPainter(hsvColor));
                case PaletteType.hsvWithSaturation:
                  return CustomPaint(
                    painter: HSVWithSaturationColorPainter(hsvColor),
                  );
                case PaletteType.hsvWithValue:
                  return CustomPaint(
                    painter: HSVWithValueColorPainter(hsvColor),
                  );
                case PaletteType.hsl:
                case PaletteType.hslWithHue:
                  return CustomPaint(
                    painter: HSLWithHueColorPainter(hsvToHsl(hsvColor)),
                  );
                case PaletteType.hslWithSaturation:
                  return CustomPaint(
                    painter: HSLWithSaturationColorPainter(hsvToHsl(hsvColor)),
                  );
                case PaletteType.hslWithLightness:
                  return CustomPaint(
                    painter: HSLWithLightnessColorPainter(hsvToHsl(hsvColor)),
                  );
                case PaletteType.rgbWithRed:
                  return CustomPaint(
                    painter: RGBWithRedColorPainter(hsvColor.toColor()),
                  );
                case PaletteType.rgbWithGreen:
                  return CustomPaint(
                    painter: RGBWithGreenColorPainter(hsvColor.toColor()),
                  );
                case PaletteType.rgbWithBlue:
                  return CustomPaint(
                    painter: RGBWithBlueColorPainter(hsvColor.toColor()),
                  );
                case PaletteType.hueWheel:
                  return CustomPaint(painter: HUEColorWheelPainter(hsvColor));
                default:
                  return const CustomPaint();
              }
            },
          ),
        );
      },
    );
  }
}

class _AlwaysWinPanGestureRecognizer extends PanGestureRecognizer {
  @override
  void addAllowedPointer(event) {
    super.addAllowedPointer(event);
    resolve(GestureDisposition.accepted);
  }

  @override
  String get debugDescription => 'alwaysWin';
}

/// Painter for SV mixture.
class HSVWithHueColorPainter extends CustomPainter {
  const HSVWithHueColorPainter(this.hsvColor, {this.pointerColor});

  final HSVColor hsvColor;
  final Color? pointerColor;

  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Offset.zero & size;
    const Gradient gradientV = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Colors.white, Colors.black],
    );
    final Gradient gradientH = LinearGradient(
      colors: [
        Colors.white,
        HSVColor.fromAHSV(1.0, hsvColor.hue, 1.0, 1.0).toColor(),
      ],
    );
    canvas.drawRect(rect, Paint()..shader = gradientV.createShader(rect));
    canvas.drawRect(
      rect,
      Paint()
        ..blendMode = BlendMode.multiply
        ..shader = gradientH.createShader(rect),
    );

    canvas.drawCircle(
      Offset(
        size.width * hsvColor.saturation,
        size.height * (1 - hsvColor.value),
      ),
      size.height * 0.04,
      Paint()
        ..color =
            pointerColor ??
            (useWhiteForeground(hsvColor.toColor())
                ? Colors.white
                : Colors.black)
        ..strokeWidth = 1.5
        ..blendMode = BlendMode.luminosity
        ..style = PaintingStyle.stroke,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

/// Painter for HV mixture.
class HSVWithSaturationColorPainter extends CustomPainter {
  const HSVWithSaturationColorPainter(this.hsvColor, {this.pointerColor});

  final HSVColor hsvColor;
  final Color? pointerColor;

  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Offset.zero & size;
    const Gradient gradientV = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Colors.transparent, Colors.black],
    );
    final List<Color> colors = [
      HSVColor.fromAHSV(1.0, 0.0, hsvColor.saturation, 1.0).toColor(),
      HSVColor.fromAHSV(1.0, 60.0, hsvColor.saturation, 1.0).toColor(),
      HSVColor.fromAHSV(1.0, 120.0, hsvColor.saturation, 1.0).toColor(),
      HSVColor.fromAHSV(1.0, 180.0, hsvColor.saturation, 1.0).toColor(),
      HSVColor.fromAHSV(1.0, 240.0, hsvColor.saturation, 1.0).toColor(),
      HSVColor.fromAHSV(1.0, 300.0, hsvColor.saturation, 1.0).toColor(),
      HSVColor.fromAHSV(1.0, 360.0, hsvColor.saturation, 1.0).toColor(),
    ];
    final Gradient gradientH = LinearGradient(colors: colors);
    canvas.drawRect(rect, Paint()..shader = gradientH.createShader(rect));
    canvas.drawRect(rect, Paint()..shader = gradientV.createShader(rect));

    canvas.drawCircle(
      Offset(
        size.width * hsvColor.hue / 360,
        size.height * (1 - hsvColor.value),
      ),
      size.height * 0.04,
      Paint()
        ..color =
            pointerColor ??
            (useWhiteForeground(hsvColor.toColor())
                ? Colors.white
                : Colors.black)
        ..strokeWidth = 1.5
        ..style = PaintingStyle.stroke,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

/// Painter for HS mixture.
class HSVWithValueColorPainter extends CustomPainter {
  const HSVWithValueColorPainter(this.hsvColor, {this.pointerColor});

  final HSVColor hsvColor;
  final Color? pointerColor;

  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Offset.zero & size;
    const Gradient gradientV = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Colors.transparent, Colors.white],
    );
    final List<Color> colors = [
      const HSVColor.fromAHSV(1.0, 0.0, 1.0, 1.0).toColor(),
      const HSVColor.fromAHSV(1.0, 60.0, 1.0, 1.0).toColor(),
      const HSVColor.fromAHSV(1.0, 120.0, 1.0, 1.0).toColor(),
      const HSVColor.fromAHSV(1.0, 180.0, 1.0, 1.0).toColor(),
      const HSVColor.fromAHSV(1.0, 240.0, 1.0, 1.0).toColor(),
      const HSVColor.fromAHSV(1.0, 300.0, 1.0, 1.0).toColor(),
      const HSVColor.fromAHSV(1.0, 360.0, 1.0, 1.0).toColor(),
    ];
    final Gradient gradientH = LinearGradient(colors: colors);
    canvas.drawRect(rect, Paint()..shader = gradientH.createShader(rect));
    canvas.drawRect(rect, Paint()..shader = gradientV.createShader(rect));
    canvas.drawRect(
      rect,
      Paint()..color = Colors.black.withOpacity(1 - hsvColor.value),
    );

    canvas.drawCircle(
      Offset(
        size.width * hsvColor.hue / 360,
        size.height * (1 - hsvColor.saturation),
      ),
      size.height * 0.04,
      Paint()
        ..color =
            pointerColor ??
            (useWhiteForeground(hsvColor.toColor())
                ? Colors.white
                : Colors.black)
        ..strokeWidth = 1.5
        ..style = PaintingStyle.stroke,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

/// Painter for SL mixture.
class HSLWithHueColorPainter extends CustomPainter {
  const HSLWithHueColorPainter(this.hslColor, {this.pointerColor});

  final HSLColor hslColor;
  final Color? pointerColor;

  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Offset.zero & size;
    final Gradient gradientH = LinearGradient(
      colors: [
        const Color(0xff808080),
        HSLColor.fromAHSL(1.0, hslColor.hue, 1.0, 0.5).toColor(),
      ],
    );
    const Gradient gradientV = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.0, 0.5, 0.5, 1],
      colors: [
        Colors.white,
        Color(0x00ffffff),
        Colors.transparent,
        Colors.black,
      ],
    );
    canvas.drawRect(rect, Paint()..shader = gradientH.createShader(rect));
    canvas.drawRect(rect, Paint()..shader = gradientV.createShader(rect));

    canvas.drawCircle(
      Offset(
        size.width * hslColor.saturation,
        size.height * (1 - hslColor.lightness),
      ),
      size.height * 0.04,
      Paint()
        ..color =
            pointerColor ??
            (useWhiteForeground(hslColor.toColor())
                ? Colors.white
                : Colors.black)
        ..strokeWidth = 1.5
        ..style = PaintingStyle.stroke,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

/// Painter for HL mixture.
class HSLWithSaturationColorPainter extends CustomPainter {
  const HSLWithSaturationColorPainter(this.hslColor, {this.pointerColor});

  final HSLColor hslColor;
  final Color? pointerColor;

  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Offset.zero & size;
    final List<Color> colors = [
      HSLColor.fromAHSL(1.0, 0.0, hslColor.saturation, 0.5).toColor(),
      HSLColor.fromAHSL(1.0, 60.0, hslColor.saturation, 0.5).toColor(),
      HSLColor.fromAHSL(1.0, 120.0, hslColor.saturation, 0.5).toColor(),
      HSLColor.fromAHSL(1.0, 180.0, hslColor.saturation, 0.5).toColor(),
      HSLColor.fromAHSL(1.0, 240.0, hslColor.saturation, 0.5).toColor(),
      HSLColor.fromAHSL(1.0, 300.0, hslColor.saturation, 0.5).toColor(),
      HSLColor.fromAHSL(1.0, 360.0, hslColor.saturation, 0.5).toColor(),
    ];
    final Gradient gradientH = LinearGradient(colors: colors);
    const Gradient gradientV = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.0, 0.5, 0.5, 1],
      colors: [
        Colors.white,
        Color(0x00ffffff),
        Colors.transparent,
        Colors.black,
      ],
    );
    canvas.drawRect(rect, Paint()..shader = gradientH.createShader(rect));
    canvas.drawRect(rect, Paint()..shader = gradientV.createShader(rect));

    canvas.drawCircle(
      Offset(
        size.width * hslColor.hue / 360,
        size.height * (1 - hslColor.lightness),
      ),
      size.height * 0.04,
      Paint()
        ..color =
            pointerColor ??
            (useWhiteForeground(hslColor.toColor())
                ? Colors.white
                : Colors.black)
        ..strokeWidth = 1.5
        ..style = PaintingStyle.stroke,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

/// Painter for HS mixture.
class HSLWithLightnessColorPainter extends CustomPainter {
  const HSLWithLightnessColorPainter(this.hslColor, {this.pointerColor});

  final HSLColor hslColor;
  final Color? pointerColor;

  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Offset.zero & size;
    final List<Color> colors = [
      const HSLColor.fromAHSL(1.0, 0.0, 1.0, 0.5).toColor(),
      const HSLColor.fromAHSL(1.0, 60.0, 1.0, 0.5).toColor(),
      const HSLColor.fromAHSL(1.0, 120.0, 1.0, 0.5).toColor(),
      const HSLColor.fromAHSL(1.0, 180.0, 1.0, 0.5).toColor(),
      const HSLColor.fromAHSL(1.0, 240.0, 1.0, 0.5).toColor(),
      const HSLColor.fromAHSL(1.0, 300.0, 1.0, 0.5).toColor(),
      const HSLColor.fromAHSL(1.0, 360.0, 1.0, 0.5).toColor(),
    ];
    final Gradient gradientH = LinearGradient(colors: colors);
    const Gradient gradientV = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Colors.transparent, Color(0xFF808080)],
    );
    canvas.drawRect(rect, Paint()..shader = gradientH.createShader(rect));
    canvas.drawRect(rect, Paint()..shader = gradientV.createShader(rect));
    canvas.drawRect(
      rect,
      Paint()
        ..color = Colors.black.withOpacity(
          (1 - hslColor.lightness * 2).clamp(0, 1),
        ),
    );
    canvas.drawRect(
      rect,
      Paint()
        ..color = Colors.white.withOpacity(
          ((hslColor.lightness - 0.5) * 2).clamp(0, 1),
        ),
    );

    canvas.drawCircle(
      Offset(
        size.width * hslColor.hue / 360,
        size.height * (1 - hslColor.saturation),
      ),
      size.height * 0.04,
      Paint()
        ..color =
            pointerColor ??
            (useWhiteForeground(hslColor.toColor())
                ? Colors.white
                : Colors.black)
        ..strokeWidth = 1.5
        ..style = PaintingStyle.stroke,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

/// Painter for GB mixture.
class RGBWithRedColorPainter extends CustomPainter {
  const RGBWithRedColorPainter(this.color, {this.pointerColor});

  final Color color;
  final Color? pointerColor;

  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Offset.zero & size;
    final Gradient gradientH = LinearGradient(
      colors: [
        Color.fromRGBO(color.red, 255, 0, 1.0),
        Color.fromRGBO(color.red, 255, 255, 1.0),
      ],
    );
    final Gradient gradientV = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color.fromRGBO(color.red, 255, 255, 1.0),
        Color.fromRGBO(color.red, 0, 255, 1.0),
      ],
    );
    canvas.drawRect(rect, Paint()..shader = gradientH.createShader(rect));
    canvas.drawRect(
      rect,
      Paint()
        ..shader = gradientV.createShader(rect)
        ..blendMode = BlendMode.multiply,
    );

    canvas.drawCircle(
      Offset(
        size.width * color.blue / 255,
        size.height * (1 - color.green / 255),
      ),
      size.height * 0.04,
      Paint()
        ..color =
            pointerColor ??
            (useWhiteForeground(color) ? Colors.white : Colors.black)
        ..strokeWidth = 1.5
        ..style = PaintingStyle.stroke,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

/// Painter for RB mixture.
class RGBWithGreenColorPainter extends CustomPainter {
  const RGBWithGreenColorPainter(this.color, {this.pointerColor});

  final Color color;
  final Color? pointerColor;

  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Offset.zero & size;
    final Gradient gradientH = LinearGradient(
      colors: [
        Color.fromRGBO(255, color.green, 0, 1.0),
        Color.fromRGBO(255, color.green, 255, 1.0),
      ],
    );
    final Gradient gradientV = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color.fromRGBO(255, color.green, 255, 1.0),
        Color.fromRGBO(0, color.green, 255, 1.0),
      ],
    );
    canvas.drawRect(rect, Paint()..shader = gradientH.createShader(rect));
    canvas.drawRect(
      rect,
      Paint()
        ..shader = gradientV.createShader(rect)
        ..blendMode = BlendMode.multiply,
    );

    canvas.drawCircle(
      Offset(
        size.width * color.blue / 255,
        size.height * (1 - color.red / 255),
      ),
      size.height * 0.04,
      Paint()
        ..color =
            pointerColor ??
            (useWhiteForeground(color) ? Colors.white : Colors.black)
        ..strokeWidth = 1.5
        ..style = PaintingStyle.stroke,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

/// Painter for RG mixture.
class RGBWithBlueColorPainter extends CustomPainter {
  const RGBWithBlueColorPainter(this.color, {this.pointerColor});

  final Color color;
  final Color? pointerColor;

  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Offset.zero & size;
    final Gradient gradientH = LinearGradient(
      colors: [
        Color.fromRGBO(0, 255, color.blue, 1.0),
        Color.fromRGBO(255, 255, color.blue, 1.0),
      ],
    );
    final Gradient gradientV = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color.fromRGBO(255, 255, color.blue, 1.0),
        Color.fromRGBO(255, 0, color.blue, 1.0),
      ],
    );
    canvas.drawRect(rect, Paint()..shader = gradientH.createShader(rect));
    canvas.drawRect(
      rect,
      Paint()
        ..shader = gradientV.createShader(rect)
        ..blendMode = BlendMode.multiply,
    );

    canvas.drawCircle(
      Offset(
        size.width * color.red / 255,
        size.height * (1 - color.green / 255),
      ),
      size.height * 0.04,
      Paint()
        ..color =
            pointerColor ??
            (useWhiteForeground(color) ? Colors.white : Colors.black)
        ..strokeWidth = 1.5
        ..style = PaintingStyle.stroke,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

/// Painter for hue color wheel.
class HUEColorWheelPainter extends CustomPainter {
  const HUEColorWheelPainter(this.hsvColor, {this.pointerColor});

  final HSVColor hsvColor;
  final Color? pointerColor;

  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Offset.zero & size;
    Offset center = Offset(size.width / 2, size.height / 2);
    double radio = size.width <= size.height ? size.width / 2 : size.height / 2;

    final List<Color> colors = [
      const HSVColor.fromAHSV(1.0, 360.0, 1.0, 1.0).toColor(),
      const HSVColor.fromAHSV(1.0, 300.0, 1.0, 1.0).toColor(),
      const HSVColor.fromAHSV(1.0, 240.0, 1.0, 1.0).toColor(),
      const HSVColor.fromAHSV(1.0, 180.0, 1.0, 1.0).toColor(),
      const HSVColor.fromAHSV(1.0, 120.0, 1.0, 1.0).toColor(),
      const HSVColor.fromAHSV(1.0, 60.0, 1.0, 1.0).toColor(),
      const HSVColor.fromAHSV(1.0, 0.0, 1.0, 1.0).toColor(),
    ];
    final Gradient gradientS = SweepGradient(colors: colors);
    const Gradient gradientR = RadialGradient(
      colors: [Colors.white, Color(0x00FFFFFF)],
    );
    canvas.drawCircle(
      center,
      radio,
      Paint()..shader = gradientS.createShader(rect),
    );
    canvas.drawCircle(
      center,
      radio,
      Paint()..shader = gradientR.createShader(rect),
    );
    canvas.drawCircle(
      center,
      radio,
      Paint()..color = Colors.black.withOpacity(1 - hsvColor.value),
    );

    canvas.drawCircle(
      Offset(
        center.dx +
            hsvColor.saturation * radio * cos((hsvColor.hue * pi / 180)),
        center.dy -
            hsvColor.saturation * radio * sin((hsvColor.hue * pi / 180)),
      ),
      size.height * 0.04,
      Paint()
        ..color =
            pointerColor ??
            (useWhiteForeground(hsvColor.toColor())
                ? Colors.white
                : Colors.black)
        ..strokeWidth = 1.5
        ..style = PaintingStyle.stroke,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

/// Simple round color indicator.
class ColorIndicator extends StatelessWidget {
  const ColorIndicator(
    this.hsvColor, {
    Key? key,
    this.width = 50.0,
    this.height = 50.0,
  }) : super(key: key);

  final HSVColor hsvColor;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(1000.0)),
        border: Border.all(color: const Color(0xffdddddd)),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(1000.0)),
        child: CustomPaint(painter: IndicatorPainter(hsvColor.toColor())),
      ),
    );
  }
}

/// Painter for chess type alpha background in color indicator widget.
class IndicatorPainter extends CustomPainter {
  const IndicatorPainter(this.color);

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final Size chessSize = Size(size.width / 10, size.height / 10);
    final Paint chessPaintB = Paint()..color = const Color(0xFFCCCCCC);
    final Paint chessPaintW = Paint()..color = Colors.white;
    List.generate((size.height / chessSize.height).round(), (int y) {
      List.generate((size.width / chessSize.width).round(), (int x) {
        canvas.drawRect(
          Offset(chessSize.width * x, chessSize.height * y) & chessSize,
          (x + y) % 2 != 0 ? chessPaintW : chessPaintB,
        );
      });
    });

    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      size.height / 2,
      Paint()
        ..color = color
        ..style = PaintingStyle.fill,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

/// Provide label for color information.
class ColorPickerLabel extends StatefulWidget {
  const ColorPickerLabel(
    this.hsvColor, {
    Key? key,
    this.enableAlpha = true,
    this.colorLabelTypes = const [
      ColorLabelType.rgb,
      ColorLabelType.hsv,
      ColorLabelType.hsl,
    ],
    this.textStyle,
  }) : assert(colorLabelTypes.length > 0),
       super(key: key);

  final HSVColor hsvColor;
  final bool enableAlpha;
  final TextStyle? textStyle;
  final List<ColorLabelType> colorLabelTypes;

  @override
  State<ColorPickerLabel> createState() => _ColorPickerLabelState();
}

class _ColorPickerLabelState extends State<ColorPickerLabel> {
  final Map<ColorLabelType, List<String>> _colorTypes = const {
    ColorLabelType.hex: ['R', 'G', 'B', 'A'],
    ColorLabelType.rgb: ['R', 'G', 'B', 'A'],
    ColorLabelType.hsv: ['H', 'S', 'V', 'A'],
    ColorLabelType.hsl: ['H', 'S', 'L', 'A'],
  };

  late ColorLabelType _colorType;

  @override
  void initState() {
    super.initState();
    _colorType = widget.colorLabelTypes[0];
  }

  List<String> colorValue(HSVColor hsvColor, ColorLabelType colorLabelType) {
    if (colorLabelType == ColorLabelType.hex) {
      final Color color = hsvColor.toColor();
      return [
        color.red.toRadixString(16).toUpperCase().padLeft(2, '0'),
        color.green.toRadixString(16).toUpperCase().padLeft(2, '0'),
        color.blue.toRadixString(16).toUpperCase().padLeft(2, '0'),
        color.alpha.toRadixString(16).toUpperCase().padLeft(2, '0'),
      ];
    } else if (colorLabelType == ColorLabelType.rgb) {
      final Color color = hsvColor.toColor();
      return [
        color.red.toString(),
        color.green.toString(),
        color.blue.toString(),
        '${(color.opacity * 100).round()}%',
      ];
    } else if (colorLabelType == ColorLabelType.hsv) {
      return [
        '${hsvColor.hue.round()}°',
        '${(hsvColor.saturation * 100).round()}%',
        '${(hsvColor.value * 100).round()}%',
        '${(hsvColor.alpha * 100).round()}%',
      ];
    } else if (colorLabelType == ColorLabelType.hsl) {
      HSLColor hslColor = hsvToHsl(hsvColor);
      return [
        '${hslColor.hue.round()}°',
        '${(hslColor.saturation * 100).round()}%',
        '${(hslColor.lightness * 100).round()}%',
        '${(hsvColor.alpha * 100).round()}%',
      ];
    } else {
      return ['??', '??', '??', '??'];
    }
  }

  List<Widget> colorValueLabels() {
    double fontSize = 14;
    if (widget.textStyle != null && widget.textStyle?.fontSize != null)
      fontSize = widget.textStyle?.fontSize ?? 14;

    return [
      for (String item in _colorTypes[_colorType] ?? [])
        if (widget.enableAlpha || item != 'A')
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(minWidth: fontSize * 2),
              child: IntrinsicHeight(
                child: Column(
                  children: <Widget>[
                    Text(
                      item,
                      style:
                          widget.textStyle ??
                          Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 10.0),
                    Expanded(
                      child: Text(
                        colorValue(
                          widget.hsvColor,
                          _colorType,
                        )[_colorTypes[_colorType]!.indexOf(item)],
                        overflow: TextOverflow.ellipsis,
                        style:
                            widget.textStyle ??
                            Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        DropdownButton(
          value: _colorType,
          onChanged: (ColorLabelType? type) {
            /* spm: non-rebuild body erased */
          },
          items: [
            for (ColorLabelType type in widget.colorLabelTypes)
              DropdownMenuItem(
                value: type,
                child: Text(type.toString().split('.').last.toUpperCase()),
              ),
          ],
        ),
        const SizedBox(width: 10.0),
        ...colorValueLabels(),
      ],
    );
  }
}

/// Provide hex input wiget for 3/6/8 digits.
class ColorPickerInput extends StatefulWidget {
  const ColorPickerInput(
    this.color,
    this.onColorChanged, {
    Key? key,
    this.enableAlpha = true,
    this.embeddedText = false,
    this.disable = false,
  }) : super(key: key);

  final Color color;
  final ValueChanged<Color> onColorChanged;
  final bool enableAlpha;
  final bool embeddedText;
  final bool disable;

  @override
  State<ColorPickerInput> createState() => _ColorPickerInputState();
}

class _ColorPickerInputState extends State<ColorPickerInput> {
  TextEditingController textEditingController = TextEditingController();
  int inputColor = 0;

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (inputColor != widget.color.value) {
      // ignore: prefer_interpolation_to_compose_strings
      textEditingController.text =
          '#' +
          widget.color.red.toRadixString(16).toUpperCase().padLeft(2, '0') +
          widget.color.green.toRadixString(16).toUpperCase().padLeft(2, '0') +
          widget.color.blue.toRadixString(16).toUpperCase().padLeft(2, '0') +
          (widget.enableAlpha
              ? widget.color.alpha
                    .toRadixString(16)
                    .toUpperCase()
                    .padLeft(2, '0')
              : '');
    }
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (!widget.embeddedText)
            Text('Hex', style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(width: 10),
          SizedBox(
            width:
                (Theme.of(context).textTheme.bodyMedium?.fontSize ?? 14) * 10,
            child: TextField(
              enabled: !widget.disable,
              controller: textEditingController,
              inputFormatters: [
                UpperCaseTextFormatter(),
                FilteringTextInputFormatter.allow(RegExp(kValidHexPattern)),
              ],
              decoration: InputDecoration(
                isDense: true,
                label: widget.embeddedText ? const Text('Hex') : null,
                contentPadding: const EdgeInsets.symmetric(vertical: 5),
              ),
              onChanged: (String value) {
                /* spm: non-rebuild body erased */
              },
            ),
          ),
        ],
      ),
    );
  }
}

/// Uppercase text formater
class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(oldValue, TextEditingValue newValue) =>
      TextEditingValue(
        text: newValue.text.toUpperCase(),
        selection: newValue.selection,
      );
}

































// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
