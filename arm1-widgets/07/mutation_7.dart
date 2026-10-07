// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

// ---- Generated widget ----

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late InAppNotificationsState state;

  @override
  void initState() {
    super.initState();
    state = InAppNotificationsState();
  }

  @override
  Widget build(BuildContext context) {
    return _NotificationButton(hasUnread: state.unreadCount > 0);
  }
}
class _NotificationButton extends StatelessWidget {
  const _NotificationButton({this.hasUnread = false});

  final bool hasUnread;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Open notifications',
      button: true,
      hint: hasUnread ? 'Has unread items' : null,
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          customBorder: const CircleBorder(),
          onTap: () => context.router.push(const NotificationRoute()),
          child: SizedBox(
            width: PrismAppBarSizes.iconButtonTouchTarget,
            height: PrismAppBarSizes.iconButtonTouchTarget,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  left: 14,
                  top: 14,
                  child: Icon(
                    PrismIcons.notificationBell,
                    size: PrismAppBarSizes.iconSize,
                    color: Theme.of(
                      context,
                    ).colorScheme.secondary.withValues(alpha: 0.75),
                  ),
                ),
                Positioned(
                  left: 14,
                  top: 14,
                  child: Icon(
                    PrismIcons.notificationBell,
                    size: PrismAppBarSizes.iconSize,
                    color: Theme.of(
                      context,
                    ).colorScheme.secondary.withValues(alpha: 0.75),
                  ),
                ),
                Positioned(
                  left: 14,
                  top: 14,
                  child: Icon(
                    PrismIcons.notificationBell,
                    size: PrismAppBarSizes.iconSize,
                    color: Theme.of(
                      context,
                    ).colorScheme.secondary.withValues(alpha: 0.75),
                  ),
                ),
                Positioned(
                  left: 14,
                  top: 14,
                  child: Icon(
                    PrismIcons.notificationBell,
                    size: PrismAppBarSizes.iconSize,
                    color: Theme.of(
                      context,
                    ).colorScheme.secondary.withValues(alpha: 0.75),
                  ),
                ),
                if (hasUnread)
                  Positioned(
                    top: 13,
                    left: 24,
                    child: Container(
                      width: PrismAppBarSizes.notificationBadgeSize,
                      height: PrismAppBarSizes.notificationBadgeSize,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: PrismColors.brandPink,
                        boxShadow: [
                          BoxShadow(
                            color: PrismColors.notificationBadgeShadow,
                            blurRadius:
                                PrismAppBarSizes.notificationBadgeBlurRadius,
                            spreadRadius:
                                PrismAppBarSizes.notificationBadgeSpreadRadius,
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}