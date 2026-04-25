import 'package:flutter/material.dart';
import 'package:kick_zone/features/auth/presentation/screens/signin_screen.dart';
import 'package:kick_zone/features/auth/presentation/screens/signup_personal_infro_screen.dart';
import 'package:kick_zone/features/auth/presentation/screens/signup_screen.dart';
import 'package:kick_zone/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:kick_zone/features/splash/presentation/screens/splash_screen.dart';

Route? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.routeName:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    case OnboardingScreen.routeName:
      return MaterialPageRoute(builder: (context) => const OnboardingScreen());
    case SigninScreen.routeName:
      return MaterialPageRoute(builder: (context) => const SigninScreen());
    case SignupScreen.routeName:
      return MaterialPageRoute(builder: (context) => const SignupScreen());
    case SignupPersonalInfoScreen.routeName:
      final userType = settings.arguments as String?;
      return MaterialPageRoute(
        builder: (context) =>
            SignupPersonalInfoScreen(userType: userType ?? 'User'),
      );
    default:
      return null;
  }
}
