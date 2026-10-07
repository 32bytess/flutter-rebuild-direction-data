// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

enum MessageElemType {
  V2TIM_ELEM_TYPE_TEXT,
  V2TIM_ELEM_TYPE_IMAGE,
  V2TIM_ELEM_TYPE_SOUND,
  V2TIM_ELEM_TYPE_VIDEO,
  V2TIM_ELEM_TYPE_GROUP_TIPS,
}

enum GroupTipsElemType {
  V2TIM_GROUP_TIPS_TYPE_JOIN,
  V2TIM_GROUP_TIPS_TYPE_QUIT,
  V2TIM_GROUP_TIPS_TYPE_GROUP_INFO_CHANGE,
  V2TIM_GROUP_TIPS_TYPE_MEMBER_INFO_CHANGE,
}

class TextElem {
  final String? text;
  TextElem(this.text);
}

class GroupTipsElem {
  final GroupTipsElemType? type;
  GroupTipsElem(this.type);
}

class V2TimMessage {
  final MessageElemType? elemType;
  final TextElem? textElem;
  final GroupTipsElem? groupTipsElem;
  V2TimMessage({this.elemType, this.textElem, this.groupTipsElem});
}

const Color mainTextColor = Colors.black87;

// Frozen runtime fixtures (shared by base and all mutations).
final TextStyle fixtureStyle = TextStyle(color: mainTextColor, fontSize: 14.0);
