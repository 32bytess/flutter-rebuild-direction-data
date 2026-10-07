// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

class ReviewBatchState {
  final int currentIndex;
  final List<Object> walls;
  ReviewBatchState({required this.currentIndex, required this.walls});
}

// Frozen state fixture — shared by base and all mutations.
final ReviewBatchState fixtureReviewBatchState = ReviewBatchState(
  currentIndex: 0,
  walls: [Object(), Object(), Object()],
);

