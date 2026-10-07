// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late String _day;
  late String _month;
  late String _dayNo;
  late String _suffix;
  late bool _file;
  late Color? _accent;

  @override
  void initState() {
    super.initState();
    _file = fixtureFile;
    _accent = null;
    _day = fixtureDayNames[fixtureNow.weekday - 1];
    _month = fixtureMonthNames[fixtureNow.month - 1];
    _dayNo = fixtureNow.day.toString();
    _suffix = _dayNo[_dayNo.length - 1] == "1"
        ? "ˢᵗ"
        : _dayNo[_dayNo.length - 1] == "2"
        ? "ⁿᵈ"
        : _dayNo[_dayNo.length - 1] == "3"
        ? "ʳᵈ"
        : "ᵗʰ";
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Container(
          padding: const EdgeInsets.all(0),
          child: Stack(
            children: <Widget>[
              if (!_file)
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Container(color: Colors.grey.shade300, width: 80, height: 80),
                )
              else
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Container(color: Colors.grey.shade300, width: 80, height: 80),
                  ),
                ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Container(
                          padding: const EdgeInsets.all(0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                "$_day,",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: _accent == null
                                      ? Theme.of(context).colorScheme.secondary
                                      : _accent!.computeLuminance() > 0.5
                                      ? Colors.black
                                      : Colors.white,
                                  fontFamily: "Roboto",
                                  fontSize: 25,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Container(
                          padding: const EdgeInsets.all(0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                "$_month $_dayNo$_suffix | 27°C",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: _accent == null
                                      ? Theme.of(context).colorScheme.secondary
                                      : _accent!.computeLuminance() > 0.5
                                      ? Colors.black
                                      : Colors.white,
                                  fontFamily: "Roboto",
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 100,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Container(color: Colors.grey.shade300, width: 80, height: 80),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Container(color: Colors.grey.shade300, width: 80, height: 80),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Container(color: Colors.grey.shade300, width: 80, height: 80),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Container(color: Colors.grey.shade300, width: 80, height: 80),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Container(color: Colors.grey.shade300, width: 80, height: 80),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => {Navigator.pop(context)},
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: const Text(""),
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