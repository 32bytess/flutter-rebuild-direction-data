// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dart:math';
import 'dependencies.dart';

class Obx extends StatelessWidget {
  final Widget Function() builder;
  const Obx(this.builder, {super.key});

  @override
  Widget build(BuildContext context) => builder();
}
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

  Widget buildTitle(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints.expand(),
      padding: EdgeInsets.only(left: 32.vp, right: 32.vp),
      child: Text(
        'Run Logger'.tr,
        style: TextStyle(
          color: const Color(0xff130138),
          fontWeight: FontWeight.bold,
          letterSpacing: 3,
          fontSize: 20.fp,
          height: 1,
        ),
      ),
    );
  }

  Widget buildContent(BuildContext context) {
    return Obx(() {
      final mediaPadding = controller.mediaPadding;
      final mediaTopBar = controller.mediaTopBar;
      final mediaTop = mediaPadding.value.top;

      final header = max(40.vp, mediaTopBar.value);
      final offset = max(mediaTop, 20.vp);
      final height = 100.vh - offset - header;

      return SizedBox(
        width: 640.wmax,
        height: height,
        child: InteractiveViewer(
          minScale: 1.0,
          maxScale: 5.0,
          constrained: false,
          child: Container(
            padding: EdgeInsets.only(
              top: 5.vp,
              left: 5.vp,
              right: 5.vp,
              bottom: 20.vp,
            ),
            child: TextSelectionTheme(
              data: TextSelectionThemeData(
                selectionColor: Color(0xff6750a4).withValues(alpha: 0.28),
                selectionHandleColor: Color(0xff6750a4).withValues(alpha: 0.28),
              ),
              child: SelectableText(
                controller.string.value,
                style: GoogleFonts.robotoMono(
                  color: Color(0xff303133),
                  fontWeight: FontWeight.w400,
                  fontSize: 11.fp,
                  height: 1.4,
                ),
              ),
            ),
          ),
        ),
      );
    });
  }

  Widget buildLoading(BuildContext context) {
    return Obx(
      () => Positioned(
        child: Offstage(
          offstage: !controller.loading.value,
          child: Container(
            constraints: BoxConstraints.expand(),
            color: Color(0xffffffff).withValues(alpha: 0.8),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircularProgressIndicator(
                    strokeWidth: 3.2,
                    color: Color(0xff707177),
                    semanticsValue: 'Loading logs, please wait...'.tr,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 20, 30, 80),
                    child: Text(
                      'Loading logs, please wait...'.tr,
                      style: TextStyle(
                        color: Color(0xff707177),
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.5,
                        fontSize: 14.fp,
                      ),
                    ),
                  ),
                  SizedBox(width: double.infinity, height: 80),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBack(BuildContext context) {
    final mediaTopBar = controller.mediaTopBar.value;
    final mediaPadding = controller.mediaPadding.value;
    final height = max(40.vp, mediaTopBar);

    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: 680.wmax,
          height: height,
          margin: EdgeInsets.only(
            top: max(mediaPadding.top, 20.vp),
            left: 20.vp,
          ),
          padding: EdgeInsets.only(
            top: (height - 36.vp) / 2,
            bottom: (height - 36.vp) / 2,
          ),
          child: Row(
            children: [
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => GetNavigate.back(),
                child: Container(color: Colors.grey.shade300, width: 80, height: 80),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final physics = NeverScrollableScrollPhysics();
    final mediaPadding = controller.mediaPadding;
    final mediaTopBar = controller.mediaTopBar;
    final isShadow = controller.isShadow;
    final height = max(40.vp, mediaTopBar.value);
    final offset = max(mediaPadding.value.top, 20.vp);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          NestedScrollView(
            physics: physics,
            headerSliverBuilder: (context, isScrolled) {
              return [
                SliverOverlapAbsorber(
                  handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                    context,
                  ),
                  sliver: SliverAppBar(
                    pinned: true,
                    elevation: 0.0,
                    expandedHeight: height,
                    collapsedHeight: height,
                    scrolledUnderElevation: 0.0,
                    automaticallyImplyLeading: false,
                    flexibleSpace: Obx(() {
                      List<BoxShadow>? boxShadow;

                      if (isShadow.value) {
                        boxShadow = [
                          BoxShadow(
                            color: Color(0x0c000000),
                            offset: Offset(0, 1.2),
                            spreadRadius: 0,
                            blurRadius: 10,
                          ),
                        ];
                      }

                      return Container(
                        constraints: const BoxConstraints.expand(),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: boxShadow,
                        ),
                        padding: EdgeInsets.only(top: offset),
                        child: buildTitle(context),
                      );
                    }),
                  ),
                ),
              ];
            },
            body: Builder(
              builder: (BuildContext context) {
                return CustomScrollView(
                  physics: physics,
                  slivers: [
                    SliverOverlapInjector(
                      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                        context,
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        return Obx(
                          () => Container(
                            width: 100.vw,
                            height: 100.vh - height - offset,
                            alignment: Alignment.center,
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                buildContent(context),
                                buildLoading(context),
                              ],
                            ),
                          ),
                        );
                      }, childCount: 1),
                    ),
                  ],
                );
              },
            ),
          ),
          buildBack(context),
        ],
      ),
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
    );
  }
}