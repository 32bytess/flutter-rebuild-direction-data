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
    _scaffoldKey = fixtureScaffoldKey;
    _selectedIndex = fixtureSelectedIndex;
  }

  late GlobalKey<ScaffoldState> _scaffoldKey;

  static const List<Widget> _screens = [
    ClockScreen(),
    AlarmsScreen(),
    Placeholder(),
    Placeholder(),
  ];

  static const List<String> _topBarTitles = [
    "Clock",
    "Alarms",
    "Timer",
    "Stopwatch",
  ];

  late int _selectedIndex;

  Padding _buildAddMoreBtn(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: InkWell(
        onTap: () {
          /* spm: non-rebuild body erased */
        },
        child: Container(
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            borderRadius: BorderRadius.circular(50),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
          child: const Text("ADD MORE", style: TextStyle(letterSpacing: 1.5)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    void _onNavBarTap(index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      bottomNavigationBar: BottomBar(
        theme: theme,
        callback: (index) => _onNavBarTap(index),
      ),
      appBar: TopBar(
        title: _topBarTitles[_selectedIndex],
        scaffoldKey: _scaffoldKey,
      ),
      key: _scaffoldKey,
      endDrawer: const DrawerPopup(),
      floatingActionButton: _buildAddMoreBtn(theme),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: _screens.elementAt(_selectedIndex),
    );
  }
}

class BottomBar extends StatefulWidget {
  const BottomBar({super.key, required this.theme, required this.callback});

  final ThemeData theme;
  final Function(int) callback;

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: widget.theme.colorScheme.surface,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.red,
      currentIndex: _selectedIndex,
      onTap: (index) {
        /* spm: non-rebuild body erased */
      },
      showUnselectedLabels: true, // Show unselected labels as well
      items: const [
        BottomNavigationBarItem(icon: SizedBox.shrink(), label: "ALARMS"),
        BottomNavigationBarItem(icon: SizedBox.shrink(), label: "CLOCK"),
        BottomNavigationBarItem(icon: SizedBox.shrink(), label: "TIMER"),
        BottomNavigationBarItem(icon: SizedBox.shrink(), label: "STOPWATCH"),
      ],
    );
  }
}

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({super.key, required this.title, this.scaffoldKey});

  final String title;
  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () {
              /* spm: non-rebuild body erased */
            },
          ),
        ],
        leading: IconButton(
          onPressed: () {
            /* spm: non-rebuild body erased */
          },
          icon: const Icon(Icons.add),
        ),
        title: Text(
          title.toUpperCase(),
          style: Theme.of(context).textTheme.labelLarge,
        ),
        centerTitle: true,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class DrawerPopup extends StatelessWidget {
  const DrawerPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          ListTile(
            title: Text("Settings"),
            leading: Icon(Icons.settings_outlined),
          ),
          ListTile(title: Text("About"), leading: Icon(Icons.info_outline)),
        ],
      ),
    );
  }
}

class ClockScreen extends StatelessWidget {
  const ClockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    DateTime now = DateTime.now();
    String formattedDate = DateFormat("EEE, MMM dd").format(now);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const WorldMap(),
              const SizedBox(height: 20),
              Row(
                children: [
                  InfoDisplayClock(
                    foregroundColor: Colors.white,
                    color: theme.colorScheme.tertiary,
                    text: formattedDate,
                  ),
                  const SizedBox(width: 10),
                  InfoDisplayClock(
                    color: theme.colorScheme.secondary,
                    foregroundColor: Colors.black,
                    text: "1 alarm",
                    icon: Icons.circle,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 1200,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return const TimeZoneClock(
                      time: "12:21",
                      cityName: "Italy",
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AlarmsScreen extends StatelessWidget {
  const AlarmsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "SLEEP TIME",
                    style: TextStyle(color: Color.fromARGB(255, 128, 128, 128)),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.secondary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(45.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                "08:15",
                                style: theme.textTheme.titleLarge?.copyWith(
                                  color: Colors.black,
                                  fontSize: 40,
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                "MON, TUE, WED",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                          Switch(
                            value: true,
                            onChanged: (value) {
                              /* spm: non-rebuild body erased */
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WorldMap extends StatelessWidget {
  const WorldMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.black,
      child: SvgPicture.asset(
        "lib/assets/map/map.svg",
        width: 400,
        colorFilter: const ColorFilter.mode(
          Color.fromARGB(255, 85, 85, 85),
          BlendMode.srcIn,
        ),
      ),
    );
  }
}

class InfoDisplayClock extends StatelessWidget {
  const InfoDisplayClock({
    super.key,
    required this.color,
    required this.text,
    this.icon,
    required this.foregroundColor,
  });

  final Color color;
  final Color foregroundColor;
  final String text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text.toUpperCase(),
                style: TextStyle(color: foregroundColor),
              ),
              if (icon != null) ...[
                const SizedBox(width: 15),
                Icon(icon, color: foregroundColor, size: 15),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class TimeZoneClock extends StatelessWidget {
  const TimeZoneClock({super.key, required this.cityName, required this.time});

  final String cityName;
  final String time;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.tertiary,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 7,
                  height: 7,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(width: 10),
                Text(cityName.toUpperCase()),
              ],
            ),
            Text(time, style: theme.textTheme.titleLarge),
          ],
        ),
      ),
    );
  }
}












// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
