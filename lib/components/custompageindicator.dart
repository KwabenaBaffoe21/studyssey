import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../constant.dart';

class CustomPageIndicator extends StatelessWidget {
  const CustomPageIndicator({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 4,
      effect: const ExpandingDotsEffect(
        activeDotColor: color1,
        dotColor: color3,
        dotHeight: 5.76,
        dotWidth: 5.76,
        radius: 4.44,
        spacing: 5.56,
      ),
    );
  }
}
