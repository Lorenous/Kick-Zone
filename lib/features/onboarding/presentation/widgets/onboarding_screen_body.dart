import 'package:flutter/material.dart';
import 'package:kick_zone/core/utils/app_styles.dart';
import 'package:kick_zone/features/auth/presentation/screens/signin_screen.dart';
import 'package:kick_zone/features/onboarding/presentation/widgets/onboarding_dots.dart';
import 'package:kick_zone/features/onboarding/presentation/widgets/onboarding_page_view.dart';

class OnboardingScreenBody extends StatefulWidget {
  const OnboardingScreenBody({super.key});

  @override
  State<OnboardingScreenBody> createState() => _OnboardingScreenBodyState();
}

class _OnboardingScreenBodyState extends State<OnboardingScreenBody> {
  late PageController _pageController;
  late int currentPage = 0;
  @override
  void initState() {
    _pageController = PageController();
    _pageController.addListener(
      () => setState(() {
        currentPage = _pageController.page!.round();
      }),
    );
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OnboardingPageView(pageController: _pageController),
        Positioned(
          bottom: 32,
          right: 0,
          left: 0,
          child: Column(
            children: [
              OnboardingDots(
                pageController: _pageController,
                currentPage: currentPage,
              ),
              const SizedBox(height: 8),
              InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(
                    context,
                    SigninScreen.routeName,
                  );
                },
                child: Text(
                  currentPage == 2 ? 'Start' : 'Skip',
                  style: AppStyles.medium16,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
