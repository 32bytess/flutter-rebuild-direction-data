// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late Controller controller;

  @override
  void initState() {
    super.initState();
    controller = Controller();
  }

  @override
  Widget build(BuildContext context) {
    final options = controller.options;
    final operate = controller.operate;
    final isTopup = controller.type == 'Top up';
    final isTransfer = controller.type == 'Transfer';
    final isSamePerson = operate.value.from == operate.value.to;
    final loginUser = controller.loginUser;
    final avatar = loginUser.avatar;
    final from = operate.value.from;
    final to = operate.value.to;
    Widget withSplash(Widget child) {
      return Theme(
        data: Theme.of(context).copyWith(
          splashColor: Color(0xfff0f0f0),
          highlightColor: Color(0xfff0f0f0),
        ),
        child: child,
      );
    }

    Widget iconAvatar(String icon) {
      icon = icon.toLowerCase();

      if (!isTransfer && icon == 'me') {
        if (avatar.value.bv) {
          return ClipOval(child: Container(color: Colors.grey.shade300, width: 80, height: 80));
        }
      }

      if (isTransfer && icon == 'me') {
        return SizedBox.shrink();
      }

      return ClipOval(child: Container(color: Colors.grey.shade300, width: 80, height: 80));
    }

    dynamic itemBuilder() {
      final iterable = options.value.map((opt) {
        return PopupMenuItem(
          value: opt.id,
          padding: EdgeInsets.zero,
          child: Container(
            width: 375.vp,
            height: 48.vp,
            padding: EdgeInsets.only(
              top: 12.vp,
              left: 30.vp,
              right: 24.vp,
              bottom: 12.vp,
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 4.vp),
                  child: iconAvatar(isTopup ? opt.from : opt.to),
                ),
                Text(
                  isTopup ? opt.from.tr : opt.to.tr,
                  style: TextStyle(
                    color: Color(0xff363853),
                    fontWeight: FontWeight.w600,
                    fontSize: 16.fp,
                  ),
                ),
                Offstage(
                  offstage: !isTransfer || opt.from == opt.to,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15.vp, right: 15.vp),
                        child: Container(color: Colors.grey.shade300, width: 80, height: 80),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 4.vp),
                        child: iconAvatar(opt.from.toLowerCase()),
                      ),
                      Text(
                        opt.from.tr,
                        style: TextStyle(
                          color: Color(0xff363853),
                          fontWeight: FontWeight.w600,
                          fontSize: 16.fp,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      });

      return iterable.toList();
    }

    return withSplash(
      Container(
        color: Colors.white,
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 32.vp, right: 32.vp),
        margin: EdgeInsets.only(bottom: 42.vp),
        child: PopupMenuButton(
          elevation: 2.5,
          color: Colors.white,
          padding: EdgeInsets.zero,
          menuPadding: EdgeInsets.zero,
          clipBehavior: Clip.antiAlias,
          position: PopupMenuPosition.under,
          shadowColor: Color(0x88000000),
          constraints: BoxConstraints(minWidth: 311.vp, maxWidth: 311.vp),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.vp),
          ),
          offset: Offset(0, 3.vp),
          onSelected: (id) => controller.find(id),
          itemBuilder: (BuildContext context) => itemBuilder(),
          child: Container(
            height: 66.vp,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.vp),
              color: Color(0xfff2f2f2),
            ),
            padding: EdgeInsets.only(
              top: 20.vp,
              left: 30.vp,
              right: 24.vp,
              bottom: 20.vp,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 4.vp),
                        child: iconAvatar(isTopup ? from : to),
                      ),
                      Text(
                        isTopup ? from.tr : to.tr,
                        style: TextStyle(
                          color: Color(0xff363853),
                          fontWeight: FontWeight.w600,
                          fontSize: 16.fp,
                        ),
                      ),
                      Offstage(
                        offstage: !isTransfer || isSamePerson,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 15.vp,
                                right: 15.vp,
                              ),
                              child: Container(color: Colors.grey.shade300, width: 80, height: 80),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 4.vp),
                              child: iconAvatar(from.toLowerCase()),
                            ),
                            Text(
                              from.tr,
                              style: TextStyle(
                                color: Color(0xff363853),
                                fontWeight: FontWeight.w600,
                                fontSize: 16.fp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.vp, right: 6.vp),
                  child: Container(color: Colors.grey.shade300, width: 80, height: 80),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}