// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

enum ItemState { none, running, success, failure }

class Item {
  final String name;
  final ItemState state;
  final String route;

  Item({required this.name, required this.state, required this.route});
}

// Frozen runtime fixtures (shared by base and all mutations).
final Item fixtureItem = Item(name: 'Sample Item', state: ItemState.none, route: '/sample');
const String fixtureSummary = 'Sample summary';
