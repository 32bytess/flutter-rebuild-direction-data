// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dart:math';
import 'base.dart';

extension NumExt on num {
  double get vp => toDouble();
  double get fp => toDouble();
  double get wmax => toDouble();
}

extension StringExt on String {
  String get tr => this;
  String get usd => this;
}

extension DateTimeExt on DateTime {
  String yMMMd() => '$year-$month-$day';
  String jm() => '$hour:$minute';
}

class Rx<T> {
  T value;
  Rx(this.value);
}

class Message {
  final DateTime date;
  final String desc;
  final String money;
  final String isRead;
  Message({
    required this.date,
    required this.desc,
    required this.money,
    required this.isRead,
  });
}

class GroupMessage {
  final int year;
  final List<Message> messages;
  GroupMessage({required this.year, required this.messages});
}

class Controller {
  void Function(Message) readMessage = (message) {};
  Rx<List<GroupMessage>> msgGroups = Rx(fixtureMsgGroups());
  Rx<EdgeInsets> mediaPadding = Rx(EdgeInsets.zero);
}

// Frozen state fixture — shared by base and all mutations. Returned fresh
// (factory) since it is reactive state; the date is fixed for determinism.
List<GroupMessage> fixtureMsgGroups() => [
  GroupMessage(
    year: 2025,
    messages: [
      Message(
        date: DateTime(2025, 1, 1),
        desc: 'Sample notification',
        money: '10.00',
        isRead: 'N',
      ),
    ],
  ),
];
