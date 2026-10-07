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
    scaffoldKey = fixtureScaffoldKey;
  }

  late GlobalKey<ScaffoldState> scaffoldKey;

  ListTile _buildDrawerMenuOption(
    IconData icon,
    String title,
    String route,
    BuildContext context,
  ) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        /* spm: non-rebuild body erased */
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    GridView menuCardGrid = GridView.count(
      crossAxisCount: isLandscape ? 3 : 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      padding: const EdgeInsets.all(6),
      childAspectRatio: isLandscape ? 1.5 : 1.3,
      children: [
        MenuCard(
          icon: Icons.person_rounded,
          title: S.of(context).profile,
          route: AppRoutes.profile,
        ),
        MenuCard(
          icon: Icons.contact_page,
          title: S.of(context).contacts,
          route: AppRoutes.contacts,
        ),
        MenuCard(
          icon: Icons.link,
          title: S.of(context).pair,
          route: AppRoutes.pairing,
        ),
      ],
    );
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: SafeArea(
          child: ListView(
            children: [
              // DrawerHeader(child: Text('Main Menu')),
              _buildDrawerMenuOption(
                Icons.settings,
                S.of(context).settings,
                AppRoutes.settings,
                context,
              ),
            ],
          ),
        ),
      ),
      body: menuCardGrid,
      appBar: AppBar(
        // leading: IconButton(onPressed: ()=> scaffoldKey.currentState!.openDrawer(), icon: Icon(Icons.monetization_on)),
        title: Text(S.of(context).appName),
        actions: [
          IconButton(
            onPressed: () {
              /* spm: non-rebuild body erased */
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}

/// Widget to show a button for the main screen
///
/// {@category Widgets}
class MenuCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String route;

  const MenuCard({
    super.key,
    required this.icon,
    required this.title,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {
          /* spm: non-rebuild body erased */
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Spacer(),
              Icon(icon, size: 64),
              Text(title, textAlign: TextAlign.center),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
