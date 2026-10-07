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

  String _formatDate(DateTime deadline) {
    final now = DateTime.now();
    if (deadline.year == now.year &&
        deadline.month == now.month &&
        deadline.day == now.day) {
      return 'Today, ${deadline.hour}:${deadline.minute.toString().padLeft(2, '0')}';
    } else {
      return '${deadline.month}/${deadline.day}/${deadline.year}, ${deadline.hour}:${deadline.minute.toString().padLeft(2, '0')}';
    }
  }

  void _showAddEventDialog() {
    /* spm: non-rebuild body erased */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectedColor,
      appBar: AppBar(
        backgroundColor: selectedColor,
        title: Text(
          'Events',
          style: TextStyle(color: textColor, fontFamily: fontNormal),
        ),
      ),
      body: ListView.builder(
        itemCount: _events.length,
        itemBuilder: (context, index) {
          final event = _events[index];
          return ListTile(
            title: Text(
              event.name,
              style: TextStyle(color: textColor, fontFamily: fontNormal),
            ),
            subtitle: Text(
              _formatDate(event.deadline),
              style: TextStyle(color: textColor, fontFamily: fontNormal),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.check,
                    color: event.isCompleted
                        ? Colors.green[300]
                        : Colors.grey[500],
                  ),
                  onPressed: () {
                    /* spm: non-rebuild body erased */
                  },
                ),
                IconButton(
                  icon: Icon(Icons.delete, color: Colors.red[300]),
                  onPressed: () {
                    /* spm: non-rebuild body erased */
                  },
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddEventDialog,
        child: Text(
          'Add Event',
          style: TextStyle(color: textColor, fontFamily: fontNormal),
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
