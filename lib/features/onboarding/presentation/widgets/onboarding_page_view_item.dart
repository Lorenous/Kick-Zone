import 'package:flutter/material.dart';
import 'package:kick_zone/core/utils/app_styles.dart';
import 'package:kick_zone/features/onboarding/presentation/widgets/background_filter.dart';

class OnboardingPageViewItem extends StatelessWidget {
  const OnboardingPageViewItem({
    super.key,
    required this.backgroundImage,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final String backgroundImage, image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: Image.asset(backgroundImage, fit: BoxFit.fill)),
        const BackgroundFilter(),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.33,
          right: 0,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(image, height: 140),
                const SizedBox(height: 52),
                Text(
                  title,
                  style: AppStyles.bold32,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 42),
                Text(
                  subTitle,
                  style: AppStyles.medium16,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
