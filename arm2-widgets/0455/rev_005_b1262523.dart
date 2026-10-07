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
  late WidgetRef ref;

  @override
  void initState() {
    super.initState();
    ref = fixtureRef;
  }

  @override
  Widget build(BuildContext context) {
    final todos = ref.watch(todosProvider);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding(context),
            vertical: verticalPadding(context),
          ),
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
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Tell us about your task",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              const SmallSpacing(),
              const TextBox(hintHeading: "Title"),
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
          child: Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
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

class TextBox extends StatelessWidget {
  final String hintHeading;

  const TextBox({super.key, required this.hintHeading});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(
        context,
      ).textTheme.displaySmall!.copyWith(color: blackColor),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(width: 1.0, color: outlineColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(width: 1.0, color: blueColor),
        ),
        hintText: hintHeading,
        hintStyle: Theme.of(context).textTheme.displaySmall,
        contentPadding: textFieldPadding(context),
      ),
    );
  }
}

























// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
