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
    currentBackgroundPath = fixtureCurrentBackgroundPath;
    _pageController = fixturePageController;
  }

  late int currentIndex;

  late String currentBackgroundPath;

  late PageController _pageController;

  Widget buildDotIndicator() {
    return DotsIndicator(
      dotsCount: 5,
      position: currentIndex,
      decorator: DotsDecorator(activeColor: const Color(0xFF182B49)),
    );
  }

  Widget buildPage1() {
    return OnboardingSlideTemplate(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      heroImage: const AssetImage('assets/placeholder.png'),
      heading: "ONE-STOP ACCESS TO CAMPUS LIFE.",
      description:
          "Keep up to date with amazing events and stay connected to campus news.",
    );
  }

  Widget buildPage2() {
    return OnboardingSlideTemplate(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      heroImage: const AssetImage('assets/placeholder.png'),
      heading: "YOUR SCHEDULE ON THE GO",
      description: "View your classes and finals schedule whenever you need.",
    );
  }

  Widget buildPage3() {
    return OnboardingSlideTemplate(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      heroImage: const AssetImage('assets/placeholder.png'),
      heading: "PARKING MADE EASIER.",
      description: "Keep an eye on parking lot capacity to plan your day.",
    );
  }

  Widget buildPage4() {
    return OnboardingSlideTemplate(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      heroImage: const AssetImage('assets/placeholder.png'),
      heading: "SPEND LESS TIME WAITING.",
      description:
          "Easily see how busy campus locations are before you arrive.",
    );
  }

  Widget buildPage5() {
    return OnboardingSlideTemplate(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      heroImage: const AssetImage('assets/placeholder.png'),
      heading: "YOU'RE ALL SET.",
      description:
          "We recommend turning on push notifications to receive campus and safety alerts.",
    );
  }

  Widget buildGoToTheAppButton() {
    return GestureDetector(
      child: Semantics(
        hint: 'press to skip the login process and use this app as a visitor',
        child: Text(
          "GO TO THE APP",
          style: TextStyle(
            color: const Color(0xFF182B49), // Subheading color
            fontWeight: FontWeight.w700,
            fontSize: 16.5,
            height: 1.195, // line height: 16.73px
            decoration: TextDecoration.underline,
          ),
        ),
      ),
      onTap: () async {
        /* spm: non-rebuild body erased */
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: lightOnboardingScreen,
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          // Background Image based on currentIndex
          Container(
            width: double.infinity,
            height: double.infinity,
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage(currentBackgroundPath), // Dynamic background
            //     fit: BoxFit.cover,
            //   ),
            // ),
            child: PageView.builder(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              itemBuilder: (context, index) {
                return Container(color: Colors.grey.shade300, width: 80, height: 80);
              },
            ),
            // child: Image.asset(
            //   "assets/images/onboarding-slide-${currentIndex+1}-background.png",
            //   fit: BoxFit.cover
            // ),
          ),
          Column(
            children: <Widget>[
              const SizedBox(height: 110.0),
              buildDotIndicator(),
              Expanded(
                child: PageView(
                  pageSnapping: true,
                  //controller: _pageController,
                  onPageChanged: (int page) {
                    /* spm: non-rebuild body erased */
                  },
                  children: [
                    buildPage1(),
                    buildPage2(),
                    buildPage3(),
                    buildPage4(),
                    buildPage5(),
                  ],
                ),
              ),
              buildGoToTheAppButton(),
              const SizedBox(height: 80.0),
            ],
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

class OnboardingSlideTemplate extends StatelessWidget {
  const OnboardingSlideTemplate({
    super.key,
    required this.width,
    required this.height,
    required this.heroImage,
    required this.heading,
    required this.description,
  });

  final double width;
  final double height;
  final AssetImage heroImage;
  final String heading;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const SizedBox(height: 10.0),
        // Hero Image
        FractionallySizedBox(
          child: Container(
            height: height * .42,
            width: width * .9,
            decoration: BoxDecoration(
              image: DecorationImage(image: heroImage, fit: BoxFit.fill),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: width * 0.9,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Heading
                  Text(
                    heading,
                    style: TextStyle(
                      color: ColorPrimary,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: height * 0.025),
                  // Description
                  Text(
                    description,
                    style: TextStyle(
                      color: ColorPrimary.withOpacity(0.7),
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
