// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

class FirestoreDocument {
  final String wallpaperUrl;
  final String wallpaperThumb;
  const FirestoreDocument({this.wallpaperUrl = '', this.wallpaperThumb = ''});
}

class ReviewBatchState {
  final bool canUndo;
  final bool hasMoreWalls;
  final FirestoreDocument? currentWall;
  const ReviewBatchState({
    this.canUndo = false,
    this.hasMoreWalls = true,
    this.currentWall,
  });
}

// Frozen state fixture — shared by base and all mutations.
const ReviewBatchState fixtureReviewBatchState = ReviewBatchState(
  canUndo: true,
  hasMoreWalls: true,
  currentWall: FirestoreDocument(
    wallpaperUrl: 'assets/placeholder.png',
    wallpaperThumb: 'assets/placeholder.png',
  ),
);

class ReviewBatchUndoRequested {
  const ReviewBatchUndoRequested();
}

class ReviewBatchSwipeSkipped {
  const ReviewBatchSwipeSkipped();
}

class ReviewBatchBloc {
  void add(dynamic event) {}
}

class _Toasts {
  const _Toasts();

  void codeSend(String message) {}
}

const _Toasts toastsValue = _Toasts();
late _Toasts toasts;
