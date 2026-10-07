// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({Key? key}) : super(key: key);

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late final TextEditingController _controller;

  late String _hex;

  @override
  void initState() {
    super.initState();
    themeDataList = themeDataListValue;
    _controller = makeTextController();
    _hex = defaultColor;
    // 默认留空也能预览 defaultColor
    _controller.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _controller.removeListener(_onTextChanged);
    _controller.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    final raw = _controller.text.trim();
    setState(() {
      _hex = raw.isEmpty ? defaultColor : '#$raw';
    });
  }

  bool get _isValid6 {
    final raw = _controller.text.trim();
    return RegExp(r'^[0-9a-fA-F]{6}$').hasMatch(raw);
  }

  Color get _seedColor {
    try {
      return HexColor(_hex);
    } catch (_) {
      return HexColor(defaultColor);
    }
  }

  @override
  Widget build(BuildContext context) {
    final model = ScopedModel.of<MainStateModel>(
      context,
      rebuildOnChange: true,
    );
    final bool useM3Light = (model.material3ColorForLight == true);
    final bool useM3Dark = (model.material3ColorForDark == true);
    final seed = _seedColor;
    final lightPrimary = useM3Light
        ? ColorScheme.fromSeed(
            seedColor: seed,
            brightness: Brightness.light,
          ).primary
        : seed;
    final darkPrimary = useM3Dark
        ? ColorScheme.fromSeed(
            seedColor: seed,
            brightness: Brightness.dark,
          ).primary
        : seed;

    final scheme = Theme.of(context).colorScheme;

    // ---- inlined _SwatchBlock parameters (kept as variables, matching
    // the base's variable-based Text(title) rendering) ----
    const seedTitle = '种子色';
    const lightTitle = '浅色预览';
    const darkTitle = '深色预览';
    final seedIcon = Icons.palette_rounded;
    final lightIcon = Icons.wb_sunny_rounded;
    final darkIcon = Icons.dark_mode_rounded;
    final bool lightOutlined = !useM3Light;
    final bool darkOutlined = !useM3Dark;
    final seedOn = ThemeData.estimateBrightnessForColor(seed) == Brightness.dark
        ? Colors.white
        : Colors.black;
    final lightOn = ThemeData.estimateBrightnessForColor(lightPrimary) == Brightness.dark
        ? Colors.white
        : Colors.black;
    final darkOn = ThemeData.estimateBrightnessForColor(darkPrimary) == Brightness.dark
        ? Colors.white
        : Colors.black;

    return MDialog(
      '自定义主题颜色',
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '输入颜色代码，即可预览浅色与深色的强调色效果',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.75),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),

          // ---- inlined _HexInputRow ----
          Row(
            children: [
              Expanded(
                child: TextField(
                  autofocus: false,
                  controller: _controller,
                  textAlignVertical: TextAlignVertical.center,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[a-fA-F0-9]')),
                    LengthLimitingTextInputFormatter(6),
                    UpperCaseTextFormatter(),
                  ],
                  decoration: InputDecoration(
                    prefixText: '#',
                    hintText: 'RRGGBB',
                    isDense: false,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 14,
                    ),
                    suffixIconConstraints: const BoxConstraints(
                      minWidth: 0,
                      minHeight: 0,
                    ),
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          visualDensity: VisualDensity.compact,
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(
                            minWidth: 36,
                            minHeight: 36,
                          ),
                          onPressed: () {
                            _controller.clear();
                            FocusScope.of(context).requestFocus(FocusNode());
                          },
                          icon: Icon(
                            Icons.close_rounded,
                            size: 18,
                            color: scheme.onSurface.withOpacity(0.65),
                          ),
                          tooltip: '清空',
                        ),
                        const SizedBox(width: 8),
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: seed,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: scheme.outlineVariant,
                              width: 1,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                    errorText: (_isValid6 || _controller.text.isEmpty)
                        ? null
                        : '请输入 6 位十六进制',
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 14),

          // ---- inlined _PreviewCard (with its three _SwatchBlock children
          // inlined too) ----
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: scheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: scheme.surface,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: scheme.outlineVariant, width: 1),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Icon(
                              seedIcon,
                              size: 16,
                              color: scheme.onSurface.withOpacity(0.7),
                            ),
                            const SizedBox(width: 6),
                            Expanded(
                              child: Text(
                                seedTitle,
                                style: Theme.of(context).textTheme.labelMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: scheme.onSurface.withOpacity(0.75),
                                    ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 36,
                          decoration: BoxDecoration(
                            color: seed,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.transparent,
                              width: 2,
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.circle,
                              size: 12,
                              color: seedOn.withOpacity(0.85),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: scheme.surface,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: scheme.outlineVariant, width: 1),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Icon(
                              lightIcon,
                              size: 16,
                              color: scheme.onSurface.withOpacity(0.7),
                            ),
                            const SizedBox(width: 6),
                            Expanded(
                              child: Text(
                                lightTitle,
                                style: Theme.of(context).textTheme.labelMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: scheme.onSurface.withOpacity(0.75),
                                    ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 36,
                          decoration: BoxDecoration(
                            color: lightOutlined ? Colors.transparent : lightPrimary,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: lightOutlined ? lightPrimary : Colors.transparent,
                              width: 2,
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.circle,
                              size: 12,
                              color: lightOutlined ? lightPrimary : lightOn.withOpacity(0.85),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: scheme.surface,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: scheme.outlineVariant, width: 1),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Icon(
                              darkIcon,
                              size: 16,
                              color: scheme.onSurface.withOpacity(0.7),
                            ),
                            const SizedBox(width: 6),
                            Expanded(
                              child: Text(
                                darkTitle,
                                style: Theme.of(context).textTheme.labelMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: scheme.onSurface.withOpacity(0.75),
                                    ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 36,
                          decoration: BoxDecoration(
                            color: darkOutlined ? Colors.transparent : darkPrimary,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: darkOutlined ? darkPrimary : Colors.transparent,
                              width: 2,
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.circle,
                              size: 12,
                              color: darkOutlined ? darkPrimary : darkOn.withOpacity(0.85),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      widgetCancelAction: () {
        UmengCommonSdk.onEvent("theme_change", {
          "type": "theme_change",
          "action": "cancel",
        });
        Navigator.of(context).pop('');
      },
      widgetOKAction: () {
        // 只要用户不填，默认；填了但不满6位，也按 default（避免保存坏值）
        String finalHex = '#${_controller.text.trim()}';
        if (_controller.text.trim().isEmpty) finalHex = defaultColor;
        if (!_isValid6 && _controller.text.trim().isNotEmpty)
          finalHex = defaultColor;

        UmengCommonSdk.onEvent("theme_change", {
          "type": "theme_change",
          "color": finalHex,
        });
        ScopedModel.of<MainStateModel>(context).changeCustomTheme(finalHex);
        ScopedModel.of<MainStateModel>(
          context,
        ).changeTheme(themeDataList.length);
        Navigator.of(context).pop(_controller.text);
      },
    );
  }
}
class MDialog extends StatelessWidget {
  final String title;
  final Widget content;
  final List<Widget>? overrideActions;
  final Widget? widgetOK;
  final VoidCallback? widgetOKAction;
  final Widget? widgetCancel;
  final VoidCallback? widgetCancelAction;

  const MDialog(
    this.title,
    this.content, {
    // this.actions,
    this.overrideActions,
    this.widgetOK,
    this.widgetOKAction,
    this.widgetCancel,
    this.widgetCancelAction,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          (title.length <= 15) ? title : '${title.substring(0, 15)}...',
        ),
      ),
      content: content,
      actions:
          overrideActions ??
          [
            widgetCancelAction == null
                ? Container()
                : TransBgTextButton(
                    // color: Theme.of(context).brightness == Brightness.light
                    // ? Theme.of(context).primaryColor
                    // : Colors.white,
                    color: Colors.grey,
                    onPressed: widgetCancelAction,
                    child: widgetCancel ?? Text(S.of(context).cancel),
                  ),
            TransBgTextButton(
              color: Theme.of(context).brightness == Brightness.light
                  ? Theme.of(context).primaryColor
                  : Colors.white,
              onPressed: widgetOKAction,
              child: widgetOK ?? Text(S.of(context).ok),
            ),
          ],
    );
  }
}