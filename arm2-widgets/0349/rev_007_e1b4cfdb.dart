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
  late final List<Event> events;

  @override
  void initState() {
    super.initState();
    initialDate = fixtureInitialDate;
    bgColor = fixtureBgColor;
    textColor = fixtureTextColor;
    fontFamily = fixtureFontFamily;
    events = fixtureEvents;
    selectedDate = fixtureSelectedDate;
  }

  late DateTime selectedDate;

  void _showEventsBottomSheet(DateTime date) {
    final eventsOnThisDay = events
        .where(
          (event) =>
              event.deadline.year == date.year &&
              event.deadline.month == date.month &&
              event.deadline.day == date.day,
        )
        .toList();

    showModalBottomSheet(
      context: context,
      backgroundColor: bgColor,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Events on ${DateFormat('MMM dd, yyyy').format(date)}",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: fontFamily,
                  color: textColor,
                ),
              ),
              const SizedBox(height: 10),
              ...eventsOnThisDay.map(
                (event) => ListTile(
                  title: Text(
                    event.name,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: fontFamily,
                      color: textColor,
                    ),
                  ),
                  subtitle: Text(
                    "${event.description}\n${_formatDate(event.deadline)}",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: fontFamily,
                      color: textColor.withOpacity(0.7),
                    ),
                  ),
                ),
              ),
              if (eventsOnThisDay.isEmpty) const Text("No events for this day"),
              Expanded(child: Container()),
            ],
          ),
        );
      },
    );
  }

  String _formatDate(DateTime dateTime) {
    int hour = dateTime.hour;
    int minute = dateTime.minute;
    String period = hour >= 12 ? 'PM' : 'AM';

    hour = hour % 12;
    hour = hour == 0 ? 12 : hour;

    String time = '$hour:${minute.toString().padLeft(2, '0')} $period';

    String date = '';

    if (dateTime.year == DateTime.now().year &&
        dateTime.month == DateTime.now().month &&
        dateTime.day == DateTime.now().day) {
      date = 'Today';
    } else if (dateTime.year == DateTime.now().year &&
        dateTime.month == DateTime.now().month &&
        dateTime.day == DateTime.now().day + 1) {
      date = 'Tomorrow';
    } else {
      date = '${DateFormat.MMM().format(dateTime)} ${dateTime.day}';
    }

    return '$date • $time';
  }

  List<TableRow> _buildCalendarDays(int daysInMonth, int startWeekday) {
    List<TableRow> rows = [];
    List<Widget> days = List.generate(startWeekday, (index) => Container());

    for (int day = 1; day <= daysInMonth; day++) {
      final currentDate = DateTime(selectedDate.year, selectedDate.month, day);
      bool hasEvent = events.any(
        (event) =>
            event.deadline.year == currentDate.year &&
            event.deadline.month == currentDate.month &&
            event.deadline.day == currentDate.day,
      );

      days.add(
        GestureDetector(
          onTap: hasEvent ? () => _showEventsBottomSheet(currentDate) : null,
          child: Stack(
            alignment: Alignment.center,
            children: [
              if (hasEvent)
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentDate.day == DateTime.now().day
                        ? textColor.withOpacity(0.5)
                        : textColor,
                  ),
                ),
              Text(
                '$day',
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: fontFamily,
                  color: hasEvent ? bgColor : textColor,
                ),
              ),
            ],
          ),
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
                    fontFamily: fontFamily,
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
                          fontFamily: fontFamily,
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
