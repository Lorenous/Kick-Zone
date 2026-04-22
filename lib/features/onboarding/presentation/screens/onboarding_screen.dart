import 'package:flutter/material.dart';
import 'package:kick_zone/features/onboarding/presentation/widgets/onboarding_screen_body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  static const String routeName = 'onboarding';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: OnboardingScreenBody());
  }
}
