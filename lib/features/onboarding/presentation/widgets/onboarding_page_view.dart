import 'package:flutter/material.dart';
import 'package:kick_zone/core/utils/app_images.dart';
import 'package:kick_zone/features/onboarding/presentation/widgets/onboarding_page_view_item.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        const OnboardingPageViewItem(
          backgroundImage: AppImages.imagesOnboardingBackground1,
          image: AppImages.imagesStaduim,
          title: 'Find near stadiums and rent it easily',
          subTitle:
              'With scout you can find available staduims easily and rent it with your friends ',
        ),
        const OnboardingPageViewItem(
          backgroundImage: AppImages.imagesOnboardingBackground2,
          image: AppImages.imagesAcademy,
          title: 'Start your professional career with us',
          subTitle:
              'With scout you can find available academies and become a player to Start your professional career with us',
        ),
        const OnboardingPageViewItem(
          backgroundImage: AppImages.imagesOnboardingBackground3,
          image: AppImages.imagesCoach,
          title: 'Easily you can become a coach',
          subTitle:
              'With scout you can find available academies and become a coach',
        ),
      ],
    );
  }
}
