import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class OnboardingDots extends StatefulWidget {
  const OnboardingDots({
    super.key,
    required this.pageController,
    required this.currentPage,
  });

  final PageController pageController;
  final int currentPage;

  @override
  State<OnboardingDots> createState() => _OnboardingDotsState();
}

class _OnboardingDotsState extends State<OnboardingDots> {
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      onTap: (position) {
        widget.pageController.animateToPage(
          position.toInt(),
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      },
      dotsCount: 3,
      position: widget.currentPage.toDouble(),
      decorator: const DotsDecorator(
        activeColor: Colors.black,
        color: Colors.white,
        size: Size.square(15),
        activeSize: Size.square(15),
      ),
    );
  }
}
