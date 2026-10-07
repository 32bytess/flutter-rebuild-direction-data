// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'package:flutter/material.dart';
import 'dart:async';
part 'dependencies.dart';


class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  GeneratedWidget.fixture({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SvgPicture.asset("assets/trans_logo.svg"),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings_outlined),
            onPressed: () {
              /* spm: non-rebuild body erased */
            },
          ),
        ],
      ),
      floatingActionButton: const AddTaskButton(),
      body: SafeArea(
        child: Padding(
          //SafeArea
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding(context),
            vertical: verticalPadding(context),
          ),
          child: Column(
            children: [
              const TodayAndFilterButton(),
              //Filter todo tasks
              //File location: widgets/todayAndFilterButton.dart
              const Spacing(),
              //TODO: Add List of all tasks in the mobile device
              //If tasks are empty, show text
            ],
          ),
        ),
      ),
    );
  }
}

class AddTaskButton extends StatelessWidget {
  const AddTaskButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        /* spm: non-rebuild body erased */
      },
      backgroundColor: blackColor,
      elevation: 0,
      splashColor: blueColor,
      shape: const CircleBorder(),
      child: SvgPicture.asset(
        "assets/plus.svg",
        height: MediaQuery.of(context).size.height * 0.02,
      ),
    );
  }
}

class TodayAndFilterButton extends StatelessWidget {
  const TodayAndFilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Today", style: Theme.of(context).textTheme.displayMedium),
        GestureDetector(
          onTap: () {
            /* spm: non-rebuild body erased */
          },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.04,
            width: MediaQuery.of(context).size.width * 0.25,
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
            ),
            decoration: BoxDecoration(
              color: blackColor,
              borderRadius: BorderRadius.circular(
                MediaQuery.of(context).size.width,
              ),
            ),
            child: Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Filter",
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        color: whiteColor,
                        fontSize: 13,
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/filter.svg",
                      height: MediaQuery.of(context).size.height * 0.014,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Spacing extends StatelessWidget {
  const Spacing({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height * 0.03);
  }
}













// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
