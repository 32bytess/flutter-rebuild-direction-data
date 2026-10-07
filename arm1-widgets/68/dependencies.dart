// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'base.dart';

enum GroupInfoType { remark, name, cardName }

// Mocks for missing dependencies to keep this sample self-contained.
const Color mainTextColor = Color(0xff08BF62);

const Color appBarColor = Color(0xfff4f4f4);

bool strNoEmpty(String str) => str.isNotEmpty;

void showToast(String msg) {}

double winKeyHeight(BuildContext context) => 0.0;

class Get {
  static double get width => 375.0;
}

class DimGroup {
  static void modifyGroupNameModel(
    String groupId,
    String text, {
    void Function(dynamic)? callback,
  }) {
    if (callback != null) callback(null);
  }
}

// Frozen runtime fixtures (shared by base and all mutations).
TextEditingController makeTextController() => TextEditingController();
