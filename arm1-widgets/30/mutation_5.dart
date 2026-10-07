// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  final V2TimMessage? msg = null;

  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _UnknownMessageText extends StatelessWidget {
  final TextStyle style;

  const _UnknownMessageText({required this.style});

  @override
  Widget build(BuildContext context) {
    return Text('未知消息', style: style);
  }
}

class _MessageContentText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const _MessageContentText({required this.text, required this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: style,
    );
  }
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  String? str;

  late TextStyle _style;

  @override
  void initState() {
    super.initState();
    str = null;
    _style = fixtureStyle;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.msg == null) {
      return _UnknownMessageText(style: _style);
    }
    if (widget.msg?.elemType == MessageElemType.V2TIM_ELEM_TYPE_TEXT) {
      str = widget.msg?.textElem?.text ?? "";
    } else if (widget.msg?.elemType == MessageElemType.V2TIM_ELEM_TYPE_IMAGE) {
      str = '[图片]';
    } else if (widget.msg?.elemType == MessageElemType.V2TIM_ELEM_TYPE_SOUND) {
      str = '[语音消息]';
    } else if (widget.msg?.elemType == MessageElemType.V2TIM_ELEM_TYPE_VIDEO) {
      str = '[视频]';
    } else if (widget.msg?.elemType ==
        MessageElemType.V2TIM_ELEM_TYPE_GROUP_TIPS) {
      if (widget.msg?.groupTipsElem?.type ==
          GroupTipsElemType.V2TIM_GROUP_TIPS_TYPE_JOIN) {
        str = '[系统消息] 新人入群';
      } else if (widget.msg?.groupTipsElem?.type ==
          GroupTipsElemType.V2TIM_GROUP_TIPS_TYPE_QUIT) {
        str = '[系统消息] 有人退出群聊';
      } else if (widget.msg?.groupTipsElem?.type ==
          GroupTipsElemType.V2TIM_GROUP_TIPS_TYPE_GROUP_INFO_CHANGE) {
        str = '[系统消息] 群资料变更';
      } else if (widget.msg?.groupTipsElem?.type ==
          GroupTipsElemType.V2TIM_GROUP_TIPS_TYPE_MEMBER_INFO_CHANGE) {
        str = '[系统消息] 群员修改资料';
      } else {
        str = '[系统消息]';
      }
    } else {
      str = '[未知消息]';
    }
    return _MessageContentText(text: str!, style: _style);
  }
}