import 'package:flutter/material.dart';
import 'package:kick_zone/core/utils/app_images.dart';
import 'package:kick_zone/features/onboarding/presentation/screens/onboarding_screen.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppImages.imagesSplashBackground,
              fit: BoxFit.fill,
            ),
          ),
          Container(color: Colors.black.withAlpha(100)),
          Positioned(
            bottom: 150,
            top: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AppImages.imagesSplashUpCenter,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 42),
                Image.asset(
                  AppImages.imagesSplashCenter,
                  width: MediaQuery.of(context).size.width * 0.17,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void excuteNavigation() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(
        // ignore: use_build_context_synchronously
        context,
        OnboardingScreen.routeName,
      );
    });
  }
}
