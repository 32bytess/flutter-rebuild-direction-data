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
    return MDialog(
      '自定义主题颜色',
      _DialogBody(
        controller: _controller,
        seed: seed,
        light: lightPrimary,
        dark: darkPrimary,
        lightOutlined: !useM3Light,
        darkOutlined: !useM3Dark,
        isValid: _isValid6 || _controller.text.isEmpty,
        onClear: () {
          _controller.clear();
          FocusScope.of(context).requestFocus(FocusNode());
        },
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
class _DialogIntroText extends StatelessWidget {
  const _DialogIntroText();

  @override
  Widget build(BuildContext context) {
    return Text(
      '输入颜色代码，即可预览浅色与深色的强调色效果',
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
        color: Theme.of(context).colorScheme.onSurface.withOpacity(0.75),
      ),
      textAlign: TextAlign.center,
    );
  }
}
class _DialogBody extends StatelessWidget {
  final TextEditingController controller;
  final Color seed;
  final Color light;
  final Color dark;
  final bool lightOutlined;
  final bool darkOutlined;
  final bool isValid;
  final VoidCallback onClear;

  const _DialogBody({
    required this.controller,
    required this.seed,
    required this.light,
    required this.dark,
    required this.lightOutlined,
    required this.darkOutlined,
    required this.isValid,
    required this.onClear,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const _DialogIntroText(),
        const SizedBox(height: 12),

        _HexInputRow(
          controller: controller,
          onClear: onClear,
          previewColor: seed,
          isValid: isValid,
        ),

        const SizedBox(height: 14),

        // 现代化预览卡：Seed / Light / Dark
        _PreviewCard(
          seed: seed,
          light: light,
          dark: dark,
          lightOutlined: lightOutlined,
          darkOutlined: darkOutlined,
        ),
      ],
    );
  }
}
class _HexInputRow extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onClear;
  final Color previewColor;
  final bool isValid;

  const _HexInputRow({
    required this.controller,
    required this.onClear,
    required this.previewColor,
    required this.isValid,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Row(
      children: [
        Expanded(
          child: TextField(
            autofocus: false,
            controller: controller,
            textAlignVertical: TextAlignVertical.center,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp('[a-fA-F0-9]')),
              LengthLimitingTextInputFormatter(6),
              UpperCaseTextFormatter(),
            ],
            decoration: InputDecoration(
              prefixText: '#',
              hintText: 'RRGGBB',
              // 关键：让 TextField 自己撑高，不要外面再画一圈边框
              isDense: false,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 14,
              ),

              // 右侧预览点 + 清空按钮（不再用外层 Row 的布局来硬撑）
              suffixIconConstraints: const BoxConstraints(
                minWidth: 0,
                minHeight: 0,
              ),
              suffixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // 清空
                  IconButton(
                    visualDensity: VisualDensity.compact,
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(
                      minWidth: 36,
                      minHeight: 36,
                    ),
                    onPressed: onClear,
                    icon: Icon(
                      Icons.close_rounded,
                      size: 18,
                      color: scheme.onSurface.withOpacity(0.65),
                    ),
                    tooltip: '清空',
                  ),
                  const SizedBox(width: 8),
                  // 预览点
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: previewColor,
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

              // 非法输入时，仅改边框颜色（不改主题）
              errorText: isValid ? null : '请输入 6 位十六进制',
              // 不想占高度就把 errorStyle 缩到极小，或直接不显示 errorText
              // errorStyle: const TextStyle(height: 0, fontSize: 0),
            ),
          ),
        ),
      ],
    );
  }
}
class _PreviewCard extends StatelessWidget {
  final Color seed;
  final Color light;
  final Color dark;
  final bool lightOutlined;
  final bool darkOutlined;

  const _PreviewCard({
    required this.seed,
    required this.light,
    required this.dark,
    required this.lightOutlined,
    required this.darkOutlined,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: scheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: _SwatchBlock(
              title: '种子色',
              color: seed,
              outlined: false,
              icon: Icons.palette_rounded,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: _SwatchBlock(
              title: '浅色预览',
              color: light,
              outlined: lightOutlined,
              icon: Icons.wb_sunny_rounded,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: _SwatchBlock(
              title: '深色预览',
              color: dark,
              outlined: darkOutlined,
              icon: Icons.dark_mode_rounded,
            ),
          ),
        ],
      ),
    );
  }
}
class _SwatchBlock extends StatelessWidget {
  final String title;
  final Color color;
  final bool outlined;
  final IconData icon;

  const _SwatchBlock({
    required this.title,
    required this.color,
    required this.outlined,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final outline = scheme.outlineVariant;

    final on = ThemeData.estimateBrightnessForColor(color) == Brightness.dark
        ? Colors.white
        : Colors.black;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: outline, width: 1),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Icon(icon, size: 16, color: scheme.onSurface.withOpacity(0.7)),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: scheme.onSurface.withOpacity(0.75),
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),

          // 大色块：用圆角矩形，更"现代"
          Container(
            height: 36,
            decoration: BoxDecoration(
              color: outlined ? Colors.transparent : color,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: outlined ? color : Colors.transparent,
                width: 2,
              ),
            ),
            child: Center(
              child: Icon(
                Icons.circle,
                size: 12,
                color: outlined ? color : on.withOpacity(0.85),
              ),
            ),
          ),
        ],
      ),
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