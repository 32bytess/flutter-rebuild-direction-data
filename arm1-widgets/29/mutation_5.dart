// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({Key? key}) : super(key: key);

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _CounterBox extends StatelessWidget {
  final double height;
  final Widget child;

  const _CounterBox({required this.height, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(width: 1, color: Colors.black12),
      ),
      child: child,
    );
  }
}

class _CoustomIconButton extends StatelessWidget {
  final double iconWidth;
  final IconData icon;
  final VoidCallback onPressed;

  const _CoustomIconButton({
    required this.iconWidth,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: iconWidth,
      child: IconButton(
        padding: const EdgeInsets.all(0),
        icon: Icon(icon),
        onPressed: onPressed,
      ),
    );
  }
}

class _NumberField extends StatelessWidget {
  final double width;
  final TextEditingController controller;

  const _NumberField({required this.width, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: const BoxDecoration(
        border: Border(
          left: BorderSide(width: 1, color: Colors.black12),
          right: BorderSide(width: 1, color: Colors.black12),
        ),
      ),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 16),
        enableInteractiveSelection: false,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.only(
            left: 0,
            top: 2,
            bottom: 2,
            right: 0,
          ),
          border: OutlineInputBorder(
            gapPadding: 0,
            borderSide: BorderSide(width: 0, style: BorderStyle.none),
          ),
        ),
      ),
    );
  }
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  late TextEditingController textController;
  late double height;
  late double width;
  late double iconWidth;
  late String numText;
  ValueChanged? addValueChanged;
  ValueChanged? removeValueChanged;
  ValueChanged? updateValueChanged;

  @override
  void initState() {
    super.initState();
    height = fixtureHeight;
    width = fixtureWidth;
    iconWidth = fixtureIconWidth;
    numText = fixtureNumText;
    addValueChanged = null;
    removeValueChanged = null;
    updateValueChanged = null;
    textController = makeNumberController();
    textController.text = numText;
  }

  void _handlePress(bool isAdd) {
    var num = int.parse(textController.text);
    if (!isAdd && num == 0) return;
    if (isAdd) {
      num++;
      if (addValueChanged != null) addValueChanged!(num);
    } else {
      num--;
      if (removeValueChanged != null) {
        removeValueChanged!(num);
      }
    }
    textController.text = '$num';
    if (updateValueChanged != null) {
      updateValueChanged!(num);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _CounterBox(
          height: height,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              //减号
              _CoustomIconButton(
                iconWidth: iconWidth,
                icon: Icons.remove,
                onPressed: () => _handlePress(false),
              ),
              //输入框
              _NumberField(width: width, controller: textController),
              //加号
              _CoustomIconButton(
                iconWidth: iconWidth,
                icon: Icons.add,
                onPressed: () => _handlePress(true),
              ),
            ],
          ),
        ),
      ],
    );
  }
}