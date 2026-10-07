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
    _tabController = fixtureTabController;
  }

  late TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0, // Adds elevation (shadow effect)
        leading: IconButton(
          // Back arrow button
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            /* spm: non-rebuild body erased */
          },
        ),
        title: const Column(
          // Title with a subtitle
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Build Design'), // Main title
            Text(
              'Project:45', // Subtitle text
              style: TextStyle(fontSize: 10),
            ),
          ],
        ),
        actions: [
          IconButton(
            // "Do" button
            icon: const Icon(Icons.redo),
            onPressed: () {
              /* spm: non-rebuild body erased */
            },
          ),
          IconButton(
            // "Undo" button
            icon: const Icon(Icons.undo),
            onPressed: () {
              /* spm: non-rebuild body erased */
            },
          ),
          IconButton(
            // "Save" button
            icon: const Icon(Icons.save),
            onPressed: () {
              /* spm: non-rebuild body erased */
            },
          ),
          PopupMenuButton<String>(
            // Options menu
            onSelected: (value) {
              /* spm: non-rebuild body erased */
            },
            itemBuilder: (BuildContext context) {
              return {'Option 1', 'Option 2', 'Option 3'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'View'),
            Tab(text: 'Event'),
            Tab(text: 'Component'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          ViewScreen(), // Using the ViewScreen widget
          EventScreen(), // Using the EventScreen widget
          ComponentScreen(), // Using the ComponentScreen widget
        ],
      ),
    );
  }
}

class ViewScreen extends StatelessWidget {
  const ViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1, // Adjusted to a smaller fraction
            child: DraggableWidgets(),
          ),
          Expanded(
            flex: 3, // Increased proportion for MobileFrame for more space
            child: MobileFrame(),
          ),
        ],
      ),
    );
  }
}

class DraggableWidgets extends StatelessWidget {
  const DraggableWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(3.0),
      child: Column(children: [...WidgetFactory.getDraggableWidgets()]),
    );
  }
}

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Event Screen Content1'), // Replace with actual content
    );
  }
}

class ComponentScreen extends StatelessWidget {
  const ComponentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Component Screen Content1'), // Replace with actual content
    );
  }
}

class MobileFrame extends StatefulWidget {
  const MobileFrame({super.key});

  @override
  _MobileFrameState createState() => _MobileFrameState();
}

class _MobileFrameState extends State<MobileFrame> {
  List<Map<String, dynamic>> droppedWidgets = []; // Store widget data

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final width = constraints.maxWidth * 0.8;
            final height = constraints.maxHeight * 0.8;
            final borderRadius = width * 0.05; // Responsive corner radius

            return Stack(
              children: [
                // Mobile frame
                CustomPaint(
                  size: Size(width, height),
                  painter: MobileFramePainter(borderRadius: borderRadius),
                ),
                // Status Bar
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: height * 0.05, // Responsive height for status bar
                    decoration: BoxDecoration(
                      color: Colors.blue[900], // Darker blue for the status bar
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(borderRadius),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          spreadRadius: 2,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.signal_cellular_4_bar,
                              color: Colors.white,
                            ),
                            SizedBox(width: 4),
                            Icon(Icons.wifi, color: Colors.white),
                          ],
                        ),
                        const Text(
                          '100%',
                          style: TextStyle(color: Colors.white),
                        ),
                        const Icon(Icons.battery_full, color: Colors.white),
                      ],
                    ),
                  ),
                ),
                // Draggable area
                Positioned(
                  top: height * 0.05, // Adjust based on the status bar height
                  left: 10,
                  right: 10,
                  bottom: 10,
                  child: DragTarget<String>(
                    onAcceptWithDetails: (details) {
                      /* spm: non-rebuild body erased */
                    },
                    builder: (context, candidateData, rejectedData) {
                      return Stack(
                        children: [
                          // Display the dropped widgets
                          ...droppedWidgets.map((widgetData) {
                            return Positioned(
                              left: widgetData['position']['left'],
                              top: widgetData['position']['top'],
                              child: Container(
                                margin: const EdgeInsets.all(4.0),
                                width: width * 0.25,
                                height: height * 0.15,
                                // Placeholder for widget creation
                                color: Colors
                                    .grey[300], // Placeholder color for the widget
                              ),
                            );
                          }).toList(),
                          // Feedback for dragging
                          if (candidateData.isNotEmpty)
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Text('Release to drop here'),
                            ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class MobileFramePainter extends CustomPainter {
  final double borderRadius;

  MobileFramePainter({required this.borderRadius});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    final Rect mobileRect = Rect.fromLTWH(0, 0, size.width, size.height);
    final RRect roundedRect = RRect.fromRectAndRadius(
      mobileRect,
      Radius.circular(borderRadius),
    );

    // Draw the frame
    canvas.drawRRect(roundedRect, paint);

    // Draw the screen area
    final screenRect = Rect.fromLTWH(10, 10, size.width - 20, size.height - 20);
    final RRect screenRoundedRect = RRect.fromRectAndRadius(
      screenRect,
      const Radius.circular(20),
    );
    paint.color = Colors.grey.shade100;
    paint.style = PaintingStyle.fill;
    canvas.drawRRect(screenRoundedRect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}







// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
