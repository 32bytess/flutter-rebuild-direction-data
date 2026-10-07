// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({Key? key}) : super(key: key);

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
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

  Widget coustomIconButton({required IconData icon, required bool isAdd}) {
    return SizedBox(
      width: iconWidth,
      child: IconButton(
        padding: const EdgeInsets.all(0),
        icon: Icon(icon),
        onPressed: () {
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
        },
      ),
    );
  }

  Widget buildStepper() {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(width: 1, color: Colors.black12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          //减号
          coustomIconButton(icon: Icons.remove, isAdd: false),
          //输入框
          Container(
            width: width,
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(width: 1, color: Colors.black12),
                right: BorderSide(width: 1, color: Colors.black12),
              ),
            ),
            child: TextField(
              controller: textController,
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
          ),
          //加号
          coustomIconButton(icon: Icons.add, isAdd: true),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildStepper(),
        buildStepper(),
        buildStepper(),
        buildStepper(),
        buildStepper(),
      ],
    );
  }
}