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
    logTag = fixtureLogTag;
    groupValue = fixtureGroupValue;
    _profileNameController = fixtureProfileNameController;
    _profileNameFormKey = fixtureProfileNameFormKey;
    mainColor = fixtureMainColor;
    profiles = fixtureProfiles;
    dailyEntryController = fixtureDailyEntryController;
  }

  late String logTag;

  late int groupValue;

  late TextEditingController _profileNameController;

  late GlobalKey<FormState> _profileNameFormKey;

  late Color mainColor;

  late List<Profile> profiles;

  late DailyEntryController dailyEntryController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          'profiles'.tr,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.05,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.82,
          child: Column(
            children: [
              Text(
                'tapToSwitch'.tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.035,
                ),
              ),
              const SizedBox(height: 15),
              Expanded(
                child: ListView.separated(
                  physics: const ClampingScrollPhysics(),
                  itemCount: profiles.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    return Material(
                      child: RadioListTile(
                        activeColor: AppColors.green,
                        value: index,
                        groupValue: groupValue,
                        onChanged: (val) {
                          /* spm: non-rebuild body erased */
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        title: Text(
                          profiles[index].isDefault
                              ? 'default'.tr
                              : profiles[index].label,
                          style: TextStyle(
                            color: ThemeService().isDarkTheme()
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                        secondary: profiles[index].isDefault
                            ? null
                            : IconButton(
                                onPressed: () async {
                                  /* spm: non-rebuild body erased */
                                },
                                icon: const Icon(
                                  Icons.delete_forever_rounded,
                                  color: AppColors.mainColor,
                                ),
                              ),
                      ),
                    );
                  },
                ),
              ),
              TextButton.icon(
                onPressed: () async {
                  /* spm: non-rebuild body erased */
                },
                icon: const Icon(Icons.add),
                style: TextButton.styleFrom(foregroundColor: AppColors.green),
                label: Text('createNewProfile'.tr),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

























// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
