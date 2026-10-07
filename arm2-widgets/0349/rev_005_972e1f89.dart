// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'package:flutter/material.dart';
part 'dependencies.dart';


class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  late final DateTime initialDate;
  late final Color bgColor;
  late final Color textColor;
  late final String fontFamily;
  late final List<DateTime> eventDates;

  @override
  void initState() {
    super.initState();
    initialDate = fixtureInitialDate;
    bgColor = fixtureBgColor;
    textColor = fixtureTextColor;
    fontFamily = fixtureFontFamily;
    eventDates = fixtureEventDates;
    selectedDate = fixtureSelectedDate;
  }

  late DateTime selectedDate;

  List<TableRow> _buildCalendarDays(int daysInMonth, int startWeekday) {
    List<TableRow> rows = [];
    List<Widget> days = List.generate(startWeekday, (index) => Container());

    for (int day = 1; day <= daysInMonth; day++) {
      final currentDate = DateTime(selectedDate.year, selectedDate.month, day);
      bool hasEvent = eventDates.any(
        (date) =>
            date.year == currentDate.year &&
            date.month == currentDate.month &&
            date.day == currentDate.day,
      );

      days.add(
        Column(
          children: [
            hasEvent
                ? Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: textColor,
                    ),
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      '$day',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: fontNormal,
                        color: bgColor,
                      ),
                    ),
                  )
                : GestureDetector(
                    onTap: () {
                      /* spm: non-rebuild body erased */
                    },
                    child: Text(
                      '$day',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: fontNormal,
                        color: textColor,
                      ),
                    ),
                  ),
          ],
        ),
      );

      if (days.length == 7 || day == daysInMonth) {
        if (days.length < 7) {
          days.addAll(List.generate(7 - days.length, (index) => Container()));
        }
        rows.add(TableRow(children: days));
        days = [];
      }
    }

    return rows;
  }

  @override
  Widget build(BuildContext context) {
    final daysInMonth = DateUtils.getDaysInMonth(
      selectedDate.year,
      selectedDate.month,
    );
    final firstDayOfMonth = DateTime(selectedDate.year, selectedDate.month, 1);
    final startWeekday = firstDayOfMonth.weekday % 7;
    final monthName =
        "${DateFormat.MMM().format(selectedDate).toUpperCase()} '${DateFormat('yy').format(selectedDate)}";
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Month Navigation
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: textColor.withOpacity(0.5),
                  size: 24,
                ),
                onPressed: () {
                  /* spm: non-rebuild body erased */
                },
              ),
              GestureDetector(
                onTap: () {
                  /* spm: non-rebuild body erased */
                },
                child: Text(
                  monthName,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: fontNormal,
                    fontWeight: FontWeight.w400,
                    color: textColor,
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: textColor.withOpacity(0.5),
                  size: 24,
                ),
                onPressed: () {
                  /* spm: non-rebuild body erased */
                },
              ),
            ],
          ),
          const SizedBox(height: 5),

          // Days of the Week Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
                .map(
                  (day) => Expanded(
                    child: Center(
                      child: Text(
                        day,
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: fontNormal,
                          color: textColor.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 5),

          // Calendar Days
          Table(
            columnWidths: const {
              0: FractionColumnWidth(1 / 7),
              1: FractionColumnWidth(1 / 7),
              2: FractionColumnWidth(1 / 7),
              3: FractionColumnWidth(1 / 7),
              4: FractionColumnWidth(1 / 7),
              5: FractionColumnWidth(1 / 7),
              6: FractionColumnWidth(1 / 7),
            },
            children: _buildCalendarDays(daysInMonth, startWeekday),
          ),
        ],
      ),
    );
  }
}
