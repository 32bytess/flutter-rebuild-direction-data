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
      child: Stack(
        children: <Widget>[
          _BackgroundPlaceholder(_file),
          _WeatherHeader(_day, _month, _dayNo, _suffix, _accent),
          Positioned(
            bottom: 100,
            child: const _ThumbnailRow(),
          ),
          const _DismissOverlay(),
        ],
      ),
    );
  }
}

class _BackgroundPlaceholder extends StatelessWidget {
  final bool _file;
  const _BackgroundPlaceholder(this._file);

  @override
  Widget build(BuildContext context) {
    if (!_file) {
      return Container(color: Colors.grey.shade300, width: 80, height: 80);
    }
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Container(color: Colors.grey.shade300, width: 80, height: 80),
    );
  }
}

class _WeatherHeader extends StatelessWidget {
  final String _day;
  final String _month;
  final String _dayNo;
  final String _suffix;
  final Color? _accent;
  const _WeatherHeader(this._day, this._month, this._dayNo, this._suffix, this._accent);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width,
      child: Center(
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
            const SizedBox(height: 5),
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
    );
  }
}

class _ThumbnailRow extends StatelessWidget {
  const _ThumbnailRow();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(color: Colors.grey.shade300, width: 80, height: 80),
          Container(color: Colors.grey.shade300, width: 80, height: 80),
          Container(color: Colors.grey.shade300, width: 80, height: 80),
          Container(color: Colors.grey.shade300, width: 80, height: 80),
          Container(color: Colors.grey.shade300, width: 80, height: 80),
        ],
      ),
    );
  }
}

class _DismissOverlay extends StatelessWidget {
  const _DismissOverlay();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {Navigator.pop(context)},
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: const Text(""),
      ),
    );
  }
}