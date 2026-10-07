// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'dart:async';
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
    _selectedDate = fixtureSelectedDate;
    _selectedTime = fixtureSelectedTime;
    _repeatRule = fixtureRepeatRule;
    _titleCtrl = fixtureTitleCtrl;
    _descCtrl = fixtureDescCtrl;
    _reminder = fixtureReminder;
    _repeatWeekdays = fixtureRepeatWeekdays;
  }

  late TextEditingController _titleCtrl;

  late TextEditingController _descCtrl;

  late bool _reminder;

  late DateTime? _selectedDate;

  late TimeOfDay? _selectedTime;

  late String? _repeatRule;

  late Set<int> _repeatWeekdays;

  static const Color blueColor = Color(0xFF2563EB);

  static const Color black = Colors.black;

  static const Color white = Colors.white;

  static const double kRadius = 16;

  EdgeInsets get _screenHPad {
    final w = MediaQuery.of(context).size.width;
    final hpad = (w * 0.05).clamp(16.0, 24.0); // 5% with sensible bounds
    return EdgeInsets.symmetric(horizontal: hpad);
  }

  String _formatDate(DateTime d) => DateFormat('dd/MM/yy').format(d);

  String _formatTime(TimeOfDay t) {
    final dt = DateTime(0, 1, 1, t.hour, t.minute);
    return DateFormat('h:mm a').format(dt);
  }

  Future<void> _pickDate() async {
    /* spm: non-rebuild body erased */
  }

  Future<void> _pickTime() async {
    /* spm: non-rebuild body erased */
  }

  void _toggleReminder() {
    /* spm: non-rebuild body erased */
  }

  Future<void> _save() async {
    /* spm: non-rebuild body erased */
  }

  @override
  Widget build(BuildContext context) {
    final spacing = 16.0;
    final bigSpacing = 24.0;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        surfaceTintColor: white,
        leading: IconButton(
          onPressed: () {
            /* spm: non-rebuild body erased */
          },
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          tooltip: 'Back',
        ),
        title: const Text(
          'Create to-do',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
        centerTitle: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 24).add(_screenHPad),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Set Reminder button
              _ReminderButton(enabled: _reminder, onTap: _toggleReminder),
              SizedBox(height: bigSpacing),

              // Title / Description
              const _FieldLabel(text: 'Tell us about your task'),
              SizedBox(height: spacing),
              _InputField(
                controller: _titleCtrl,
                hint: 'Title',
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: spacing),
              _InputField(
                controller: _descCtrl,
                hint: 'Description',
                maxLines: 3,
              ),
              SizedBox(height: bigSpacing),

              // Repeat section
              const _FieldLabel(text: 'Repeat'),
              SizedBox(height: spacing),

              // Frequency row (Daily / Weekly / Monthly / No repeat)
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  _RepeatChip(
                    label: 'Daily',
                    selected: _repeatRule == 'Daily',
                    onTap: () {
                      /* spm: non-rebuild body erased */
                    },
                  ),
                  _RepeatChip(
                    label: 'Weekly',
                    selected: _repeatRule == 'Weekly',
                    onTap: () {
                      /* spm: non-rebuild body erased */
                    },
                  ),
                  _RepeatChip(
                    label: 'Monthly',
                    selected: _repeatRule == 'Monthly',
                    onTap: () {
                      /* spm: non-rebuild body erased */
                    },
                  ),
                  _RepeatChip(
                    label: 'No repeat',
                    selected: _repeatRule == null || _repeatRule == 'No repeat',
                    onTap: () {
                      /* spm: non-rebuild body erased */
                    },
                  ),
                ],
              ),
              SizedBox(height: spacing),

              // Weekday row (shown always; only applied when Weekly)
              // Order: Sunday..Saturday, with dark selected chips per rules
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  _WeekdayChip(
                    label: 'Sunday',
                    selected: _repeatWeekdays.contains(7),
                    onTap: () {
                      /* spm: non-rebuild body erased */
                    },
                  ),
                  _WeekdayChip(
                    label: 'Monday',
                    selected: _repeatWeekdays.contains(1),
                    onTap: () {
                      /* spm: non-rebuild body erased */
                    },
                  ),
                  _WeekdayChip(
                    label: 'Tuesday',
                    selected: _repeatWeekdays.contains(2),
                    onTap: () {
                      /* spm: non-rebuild body erased */
                    },
                  ),
                  _WeekdayChip(
                    label: 'Wednesday',
                    selected: _repeatWeekdays.contains(3),
                    onTap: () {
                      /* spm: non-rebuild body erased */
                    },
                  ),
                  _WeekdayChip(
                    label: 'Thursday',
                    selected: _repeatWeekdays.contains(4),
                    onTap: () {
                      /* spm: non-rebuild body erased */
                    },
                  ),
                  _WeekdayChip(
                    label: 'Friday',
                    selected: _repeatWeekdays.contains(5),
                    onTap: () {
                      /* spm: non-rebuild body erased */
                    },
                  ),
                  _WeekdayChip(
                    label: 'Saturday',
                    selected: _repeatWeekdays.contains(6),
                    onTap: () {
                      /* spm: non-rebuild body erased */
                    },
                  ),
                ],
              ),
              SizedBox(height: bigSpacing),

              // Date & Time
              const _FieldLabel(text: 'Date & Time'),
              SizedBox(height: spacing),

              // Date field
              _PickerField(
                hint: 'Set date',
                valueText: _selectedDate != null
                    ? _formatDate(_selectedDate!)
                    : null,
                iconAsset: 'assets/calendar.svg',
                onTap: _pickDate,
                onClear: _selectedDate != null
                    ? () => setState(() => _selectedDate = null)
                    : null,
              ),
              SizedBox(height: spacing),

              // Time field
              _PickerField(
                hint: 'Set time',
                valueText: _selectedTime != null
                    ? _formatTime(_selectedTime!)
                    : null,
                iconAsset: 'assets/clock.svg',
                onTap: _pickTime,
                onClear: _selectedTime != null
                    ? () => setState(() => _selectedTime = null)
                    : null,
              ),

              // Bottom spacing
              SizedBox(height: width * 0.1),
            ],
          ),
        ),
      ),
      // Save button fixed to bottom visually via a large button in bottomNavigationBar
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
        child: SafeArea(
          //minimum: _screenHPad.add(const EdgeInsets.only(bottom: 16)),
          child: SizedBox(
            height: 56,
            child: FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: const Color(0xFF3B82F6), // Blue 500
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              onPressed: _save,
              child: const Text('Save'),
            ),
          ),
        ),
      ),
    );
  }
}

class _ReminderButton extends StatelessWidget {
  const _ReminderButton({required this.enabled, required this.onTap});
  final bool enabled;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final bg = enabled ? _AddTaskPageState.blueColor : Colors.white;
    final fg = enabled ? Colors.white : Colors.black;

    return Align(
      alignment: Alignment.centerLeft,
      child: Material(
        color: bg,
        shape: StadiumBorder(side: BorderSide(color: Colors.grey.shade300)),
        child: InkWell(
          onTap: onTap,
          customBorder: const StadiumBorder(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Set Reminder',
                  style: TextStyle(color: fg, fontWeight: FontWeight.w700),
                ),
                const SizedBox(width: 8),
                SvgPicture.asset(
                  enabled ? 'assets/bell_white.svg' : 'assets/bell.svg',
                  height: 18,
                  width: 18,
                  colorFilter: enabled
                      ? null
                      : const ColorFilter.mode(Colors.black87, BlendMode.srcIn),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _FieldLabel extends StatelessWidget {
  const _FieldLabel({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.w700,
        fontSize: 14,
      ),
    );
  }
}

class _InputField extends StatelessWidget {
  const _InputField({
    required this.controller,
    required this.hint,
    this.maxLines = 1,
    this.textInputAction,
  });

  final TextEditingController controller;
  final String hint;
  final int maxLines;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textInputAction: textInputAction,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Color(0xFF2563EB), width: 2),
        ),
      ),
      style: const TextStyle(fontSize: 14, height: 1.4),
    );
  }
}

class _RepeatChip extends StatelessWidget {
  const _RepeatChip({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final bg = selected ? Colors.black : Colors.white;
    final fg = selected ? Colors.white : Colors.black;

    return Material(
      color: bg,
      shape: StadiumBorder(side: BorderSide(color: Colors.grey.shade300)),
      child: InkWell(
        onTap: onTap,
        customBorder: const StadiumBorder(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Text(
            label,
            style: TextStyle(color: fg, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}

class _WeekdayChip extends StatelessWidget {
  const _WeekdayChip({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final bg = selected ? Colors.black : Colors.white;
    final fg = selected ? Colors.white : Colors.black;

    return Material(
      color: bg,
      shape: StadiumBorder(side: BorderSide(color: Colors.grey.shade300)),
      child: InkWell(
        onTap: onTap,
        customBorder: const StadiumBorder(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Text(
            label,
            style: TextStyle(color: fg, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}

class _PickerField extends StatelessWidget {
  const _PickerField({
    required this.hint,
    required this.iconAsset,
    required this.onTap,
    this.valueText,
    this.onClear,
  });

  final String hint;
  final String iconAsset;
  final String? valueText;
  final VoidCallback onTap;
  final VoidCallback? onClear;

  @override
  Widget build(BuildContext context) {
    final hasValue = valueText != null && valueText!.isNotEmpty;

    return Material(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.grey.shade300),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
          child: Row(
            children: [
              SvgPicture.asset(
                iconAsset,
                height: 18,
                width: 18,
                colorFilter: const ColorFilter.mode(
                  Colors.black87,
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  hasValue ? valueText! : hint,
                  style: TextStyle(
                    color: hasValue ? Colors.black : Colors.black54,
                    fontWeight: hasValue ? FontWeight.w600 : FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
              if (hasValue && onClear != null)
                IconButton(
                  tooltip: 'Clear',
                  icon: const Icon(
                    Icons.close,
                    size: 20,
                    color: Colors.black54,
                  ),
                  onPressed: onClear,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

















// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
