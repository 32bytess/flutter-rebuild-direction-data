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
    recentApps = fixtureRecentApps;
    favoriteApps = fixtureFavoriteApps;
    searchController = fixtureSearchController;
    filter = fixtureFilter;
    showAllApps = fixtureShowAllApps;
  }

  late List<AppInfo> apps;

  late List<AppInfo> recentApps;

  late List<AppInfo> favoriteApps;

  late TextEditingController searchController;

  late String filter;

  late bool showAllApps;

  Color get bgColor => widgetBgColor;

  Color get textColor => widgetTextColor;

  @override
  Widget build(BuildContext context) {
    filter = filter.trim();
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
    final letters =
        apps
            .map(
              (app) => app.name[0].toUpperCase(),
            ) // Extracts the first letter of each app name and converts it to uppercase.
            .toSet() // Converts to a Set to remove duplicates, ensuring each letter appears only once.
            .toList() // Converts back to a List.
          ..sort();
    if (showAllApps) {
      return Scaffold(
        backgroundColor: widgetBgColor,
        body: Column(
          children: [
            Text(
              "All Apps",
              style: TextStyle(
                color: widgetTextColor,
                fontSize: 18,
                fontFamily: fontNormal,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: apps.length,
                      itemBuilder: (context, index) {
                        final app = apps[index];

                        return GestureDetector(
                          onTap: () {
                            /* spm: non-rebuild body erased */
                          },
                          onLongPress: () {
                            /* spm: non-rebuild body erased */
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 2.0,
                              horizontal: 16.0,
                            ),
                            child: Expanded(
                              child: Text(
                                app.name,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: widgetTextColor,
                                  fontSize: 18,
                                  fontFamily: fontNormal,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: 30,
                    child: ListView.builder(
                      itemCount: letters.length,
                      itemBuilder: (context, index) {
                        final letter = letters[index];
                        return GestureDetector(
                          onTap: () {
                            /* spm: non-rebuild body erased */
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 2.0),
                            child: Text(
                              letter,
                              style: TextStyle(
                                color: widgetTextColor,
                                fontSize: 16,
                                fontFamily: fontNormal,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              /* spm: non-rebuild body erased */
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Text(
                "All Apps",
                style: TextStyle(
                  color: textColor,
                  fontSize: 18,
                  fontFamily: fontNormal,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // Displaying 10 most recently installed apps
          if (recentApps.isNotEmpty && filter.isEmpty)
            Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: recentApps.map((app) {
                    return GestureDetector(
                      onTap: () {
                        /* spm: non-rebuild body erased */
                      },
                      onLongPress: () {
                        /* spm: non-rebuild body erased */
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
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
                  }).toList(),
                ),
              ),
            ),

          if (recentApps.isEmpty) Expanded(child: Container()),

          if (filter.isNotEmpty)
            Expanded(
              child: ListView.builder(
                itemCount: filteredApps.length,
                reverse: true,
                itemBuilder: (context, index) {
                  final app = filteredApps[index];
                  final isFavorite = favoriteApps.any(
                    (fav) => fav.packageName == app.packageName,
                  );

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
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            child: Icon(
                              isFavorite
                                  ? Icons.star_rounded
                                  : Icons.star_outline_rounded,
                              color: isFavorite ? Colors.orange : textColor,
                            ),
                            onTap: () {
                              /* spm: non-rebuild body erased */
                            },
                          ),
                          const SizedBox(width: 8.0),
                          Expanded(
                            child: Text(
                              app.name,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: textColor,
                                fontSize: 18,
                                fontFamily: fontNormal,
                              ),
                            ),
                          ),
                        ],
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
              cursorColor: textColor,
              style: TextStyle(color: textColor, fontFamily: fontNormal),
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
  String name;
  String packageName;

  AppInfo({required this.name, required this.packageName});

  factory AppInfo.fromJson(Map<String, dynamic> json) {
    return AppInfo(name: json['name'], packageName: json['packageName']);
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'packageName': packageName};
  }
}












// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
