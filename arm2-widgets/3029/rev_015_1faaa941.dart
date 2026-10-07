// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'dart:math';
import 'package:flutter/material.dart';
part 'dependencies.dart';


class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  GeneratedWidget.fixture({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  @override
  void initState() {
    super.initState();
    currentIndex = fixtureCurrentIndex;
    width = fixtureWidth;
    height = fixtureHeight;
  }

  late int currentIndex;

  late double width;

  late double height;

  Widget buildDotIndicator() {
    return DotsIndicator(
      dotsCount: 3,
      position: currentIndex,
      decorator: DotsDecorator(
        activeColor: ColorPrimary,
        spacing: EdgeInsets.all(4.0),
      ),
    );
  }

  Widget buildLoginButton() {
    return Container(
      color: ColorPrimary,
      height: height * 0.089,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(foregroundColor: ColorPrimary),
              onPressed: () {
                /* spm: non-rebuild body erased */
              },
              child: Semantics(
                button: true,
                hint:
                    'press to start by choosing your affiliation to UC San Diego',
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(foregroundColor: ColorPrimary),
              onPressed: () {
                /* spm: non-rebuild body erased */
              },
              child: Semantics(
                button: true,
                hint: 'press to login with your ucsd account',
                child: Text(
                  "Log In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPage1() {
    return OnboardingPage(
      width: width,
      height: height,
      background: const AssetImage('assets/placeholder.png'),
      primary: const AssetImage('assets/placeholder.png'),
      primaryPadding: (x: 0.03, y: 0.1),
      primaryScale: (x: 0.48, y: 0.4),
      heading: "Make the most out of your CAMPUS CONNECTIONS",
      description:
          "Your trusted, on-the-go, location-based campus resource for all things Triton.",
    );
  }

  Widget buildPage2() {
    return OnboardingPage(
      width: width,
      height: height,
      background: const AssetImage('assets/placeholder.png'),
      primary: const AssetImage('assets/placeholder.png'),
      primaryPadding: (x: 0.026, y: 0.35),
      primaryScale: (x: 0.49, y: 0.14),
      heading: "Made for students AND staff",
      description: "Log in now to gain access to personalized information.",
    );
  }

  Widget buildPage3() {
    return OnboardingPage(
      width: width,
      height: height,
      background: const AssetImage('assets/placeholder.png'),
      primary: const AssetImage('assets/placeholder.png'),
      primaryPadding: (x: 0.03, y: 0.1),
      primaryScale: (x: 0.48, y: 0.4),
      heading: "Know what's going on",
      description:
          "Connect to the latest university services, news, and information when you need it most.",
    );
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: PageView(
                    pageSnapping: true,
                    onPageChanged: (int page) {
                      /* spm: non-rebuild body erased */
                    },
                    children: [buildPage1(), buildPage2(), buildPage3()],
                  ),
                ),
                buildDotIndicator(),
                Container(height: height * 0.066, color: Colors.white),
                buildLoginButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DotsIndicator extends StatelessWidget {
  final int dotsCount, position;
  final DotsDecorator decorator;
  final Axis axis;
  final bool reversed;
  final OnTap? onTap;
  final MainAxisSize mainAxisSize;
  final MainAxisAlignment mainAxisAlignment;

  DotsIndicator({
    Key? key,
    required this.dotsCount,
    this.position = 0,
    this.decorator = const DotsDecorator(),
    this.axis = Axis.horizontal,
    this.reversed = false,
    this.mainAxisSize = MainAxisSize.min,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.onTap,
  }) : assert(dotsCount > 0, 'dotsCount must be superior to zero'),
       assert(position >= 0, 'position must be superior or equals to zero'),
       assert(position < dotsCount, "position must be less than dotsCount"),
       assert(
         decorator.colors.isEmpty || decorator.colors.length == dotsCount,
         "colors param in decorator must empty or have same length as dotsCount parameter",
       ),
       assert(
         decorator.activeColors.isEmpty ||
             decorator.activeColors.length == dotsCount,
         "activeColors param in decorator must empty or have same length as dotsCount parameter",
       ),
       assert(
         decorator.sizes.isEmpty || decorator.sizes.length == dotsCount,
         "sizes param in decorator must empty or have same length as dotsCount parameter",
       ),
       assert(
         decorator.activeSizes.isEmpty ||
             decorator.activeSizes.length == dotsCount,
         "activeSizes param in decorator must empty or have same length as dotsCount parameter",
       ),
       assert(
         decorator.shapes.isEmpty || decorator.shapes.length == dotsCount,
         "shapes param in decorator must empty or have same length as dotsCount parameter",
       ),
       assert(
         decorator.activeShapes.isEmpty ||
             decorator.activeShapes.length == dotsCount,
         "activeShapes param in decorator must empty or have same length as dotsCount parameter",
       ),
       super(key: key);

  Widget _wrapInkwell(Widget dot, int index) {
    return InkWell(
      customBorder: position == index
          ? decorator.getActiveShape(index)
          : decorator.getShape(index),
      onTap: () {
        /* spm: non-rebuild body erased */
      },
      child: dot,
    );
  }

  Widget _buildDot(BuildContext context, int index) {
    final double lerpValue = min(1, (position - index).abs()).toDouble();

    final size = Size.lerp(
      decorator.getActiveSize(index),
      decorator.getSize(index),
      lerpValue,
    )!;

    final dot = Container(
      width: size.width,
      height: size.height,
      margin: decorator.spacing,
      decoration: ShapeDecoration(
        color: Color.lerp(
          decorator.getActiveColor(index) ?? Theme.of(context).primaryColor,
          decorator.getColor(index),
          lerpValue,
        ),
        shape: ShapeBorder.lerp(
          decorator.getActiveShape(index),
          decorator.getShape(index),
          lerpValue,
        )!,
      ),
    );
    return onTap == null ? dot : _wrapInkwell(dot, index);
  }

  @override
  Widget build(BuildContext context) {
    final dotsList = List<Widget>.generate(
      dotsCount,
      (i) => _buildDot(context, i),
    );
    final dots = reversed ? dotsList.reversed.toList() : dotsList;

    return axis == Axis.vertical
        ? Column(
            mainAxisAlignment: mainAxisAlignment,
            mainAxisSize: mainAxisSize,
            children: dots,
          )
        : Row(
            mainAxisAlignment: mainAxisAlignment,
            mainAxisSize: mainAxisSize,
            children: dots,
          );
  }
}

class DotsDecorator {
  /// Inactive dot color
  ///
  /// @Default `Colors.grey`
  final Color color;

  /// List of inactive dot colors
  /// One color by dot
  ///
  /// @Default `Value of color parameter applied to each dot`
  final List<Color> colors;

  /// Active dot color
  ///
  /// @Default `Theme.of(context).primaryColor`
  final Color? activeColor;

  /// List of active dot colors
  /// One color by dot
  ///
  /// @Default `Value of activeColor parameter applied to each dot`
  final List<Color> activeColors;

  /// Inactive dot size
  ///
  /// @Default `Size.square(9.0)`
  final Size size;

  /// List of inactive dot size
  /// One size by dot
  ///
  /// @Default `Value of size parameter applied to each dot`
  final List<Size> sizes;

  /// Active dot size
  ///
  /// @Default `Size.square(9.0)`
  final Size activeSize;

  /// List of active dot size
  /// One size by dot
  ///
  /// @Default `Value of activeSize parameter applied to each dot`
  final List<Size> activeSizes;

  /// Inactive dot shape
  ///
  /// @Default `CircleBorder()`
  final ShapeBorder shape;

  /// List of inactive dot shape
  /// One shape by dot
  ///
  /// @Default `Value of shape parameter applied to each dot`
  final List<ShapeBorder> shapes;

  /// Active dot shape
  ///
  /// @Default `CircleBorder()`
  final ShapeBorder activeShape;

  /// List of active dot shapes
  /// One shape by dot
  ///
  /// @Default `Value of activeShape parameter applied to each dot`
  final List<ShapeBorder> activeShapes;

  /// Spacing between dots
  ///
  /// @Default `EdgeInsets.all(6.0)`
  final EdgeInsets spacing;

  const DotsDecorator({
    this.color = Colors.grey,
    this.colors = const [],
    this.activeColor,
    this.activeColors = const [],
    this.size = kDefaultSize,
    this.sizes = const [],
    this.activeSize = kDefaultSize,
    this.activeSizes = const [],
    this.shape = kDefaultShape,
    this.shapes = const [],
    this.activeShape = kDefaultShape,
    this.activeShapes = const [],
    this.spacing = kDefaultSpacing,
  });

  Color? getActiveColor(int index) {
    return activeColors.isNotEmpty ? activeColors[index] : activeColor;
  }

  Color getColor(int index) {
    return colors.isNotEmpty ? colors[index] : color;
  }

  Size getActiveSize(int index) {
    return activeSizes.isNotEmpty ? activeSizes[index] : activeSize;
  }

  Size getSize(int index) {
    return sizes.isNotEmpty ? sizes[index] : size;
  }

  ShapeBorder getActiveShape(int index) {
    return activeShapes.isNotEmpty ? activeShapes[index] : activeShape;
  }

  ShapeBorder getShape(int index) {
    return shapes.isNotEmpty ? shapes[index] : shape;
  }
}

const Size kDefaultSize = Size.square(9.0);

const ShapeBorder kDefaultShape = CircleBorder();

const EdgeInsets kDefaultSpacing = EdgeInsets.all(6.0);

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.width,
    required this.height,
    required this.background,
    required this.primary,
    required this.primaryPadding,
    required this.primaryScale,
    required this.heading,
    required this.description,
  });

  final double width;
  final double height;
  final AssetImage background;
  final AssetImage primary;
  final ({double x, double y}) primaryPadding;
  final ({double x, double y}) primaryScale;
  final String heading;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FractionallySizedBox(
              child: Container(
                height: height * 0.42,
                decoration: new BoxDecoration(
                  image: DecorationImage(image: background, fit: BoxFit.fill),
                ),
              ),
            ),
            Container(height: height * 0.056, color: Colors.white),
            Expanded(
              child: Container(
                width: width * 0.9,
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        heading,
                        style: TextStyle(
                          color: ColorPrimary,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(padding: EdgeInsets.only(top: height * 0.01)),
                      Text(
                        description,
                        style: TextStyle(
                          color: ColorPrimary.withOpacity(0.7),
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.only(
            left: width * primaryPadding.x,
            top: height * primaryPadding.y,
          ),
          child: Container(
            height: height * primaryScale.y,
            width: width * primaryScale.x,
            decoration: BoxDecoration(
              image: DecorationImage(image: primary, fit: BoxFit.fill),
            ),
          ),
        ),
      ],
    );
  }
}













// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
