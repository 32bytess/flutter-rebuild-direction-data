// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'base.dart';

typedef Callback<T> = void Function(T value);

const Color appBarColor = Color(0xFFFFFFFF);

class DimGroup {
  static void modifyGroupNotificationModel(
    String groupId,
    String notice,
    String time,
  ) {}
}

// Frozen runtime fixtures (shared by base and all mutations).
const String fixtureGroupOwner = 'Group Owner';
const String fixtureGroupNotice = 'Group notice content';
const String fixtureGroupId = 'group_001';
const bool fixtureInputState = false;
FocusNode makeFocusNode() => FocusNode();
TextEditingController makeTextController() => TextEditingController();
final TextStyle fixtureStyleLabel = TextStyle(fontSize: 12.0, color: Colors.black.withOpacity(0.8));
