// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

// Frozen state type — its default value (unreadCount) is the shared fixture,
// so a full base.dart rewrite cannot change it. base.dart constructs a fresh
// instance each mount.
class InAppNotificationsState {
  int unreadCount = 1;
}

class PrismAppBarSizes {
  static const double iconButtonTouchTarget = 48.0;
  static const double iconSize = 24.0;
  static const double notificationBadgeSize = 8.0;
  static const double notificationBadgeBlurRadius = 4.0;
  static const double notificationBadgeSpreadRadius = 1.0;
}

class PrismIcons {
  static const IconData notificationBell = Icons.notifications;
}

class PrismColors {
  static const Color brandPink = Color(0xFFE91E8C);
  static const Color notificationBadgeShadow = Color(0x55E91E8C);
}

class NotificationRoute {
  const NotificationRoute();
}

class _RouterDelegate {
  void push(Object route) {}
}

extension BuildContextRouter on BuildContext {
  _RouterDelegate get router => _RouterDelegate();
}
