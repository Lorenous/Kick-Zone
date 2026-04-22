import 'package:flutter/material.dart';
import 'package:kick_zone/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:kick_zone/features/splash/presentation/screens/splash_screen.dart';

Route? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.routeName:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    case OnboardingScreen.routeName:
      return MaterialPageRoute(builder: (context) => const OnboardingScreen());
    default:
      return null;
  }
}
