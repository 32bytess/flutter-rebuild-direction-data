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
  late final bool autoFocusSearch;
  late final Color widgetBgColor;
  late final Color widgetTextColor;

  @override
  void initState() {
    super.initState();
    autoFocusSearch = fixtureAutoFocusSearch;
    widgetBgColor = fixtureBgColor;
    widgetTextColor = fixtureTextColor;
    apps = fixtureApps;
    searchController = fixtureSearchController;
    filter = fixtureFilter;
  }

  late List<AppInfo> apps;

  late TextEditingController searchController;

  late String filter;

  Color get bgColor => widgetBgColor;

  Color get textColor => widgetTextColor;

  @override
  Widget build(BuildContext context) {
    final filteredApps = filter.isEmpty
        ? []
        : [
            ...apps.where(
              (app) => app.name.toLowerCase().startsWith(filter.toLowerCase()),
            ),
            ...apps.where(
              (app) =>
                  app.name.toLowerCase().contains(filter.toLowerCase()) &&
                  !app.name.toLowerCase().startsWith(filter.toLowerCase()),
            ),
          ].toList();
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          Expanded(
            child: filter.isEmpty
                ? Container(
                    decoration: BoxDecoration(
                      color: bgColor,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Center(
                      child: Text(
                        "Your favorite apps will appear here",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: fontNormal,
                          color: textColor,
                        ),
                      ),
                    ),
                  )
                : ListView.builder(
                    itemCount: filteredApps.length,
                    reverse: true,
                    itemBuilder: (context, index) {
                      final app = filteredApps[index];
                      return GestureDetector(
                        onTap: () {
                          /* spm: non-rebuild body erased */
                        },
                        onLongPress: () {
                          /* spm: non-rebuild body erased */
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 4.0,
                            horizontal: 16.0,
                          ),
                          child: Text(
                            app.name,
                            style: TextStyle(
                              color: textColor,
                              fontSize: 18,
                              fontFamily: fontNormal,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 6.0,
            ),
            child: TextField(
              controller: searchController,
              autofocus: autoFocusSearch,
              decoration: InputDecoration(
                hintText: "Search apps...",
                hintStyle: TextStyle(
                  color: textColor,
                  fontFamily: fontNormal,
                  fontWeight: FontWeight.w300,
                ),
                border: InputBorder.none,
              ),
              onSubmitted: (value) {
                /* spm: non-rebuild body erased */
              },
            ),
          ),
        ],
      ),
    );
  }
}

class AppInfo {
  final String name;
  final String packageName;

  AppInfo({required this.name, required this.packageName});

  // Convert a JSON object to an AppInfo instance
  factory AppInfo.fromJson(Map<String, dynamic> json) {
    return AppInfo(name: json['name'], packageName: json['packageName']);
  }

  // Convert an AppInfo instance to a JSON object
  Map<String, dynamic> toJson() {
    return {'name': name, 'packageName': packageName};
  }
}
