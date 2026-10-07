// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'package:flutter/material.dart';
part 'dependencies.dart';


class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget();

  GeneratedWidget.fixture({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  late WidgetRef ref;

  @override
  void initState() {
    super.initState();
    ref = fixtureRef;
    _selectedPreset = fixtureSelectedPreset;
    _customType = fixtureCustomType;
    _customCtrl = fixtureCustomCtrl;
  }

  late String _selectedPreset;

  late DnsType _customType;

  late TextEditingController _customCtrl;

  void _save() {
    /* spm: non-rebuild body erased */
  }

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context).extension<TeapodTokens>()!;
    final isCustom = _selectedPreset == 'custom';
    final currentLabel =
        DnsServerConfig.presets.firstWhere(
              (p) => p['value'] == _selectedPreset,
              orElse: () => {'label': _selectedPreset},
            )['label']
            as String? ??
        _selectedPreset;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // ── Header strip ──────────────────────────────────
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: t.line)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'teapod.stream // dns',
                    style: AppTheme.mono(
                      size: 10,
                      color: t.textMuted,
                      letterSpacing: 1,
                    ),
                  ),
                  Text(
                    currentLabel.toLowerCase(),
                    style: AppTheme.mono(
                      size: 10,
                      color: t.textMuted,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
            ),
            // ── Breadcrumb + save ─────────────────────────────
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: t.lineSoft)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      /* spm: non-rebuild body erased */
                    },
                    child: Row(
                      children: [
                        Text(
                          '‹',
                          style: AppTheme.mono(size: 12, color: t.textMuted),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'config',
                          style: AppTheme.mono(
                            size: 10,
                            color: t.textMuted,
                            letterSpacing: 1,
                          ),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          '/',
                          style: AppTheme.mono(size: 10, color: t.textMuted),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          'dns',
                          style: AppTheme.mono(
                            size: 10,
                            color: t.text,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: _save,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 6,
                      ),
                      color: t.accent,
                      child: Text(
                        'СОХРАНИТЬ',
                        style: AppTheme.mono(
                          size: 10,
                          color: t.bg,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // ── Hero ──────────────────────────────────────────
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: t.line)),
              ),
              child: Stack(
                children: [
                  _SetCornerTicks(t: t, color: t.textMuted),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 16, 20, 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'НАСТРОЙКИ · DNS РЕЗОЛВЕР',
                          style: AppTheme.mono(
                            size: 10,
                            color: t.textMuted,
                            letterSpacing: 1.5,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'DNS',
                          style: AppTheme.sans(
                            size: 30,
                            weight: FontWeight.w500,
                            color: t.text,
                            letterSpacing: -1,
                            height: 1,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          currentLabel,
                          style: AppTheme.mono(
                            size: 11,
                            color: t.textDim,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // ── Preset list ───────────────────────────────────
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  // 0x10 PRESET
                  _SetSectionHeader(t: t, addr: '0x10', label: 'preset'),
                  for (final p in DnsServerConfig.presets) ...[
                    _DnsPresetRow(
                      t: t,
                      label: p['label'] as String,
                      value: p['value'] as String,
                      selected: _selectedPreset == p['value'],
                      onTap: () {
                        /* spm: non-rebuild body erased */
                      },
                    ),
                  ],
                  // 0x20 CUSTOM (only when custom selected)
                  if (isCustom) ...[
                    _SetSectionHeader(
                      t: t,
                      addr: '0x20',
                      label: 'custom server',
                    ),
                    // Type selector
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 14, 20, 14),
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: t.lineSoft)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ТИП ПРОТОКОЛА',
                            style: AppTheme.mono(
                              size: 10,
                              color: t.textMuted,
                              letterSpacing: 1,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: t.line),
                            ),
                            child: Row(
                              children: [
                                for (final (type, lab) in [
                                  (DnsType.udp, 'UDP'),
                                  (DnsType.doh, 'DOH'),
                                  (DnsType.dot, 'DOT'),
                                ]) ...[
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        /* spm: non-rebuild body erased */
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 10,
                                        ),
                                        decoration: BoxDecoration(
                                          color: _customType == type
                                              ? t.accentSoft
                                              : Colors.transparent,
                                          border: Border(
                                            right: type != DnsType.dot
                                                ? BorderSide(color: t.line)
                                                : BorderSide.none,
                                          ),
                                        ),
                                        child: Text(
                                          lab,
                                          textAlign: TextAlign.center,
                                          style: AppTheme.mono(
                                            size: 11,
                                            color: _customType == type
                                                ? t.accent
                                                : t.textDim,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Address field
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 14, 20, 14),
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: t.line)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'АДРЕС СЕРВЕРА',
                            style: AppTheme.mono(
                              size: 10,
                              color: t.textMuted,
                              letterSpacing: 1,
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextField(
                            controller: _customCtrl,
                            style: AppTheme.mono(size: 13, color: t.text),
                            onChanged: (_) {
                              /* spm: non-rebuild body erased */
                            },
                            decoration: InputDecoration(
                              hintText: _customType == DnsType.doh
                                  ? 'https://1.1.1.1/dns-query'
                                  : '1.1.1.1',
                              hintStyle: AppTheme.mono(
                                size: 12,
                                color: t.textMuted,
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 10,
                              ),
                              isDense: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: t.line),
                                borderRadius: BorderRadius.zero,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: t.accent),
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SetCornerTicks extends StatelessWidget {
  final TeapodTokens t;
  final Color color;
  const _SetCornerTicks({required this.t, required this.color});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: IgnorePointer(
        child: Stack(
          children: [
            Positioned(
              top: 6,
              left: 6,
              child: _SmallTick(color: color, tl: true, tr: false),
            ),
            Positioned(
              top: 6,
              right: 6,
              child: _SmallTick(color: color, tl: false, tr: true),
            ),
            Positioned(
              bottom: 6,
              left: 6,
              child: _SmallTick(
                color: color,
                tl: false,
                tr: false,
                bl: true,
                br: false,
              ),
            ),
            Positioned(
              bottom: 6,
              right: 6,
              child: _SmallTick(
                color: color,
                tl: false,
                tr: false,
                bl: false,
                br: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SmallTick extends StatelessWidget {
  final Color color;
  final bool tl, tr, bl, br;
  const _SmallTick({
    required this.color,
    this.tl = false,
    this.tr = false,
    this.bl = false,
    this.br = false,
  });

  @override
  Widget build(BuildContext context) => CustomPaint(
    size: const Size(8, 8),
    painter: _SmallTickPainter(color: color, tl: tl, tr: tr, bl: bl, br: br),
  );
}

class _SmallTickPainter extends CustomPainter {
  final Color color;
  final bool tl, tr, bl, br;
  const _SmallTickPainter({
    required this.color,
    required this.tl,
    required this.tr,
    required this.bl,
    required this.br,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final p = Paint()
      ..color = color
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;
    final w = size.width;
    final h = size.height;
    if (tl) {
      canvas.drawLine(Offset.zero, Offset(w, 0), p);
      canvas.drawLine(Offset.zero, Offset(0, h), p);
    }
    if (tr) {
      canvas.drawLine(Offset(0, 0), Offset(w, 0), p);
      canvas.drawLine(Offset(w, 0), Offset(w, h), p);
    }
    if (bl) {
      canvas.drawLine(Offset(0, h), Offset(w, h), p);
      canvas.drawLine(Offset(0, 0), Offset(0, h), p);
    }
    if (br) {
      canvas.drawLine(Offset(0, h), Offset(w, h), p);
      canvas.drawLine(Offset(w, 0), Offset(w, h), p);
    }
  }

  @override
  bool shouldRepaint(_SmallTickPainter old) => old.color != color;
}

class _SetSectionHeader extends StatelessWidget {
  final TeapodTokens t;
  final String addr;
  final String label;
  const _SetSectionHeader({
    required this.t,
    required this.addr,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 8),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: t.lineSoft)),
      ),
      child: Row(
        children: [
          Text(
            addr,
            style: AppTheme.mono(
              size: 10,
              color: t.textMuted,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(width: 8),
          Text('·', style: AppTheme.mono(size: 10, color: t.textMuted)),
          const SizedBox(width: 8),
          Text(
            label.toUpperCase(),
            style: AppTheme.mono(size: 10, color: t.textDim, letterSpacing: 1),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              '—' * 16,
              style: AppTheme.mono(size: 10, color: t.textMuted),
              overflow: TextOverflow.clip,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}

class _DnsPresetRow extends StatelessWidget {
  final TeapodTokens t;
  final String label;
  final String value;
  final bool selected;
  final VoidCallback onTap;

  const _DnsPresetRow({
    required this.t,
    required this.label,
    required this.value,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: t.lineSoft)),
        ),
        child: Row(
          children: [
            Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                border: Border.all(color: selected ? t.accent : t.line),
                color: selected ? t.accent : Colors.transparent,
              ),
              child: selected ? Icon(Icons.check, size: 12, color: t.bg) : null,
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Text(label, style: AppTheme.sans(size: 14, color: t.text)),
            ),
            Text(
              value,
              style: AppTheme.mono(
                size: 10,
                color: t.textMuted,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Тип DNS сервера
enum DnsType {
  udp, // Обычный UDP DNS (порт 53)
  doh, // DNS over HTTPS
  dot, // DNS over TLS
}


















// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
