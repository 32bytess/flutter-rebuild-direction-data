// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
part 'dependencies.dart';


class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  GeneratedWidget.fixture({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  @override
  void initState() {
    super.initState();
    _ctrl = fixtureCtrl;
  }

  late SettingsController _ctrl;

  Future<void> _onTempHideBehaviorEnabledChanged(bool value) async {
    /* spm: non-rebuild body erased */
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final l10n = AppLocalizations.of(context)!;
    final titleStyle = Theme.of(context).textTheme.titleMedium;
    return Scaffold(
      backgroundColor: cs.surface,
      body: BlurAppBarHost(
        title: l10n.hideBehaviorTitle,
        physics: const ClampingScrollPhysics(),
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                const SizedBox(height: 8),
                Text(
                  l10n.hideBehaviorDescription,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(color: cs.onSurfaceVariant),
                ),
                const SizedBox(height: 12),
                Card(
                  elevation: 0,
                  color: cs.surfaceContainerHighest,
                  child: _SwitchTile(
                    title: l10n.hideBehaviorMasterSwitch,
                    subtitle: l10n.hideBehaviorMasterSwitchSubtitle,
                    value: _ctrl.tempHideBehaviorEnabled,
                    onChanged: _onTempHideBehaviorEnabledChanged,
                    titleStyle: titleStyle,
                  ),
                ),
                const SizedBox(height: 8),
                Card(
                  elevation: 0,
                  color: cs.surfaceContainerHighest,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      _SwitchTile(
                        title: l10n.hideBehaviorScreenPinning,
                        subtitle: l10n.hideBehaviorScreenPinningSubtitle,
                        value: _ctrl.tempHideScreenPinning,
                        onChanged: _ctrl.tempHideBehaviorEnabled
                            ? _ctrl.setTempHideScreenPinning
                            : null,
                        titleStyle: titleStyle,
                      ),
                      const Divider(height: 1, indent: 16, endIndent: 16),
                      _SwitchTile(
                        title: l10n.hideBehaviorBouncerShowing,
                        subtitle: l10n.hideBehaviorBouncerShowingSubtitle,
                        value: _ctrl.tempHideBouncerShowing,
                        onChanged: _ctrl.tempHideBehaviorEnabled
                            ? _ctrl.setTempHideBouncerShowing
                            : null,
                        titleStyle: titleStyle,
                      ),
                      const Divider(height: 1, indent: 16, endIndent: 16),
                      _SwitchTile(
                        title: l10n.hideBehaviorFullscreen,
                        subtitle: l10n.hideBehaviorFullscreenSubtitle,
                        value: _ctrl.tempHideFullscreen,
                        onChanged: _ctrl.tempHideBehaviorEnabled
                            ? _ctrl.setTempHideFullscreen
                            : null,
                        titleStyle: titleStyle,
                      ),
                      _SwitchTile(
                        title: l10n.hideBehaviorFullscreenLandscapeDisable,
                        subtitle:
                            l10n.hideBehaviorFullscreenLandscapeDisableSubtitle,
                        value: _ctrl.tempHideFullscreenLandscapeDisable,
                        onChanged:
                            _ctrl.tempHideBehaviorEnabled &&
                                !_ctrl.tempHideFullscreen
                            ? _ctrl.setTempHideFullscreenLandscapeDisable
                            : null,
                        titleStyle: titleStyle,
                      ),
                      const Divider(height: 1, indent: 16, endIndent: 16),
                      _SwitchTile(
                        title: l10n.hideBehaviorScreenLocked,
                        subtitle: l10n.hideBehaviorScreenLockedSubtitle,
                        value: _ctrl.tempHideScreenLocked,
                        onChanged: _ctrl.tempHideBehaviorEnabled
                            ? _ctrl.setTempHideScreenLocked
                            : null,
                        titleStyle: titleStyle,
                      ),
                      const Divider(height: 1, indent: 16, endIndent: 16),
                      _SwitchTile(
                        title: l10n.hideBehaviorNotificationCenter,
                        subtitle: l10n.hideBehaviorNotificationCenterSubtitle,
                        value: _ctrl.tempHideNotificationCenter,
                        onChanged: _ctrl.tempHideBehaviorEnabled
                            ? _ctrl.setTempHideNotificationCenter
                            : null,
                        titleStyle: titleStyle,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
              ], addAutomaticKeepAlives: false),
            ),
          ),
        ],
      ),
    );
  }
}

class _SwitchTile extends StatelessWidget {
  const _SwitchTile({
    required this.title,
    required this.subtitle,
    required this.value,
    required this.onChanged,
    required this.titleStyle,
  });

  final String title;
  final String subtitle;
  final bool value;
  final ValueChanged<bool>? onChanged;
  final TextStyle? titleStyle;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      title: Text(title, style: titleStyle),
      subtitle: Text(subtitle),
      value: value,
      onChanged: onChanged == null
          ? null
          : InteractionHaptics.interceptToggle(onChanged!),
    );
  }
}

/// 可复用的毛玻璃顶栏页面容器。
///
/// **统一渲染管线**：无论 blurBars 开关是否开启，都使用
/// Stack + BackdropFilter 方案渲染。区别仅在于：
/// - blurBars 开启：sigma 随滚动渐变（0→20），底色半透明
/// - blurBars 关闭：sigma 始终为 0，底色不透明
///
/// **大标题布局**（匹配原生 SliverAppBar.large）：
/// - expandedHeight=152, collapsedHeight=64（来源 Flutter SDK）
/// - 大标题在**整个** 152px 区域底部定位（padding bottom 28px），
///   与工具栏区域重叠，和原生一致
/// - 大标题渐变淡出（Opacity），小标题渐变淡入，平滑过渡
///
/// 用法：
/// ```dart
/// Scaffold(
///   backgroundColor: cs.surface,
///   body: BlurAppBarHost(
///     title: l10n.navSettings,
///     largeTitle: true,
///     bottomPadding: 80, // extendBody 时避免内容被底栏遮挡
///     slivers: [
///       SliverPadding(padding: ..., sliver: SliverList(...)),
///     ],
///   ),
/// )
/// ```
class BlurAppBarHost extends StatefulWidget {
  /// 顶栏标题文字
  final String title;

  /// 自定义标题 Widget（优先于 title 字符串）
  final Widget? titleWidget;

  /// 是否使用大标题（SliverAppBar.large 风格）
  final bool largeTitle;

  /// 内容 slivers（不含 SliverAppBar）
  final List<Widget> slivers;

  /// 右侧操作按钮
  final List<Widget>? actions;

  /// 左侧导航按钮
  final Widget? leading;

  /// 滚动物理
  final ScrollPhysics? physics;

  /// 是否自动显示返回按钮
  final bool automaticallyImplyLeading;

  /// 底部额外内边距（用于 extendBody 时避免内容被底栏遮挡）
  final double bottomPadding;

  /// 外部提供的 ScrollController（可选）
  /// 传入时由外部管理生命周期，不传时内部自动创建
  final ScrollController? scrollController;

  const BlurAppBarHost({
    super.key,
    required this.title,
    this.titleWidget,
    this.largeTitle = false,
    required this.slivers,
    this.actions,
    this.leading,
    this.physics,
    this.automaticallyImplyLeading = true,
    this.bottomPadding = 0,
    this.scrollController,
  });

  @override
  State<BlurAppBarHost> createState() => _BlurAppBarHostState();
}

class _BlurAppBarHostState extends State<BlurAppBarHost> {
  final _ctrl = SettingsController.instance;
  late final ScrollController _scrollController;
  double _scrollOffset = 0;
  bool _ownsController = false;

  // 匹配原生 SliverAppBar.large 尺寸
  // 来源：Flutter SDK _LargeScrollUnderFlexibleConfig
  static const _largeExpandedHeight = 152.0;
  static const _largeCollapsedHeight = 64.0;

  @override
  void initState() {
    super.initState();
    _ctrl.addListener(_onSettingsChanged);
    if (widget.scrollController != null) {
      _scrollController = widget.scrollController!;
      _ownsController = false;
    } else {
      _scrollController = ScrollController();
      _ownsController = true;
    }
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _ctrl.removeListener(_onSettingsChanged);
    _scrollController.removeListener(_onScroll);
    if (_ownsController) _scrollController.dispose();
    super.dispose();
  }

  void _onSettingsChanged() {
    if (mounted) setState(() {});
  }

  @override
  void didUpdateWidget(covariant BlurAppBarHost oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.scrollController != oldWidget.scrollController) {
      _scrollController.removeListener(_onScroll);
      if (_ownsController) _scrollController.dispose();
      if (widget.scrollController != null) {
        _scrollController = widget.scrollController!;
        _ownsController = false;
      } else {
        _scrollController = ScrollController();
        _ownsController = true;
      }
      _scrollController.addListener(_onScroll);
    }
  }

  void _onScroll() {
    if (!mounted) return;
    final offset = _scrollController.offset;
    if (offset != _scrollOffset) {
      setState(() => _scrollOffset = offset);
    }
  }

  // ─── 左侧导航按钮 ──────────────────────────────────────────

  Widget _buildLeading(BuildContext context, {double opacity = 1.0}) {
    if (widget.leading != null) {
      return Opacity(opacity: opacity, child: widget.leading!);
    }
    if (!widget.automaticallyImplyLeading) return const SizedBox(width: 16);
    final canPop = ModalRoute.of(context)?.canPop ?? false;
    if (!canPop) return const SizedBox(width: 16);
    return Opacity(
      opacity: opacity,
      child: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          /* spm: non-rebuild body erased */
        },
      ),
    );
  }

  // ─── 大标题布局（渐变淡出/淡入）──────────────────────────────

  /// 大标题在**整个** barHeight 区域内定位（与原生一致），
  /// 大标题和小标题通过 Opacity 渐变过渡，不会同时出现。
  Widget _buildLargeTitleLayout({
    required BuildContext context,
    required ColorScheme cs,
    required double statusBarHeight,
    required double barHeight,
    required double largeOpacity,
    required double smallOpacity,
  }) {
    return Column(
      children: [
        SizedBox(height: statusBarHeight),
        SizedBox(
          height: barHeight,
          child: Stack(
            children: [
              // 大标题：在整个 barHeight 区域底部定位（与原生一致）
              // padding(16, 0, 16, 28) → 标题在 bottom:28 处
              Positioned(
                left: 16,
                right: 16,
                bottom: 28,
                child: Opacity(
                  opacity: largeOpacity,
                  child:
                      widget.titleWidget ??
                      Text(
                        widget.title,
                        style: Theme.of(context).textTheme.headlineMedium
                            ?.copyWith(color: cs.onSurface),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                ),
              ),
              // 工具栏：在顶部（状态栏下方），包含 leading / 小标题 / actions
              // 始终固定在此位置，不随滚动移动
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                height: _largeCollapsedHeight,
                child: Row(
                  children: [
                    _buildLeading(context),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Opacity(
                          opacity: smallOpacity,
                          child: Text(
                            widget.title,
                            style: Theme.of(context).textTheme.titleLarge
                                ?.copyWith(color: cs.onSurface),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                    if (widget.actions != null) ...widget.actions!,
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // ─── 小标题布局（普通 SliverAppBar 风格）─────────────────────

  Widget _buildSmallTitleLayout({
    required BuildContext context,
    required ColorScheme cs,
    required double statusBarHeight,
  }) {
    return Column(
      children: [
        SizedBox(height: statusBarHeight),
        SizedBox(
          height: kToolbarHeight,
          child: Row(
            children: [
              _buildLeading(context),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    widget.title,
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge?.copyWith(color: cs.onSurface),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              if (widget.actions != null) ...widget.actions!,
            ],
          ),
        ),
      ],
    );
  }

  // ─── build ──────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final brightness = Theme.of(context).brightness;
    final statusBarHeight = MediaQuery.of(context).padding.top;
    final blurEnabled = _ctrl.blurBars;

    final expandedHeight = widget.largeTitle ? _largeExpandedHeight : 0.0;
    final collapsedHeight = widget.largeTitle
        ? _largeCollapsedHeight
        : kToolbarHeight;

    // 展开比例：1 = 完全展开，0 = 完全折叠
    final maxScroll = expandedHeight - collapsedHeight;
    final expandedRatio = maxScroll > 0
        ? (1 - _scrollOffset / maxScroll).clamp(0.0, 1.0)
        : 0.0;

    // 当前顶栏高度（不含状态栏）
    final barHeight = widget.largeTitle
        ? (expandedHeight - _scrollOffset).clamp(
            collapsedHeight,
            expandedHeight,
          )
        : collapsedHeight;
    final totalHeight = barHeight + statusBarHeight;

    // ── 模糊 & 底色 ──
    final scrollProgress = (1 - expandedRatio).clamp(0.0, 1.0);
    double sigma;
    double alpha;
    if (blurEnabled) {
      final blurAlpha = brightness == Brightness.light ? 0.7 : 0.6;
      sigma = 20 * scrollProgress;
      alpha = 1.0 - scrollProgress * (1.0 - blurAlpha);
    } else {
      sigma = 0;
      alpha = 1.0;
    }
    final bgColor = cs.surface.withValues(alpha: alpha);

    // 大标题/小标题透明度：大标题先消失，小标题再出现，无重叠
    // 大标题在 ratio 1.0→0.5 全显，0.5→0.2 渐隐
    // 小标题在 ratio 0.2→0.0 渐显（大标题已消失才开始）
    final largeOpacity = widget.largeTitle
        ? ((expandedRatio - 0.2) / 0.3).clamp(0.0, 1.0)
        : 0.0;
    final smallOpacity = widget.largeTitle
        ? ((0.2 - expandedRatio) / 0.2).clamp(0.0, 1.0)
        : 1.0;

    // 构建 slivers（追加底部内边距）
    final allSlivers = <Widget>[
      ...widget.slivers,
      if (widget.bottomPadding > 0)
        SliverToBoxAdapter(child: SizedBox(height: widget.bottomPadding)),
    ];

    return Stack(
      children: [
        // 底层：CustomScrollView（透明 SliverAppBar 仅提供布局占位）
        CustomScrollView(
          controller: _scrollController,
          physics: widget.physics,
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: widget.largeTitle ? expandedHeight : null,
              toolbarHeight: collapsedHeight,
              forceMaterialTransparency: true,
              primary: true,
              automaticallyImplyLeading: false,
            ),
            ...allSlivers,
          ],
        ),
        // 顶层：模糊遮罩 + 标题
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: sigma, sigmaY: sigma),
              child: Container(
                height: totalHeight,
                color: bgColor,
                child: widget.largeTitle
                    ? _buildLargeTitleLayout(
                        context: context,
                        cs: cs,
                        statusBarHeight: statusBarHeight,
                        barHeight: barHeight,
                        largeOpacity: largeOpacity,
                        smallOpacity: smallOpacity,
                      )
                    : _buildSmallTitleLayout(
                        context: context,
                        cs: cs,
                        statusBarHeight: statusBarHeight,
                      ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}















// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
