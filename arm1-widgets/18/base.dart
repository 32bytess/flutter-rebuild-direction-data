// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dart:math';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

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

  Widget buidlMessages(BuildContext context) {
    final readMessage = controller.readMessage;
    final msgGroups = controller.msgGroups;

    Widget buildMessage(Message message) {
      return GestureDetector(
        behavior: HitTestBehavior.opaque,
        child: Container(
          width: 312.vp,
          margin: EdgeInsets.only(bottom: 10.vp),
          child: Stack(
            fit: StackFit.loose,
            children: [
              Padding(
                padding: EdgeInsets.all(1.vp),
                child: Container(
                  width: 310.vp,
                  padding: EdgeInsets.only(
                    top: 10.vp,
                    left: 28.vp,
                    right: 20.vp,
                    bottom: 10.vp,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(17.vp),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff000000).withValues(alpha: .058),
                        offset: Offset(3.vp, 3.vp),
                        spreadRadius: 0,
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 220.vp,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              height: 21.vp,
                              child: Text(
                                '${message.date.yMMMd()} ${message.date.jm()}',
                                style: TextStyle(
                                  color: const Color(0xffafafaf),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.4.fp,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                message.desc.tr,
                                style: TextStyle(
                                  color: const Color(0xff363853),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15.fp,
                                  height: 1.4,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              height: 21.vp,
                              child: Text(
                                message.money.usd,
                                style: TextStyle(
                                  color: const Color(0xff606266),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.4.fp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(color: Colors.grey.shade300, width: 80, height: 80),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 9.vp,
                child: Offstage(
                  offstage: message.isRead != 'N',
                  child: Container(
                    width: 7.vp,
                    height: 7.vp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.5.vp),
                      color: const Color(0xffff3333),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          if (message.isRead == 'N') {
            readMessage(message);
          }
        },
      );
    }

    Widget buildGroup(GroupMessage group) {
      var msgYear = group.year.toString();
      final nowYear = DateTime(2025, 1, 1).year;
      final messages = group.messages;

      if (group.year == nowYear) {
        msgYear = 'this year';
      }

      return Container(
        width: 312.vp,
        margin: EdgeInsets.only(bottom: 20.vp),
        padding: EdgeInsets.only(bottom: 1.vp),
        child: Column(
          children: [
            Container(
              width: 312.vp,
              height: 20.vp,
              alignment: Alignment.center,
              child: Text(
                msgYear.tr,
                style: TextStyle(
                  color: const Color(0xff363853),
                  letterSpacing: group.year == nowYear ? 3 : 1,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.8.fp,
                  height: 1,
                ),
              ),
            ),
            SizedBox(width: 312.vp, height: 15.vp),
            SizedBox(
              width: 312.vp,
              child: Column(
                children: [
                  ...messages.map((msg) {
                    return buildMessage(msg);
                  }),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: 32.vp, right: 32.vp),
      child: Column(
        children: [
          ...msgGroups.value.map((group) {
            return buildGroup(group);
          }),
        ],
      ),
    );
  }

  Widget buildSafeArea(BuildContext context) {
    final mediaPadding = controller.mediaPadding;
    final mediaBottom = mediaPadding.value.bottom;

    return SizedBox(width: 640.wmax, height: max(mediaBottom - 20.vp, 10.vp));
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(0),
      physics: const NeverScrollableScrollPhysics(),
      children: [buidlMessages(context), buildSafeArea(context)],
    );
  }
}
