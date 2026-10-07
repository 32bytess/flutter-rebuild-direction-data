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
  void initState() {
    super.initState();
    _titleValue = fixtureTitleValue;
    _descriptionValue = fixtureDescriptionValue;
    _dateValue = fixtureDateValue;
    _timeValue = fixtureTimeValue;
    titleController = fixtureTitleController;
    descriptionController = fixtureDescriptionController;
    dateController = fixtureDateController;
    timeController = fixtureTimeController;
  }

  late String _titleValue;

  late String _descriptionValue;

  late String _dateValue;

  late String _timeValue;

  late TextEditingController titleController;

  late TextEditingController descriptionController;

  late TextEditingController dateController;

  late TextEditingController timeController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            children: [
              Row(
                children: [
                  const BackArrow(),
                  Text(
                    "Create to-do",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ],
              ),
              const Spacing(),
              const SetReminder(),
              const Spacing(),
              //Todo title & Todo description
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Tell us about your task",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              const SmallSpacing(),
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(45.0),
                  ),
                  prefixIcon: Icon(Icons.title_outlined),
                  hintText: "Title",
                ),
                onChanged: (value) {
                  /* spm: non-rebuild body erased */
                },
              ),
              const SmallSpacing(),
              TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(45.0),
                  ),
                  prefixIcon: Icon(Icons.description_outlined),
                  hintText: "Description",
                ),
                onChanged: (value) {
                  /* spm: non-rebuild body erased */
                },
              ),
              const Spacing(),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Date & Time",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),

              SizedBox(height: 5),

              TextField(
                controller: dateController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(45.0),
                  ),
                  prefixIcon: Icon(Icons.calendar_month_outlined),
                  hintText: "Select Date",
                ),
                onChanged: (value) {
                  /* spm: non-rebuild body erased */
                },
              ),

              SizedBox(height: 10),

              TextField(
                controller: timeController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(45.0),
                  ),
                  prefixIcon: Icon(Icons.access_time_outlined),
                  hintText: "Select Time",
                ),
                onChanged: (value) {
                  /* spm: non-rebuild body erased */
                },
              ),

              const Spacing(),

              ElevatedButton(
                onPressed: () {
                  /* spm: non-rebuild body erased */
                },
                child: Text("Create", style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(45.0),
                  ),
                  fixedSize: Size(200, 50),
                  shadowColor: Colors.white,
                ),
              ),
              //TODO: Add more TextBox() and a submit button
              //Save the data to variables
              //Save the data to ObjectBox
            ],
          ),
        ),
      ),
    );
  }
}

class BackArrow extends StatelessWidget {
  const BackArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.05),
      child: GestureDetector(
        onTap: () {
          /* spm: non-rebuild body erased */
        },
        child: SvgPicture.asset("assets/back.svg"),
      ),
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

class SetReminder extends StatelessWidget {
  const SetReminder({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: TextButton(
        onPressed: () {
          /* spm: non-rebuild body erased */
        },
        style: const ButtonStyle(
          padding: MaterialStatePropertyAll(EdgeInsets.all(0)),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width * 0.45,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.065,
          ),
          decoration: BoxDecoration(
            color: blackColor,
            borderRadius: BorderRadius.circular(
              MediaQuery.of(context).size.width,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Set Reminder",
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  color: whiteColor,
                  fontSize: 13,
                ),
              ),
              SvgPicture.asset(
                "assets/bell_white.svg",
                height: MediaQuery.of(context).size.height * 0.014,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SmallSpacing extends StatelessWidget {
  const SmallSpacing({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height * 0.01);
  }
}
















// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
