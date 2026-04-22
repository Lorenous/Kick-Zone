import 'package:flutter/material.dart';
import 'package:kick_zone/features/splash/presentation/widgets/splash_screen_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static const String routeName = 'splash';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SplashScreenBody());
  }
}
