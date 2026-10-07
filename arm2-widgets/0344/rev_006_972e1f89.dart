// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

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
    _events = fixtureEvents;
    selectedColor = fixtureSelectedColor;
    textColor = fixtureTextColor;
  }

  late List<Event> _events;

  late Color selectedColor;

  late Color textColor;

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

  void _showAddEventDialog() {
    /* spm: non-rebuild body erased */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectedColor,
      body: _events.isEmpty
          ? Center(
              child: Text(
                'No events added yet.',
                style: TextStyle(
                  color: textColor,
                  fontSize: 24.0,
                  fontFamily: fontNormal,
                ),
              ),
            )
          : Column(
              children: [
                Text(
                  "Events",
                  style: TextStyle(
                    color: textColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: fontNormal,
                  ),
                ),
                SizedBox(height: 16.0),
                ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.all(16.0),
                  itemCount: _events.length,
                  itemBuilder: (context, index) {
                    final event = _events[index];
                    return Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 8.0,
                      ), // Adds spacing between list items
                      decoration: BoxDecoration(
                        color: textColor.withOpacity(0.02),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            16.0,
                          ), // Ensure the ListTile matches the container radius
                        ),
                        onTap: () {
                          /* spm: non-rebuild body erased */
                        },
                        title: Text(
                          event.name,
                          style: TextStyle(
                            color: textColor,
                            fontFamily: fontNormal,
                            fontSize: 18.0,
                            decoration: event.isCompleted
                                ? TextDecoration.lineThrough
                                : TextDecoration.none,
                          ),
                        ),
                        subtitle: Text(
                          _formatDate(event.deadline),
                          style: TextStyle(
                            color: textColor,
                            fontFamily: fontNormal,
                            fontSize: 12.0,
                            decoration: event.deadline.isBefore(DateTime.now())
                                ? TextDecoration.lineThrough
                                : TextDecoration.none,
                          ),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.delete, color: textColor),
                              onPressed: () {
                                /* spm: non-rebuild body erased */
                              },
                            ),
                            IconButton(
                              icon: Icon(
                                event.isCompleted
                                    ? Icons.check_rounded
                                    : Icons.close_rounded,
                                size: 28.0,
                                color: event.isCompleted
                                    ? Colors.green[300]
                                    : Colors.red[300],
                              ),
                              onPressed: () {
                                /* spm: non-rebuild body erased */
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        child: FloatingActionButton.extended(
          onPressed: _showAddEventDialog,
          backgroundColor: textColor,
          icon: Icon(Icons.add_rounded, color: selectedColor),
          label: Text(
            'Add Event',
            style: TextStyle(color: selectedColor, fontFamily: fontNormal),
          ),
        ),
      ),
    );
  }
}

class Event {
  String name;
  String description;
  DateTime deadline;
  bool showOnHomeScreen;
  bool isCompleted;

  Event({
    required this.name,
    required this.description,
    required this.deadline,
    this.showOnHomeScreen = false,
    this.isCompleted = false,
  });

  Map<String, dynamic> toJson() => {
    'name': name,
    'description': description,
    'deadline': deadline.toIso8601String(),
    'showOnHomeScreen': showOnHomeScreen,
    'isCompleted': isCompleted,
  };

  static Event fromJson(Map<String, dynamic> json) => Event(
    name: json['name'],
    description: json['description'],
    deadline: DateTime.parse(json['deadline']),
    showOnHomeScreen: json['showOnHomeScreen'],
    isCompleted: json['isCompleted'],
  );
}
