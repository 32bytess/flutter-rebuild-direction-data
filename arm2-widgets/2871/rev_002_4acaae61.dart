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
    _scaffoldKey = fixtureScaffoldKey;
    selectedActivity = fixtureSelectedActivity;
  }

  late GlobalKey<ScaffoldState> _scaffoldKey;

  late TabController _tabController;

  late String selectedActivity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Assign the key to the Scaffold
      appBar: AppBar(
        elevation: 4.0, // Adds elevation (shadow effect)
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            /* spm: non-rebuild body erased */
          },
        ),
        title: const Column(
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
            icon: const Icon(Icons.redo),
            onPressed: () {
              /* spm: non-rebuild body erased */
            },
          ),
          IconButton(
            icon: const Icon(Icons.undo),
            onPressed: () {
              /* spm: non-rebuild body erased */
            },
          ),
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {
              /* spm: non-rebuild body erased */
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert), // Options menu icon
            onPressed: () {
              /* spm: non-rebuild body erased */
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
      endDrawer: const BuildNavigationScreen(), // Link to the new drawer screen
      body: TabBarView(
        controller: _tabController,
        children: const [
          ViewScreen(), // Using the ViewScreen widget
          EventScreen(), // Using the EventScreen widget
          ComponentScreen(), // Using the ComponentScreen widget
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Row(
            children: [
              Icon(
                Icons.mobile_friendly_rounded,
                size: 24.0,
              ), // Small icon on the left
              const SizedBox(width: 8.0),
              Expanded(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: selectedActivity,
                    onChanged: (String? newValue) {
                      /* spm: non-rebuild body erased */
                    },
                    items: <String>['main.dart', 'splash.dart']
                        .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(fontSize: 16.0),
                            ),
                          );
                        })
                        .toList(),
                    isExpanded:
                        true, // Ensures the dropdown spans available width
                  ),
                ),
              ),
              const SizedBox(width: 8.0),
              ElevatedButton(
                onPressed: () {
                  /* spm: non-rebuild body erased */
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Button color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4), // Rounded corners
                  ),
                  padding: EdgeInsets.zero, // Remove padding
                ),
                child: const SizedBox(
                  width: 50, // Square button size
                  height: 50,
                  child: Center(
                    child: Text(
                      'Run',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BuildNavigationScreen extends StatelessWidget {
  const BuildNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Drawer Header with reduced height
          Container(
            height: 40, // Set the desired height here
            color: Colors.blue,
            child: const Padding(
              padding: EdgeInsets.all(8.0), // Padding inside the header
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Configuration',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ), // Reduced font size
                ),
              ),
            ),
          ),
          // Library Button with subtitle
          ListTile(
            leading: const Icon(Icons.library_books),
            title: const Text('Library'),
            subtitle: const Text('component Settings'),
            onTap: () {
              /* spm: non-rebuild body erased */
            },
          ),
          // Component Settings Button with subtitle
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Component Settings'),
            subtitle: const Text('Manage component settings'),
            onTap: () {
              /* spm: non-rebuild body erased */
            },
          ),
          // View Button with subtitle
          ListTile(
            leading: const Icon(Icons.view_comfy),
            title: const Text('View'),
            subtitle: const Text('Manage multiple screens'),
            onTap: () {
              /* spm: non-rebuild body erased */
            },
          ),
          // Event Button with subtitle
          ListTile(
            leading: const Icon(Icons.event),
            title: const Text('Event'),
            subtitle: const Text('Manage events'),
            onTap: () {
              /* spm: non-rebuild body erased */
            },
          ),
          // Media Button with subtitle
          ListTile(
            leading: const Icon(Icons.photo),
            title: const Text('Media'),
            subtitle: const Text('Photos and Icons'),
            onTap: () {
              /* spm: non-rebuild body erased */
            },
          ),
          // Source Code Button with subtitle
          ListTile(
            leading: const Icon(Icons.code),
            title: const Text('Show Source Code'),
            subtitle: const Text(
              'View all types of code (e.g., Dart, JavaScript)',
            ),
            onTap: () {
              /* spm: non-rebuild body erased */
            },
          ),
        ],
      ),
    );
  }
}

class ViewScreen extends StatelessWidget {
  const ViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          spreadRadius: 2,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.signal_cellular_4_bar,
                              color: Colors.white,
                            ),
                            SizedBox(width: 4),
                            Icon(Icons.wifi, color: Colors.white),
                          ],
                        ),
                        Text('100%', style: TextStyle(color: Colors.white)),
                        Icon(Icons.battery_full, color: Colors.white),
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
                          }),
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
