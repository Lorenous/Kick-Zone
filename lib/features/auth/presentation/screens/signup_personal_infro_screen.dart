import 'package:flutter/material.dart';
import 'package:kick_zone/core/utils/app_images.dart';
import 'package:kick_zone/core/widgets/custom_app_bar.dart';
import 'package:kick_zone/core/widgets/custom_input_container.dart';
import 'package:kick_zone/features/auth/presentation/widgets/signup_personal_info_screen_input_body.dart';

class SignupPersonalInfoScreen extends StatelessWidget {
  final String userType;
  const SignupPersonalInfoScreen({super.key, required this.userType});
  static const String routeName = 'signup-personal-info';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppImages.imagesSplashBackground,
          fit: BoxFit.fill,
          height: double.infinity,
        ),
        Container(color: Colors.black.withAlpha(100)),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              const CustomAppBar(),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: CustomInputContainer(
                  child: SignupPersonalInfoScreenInputBody(userType: userType),
                ),
              ),
              const Spacer(flex: 5),
            ],
          ),
        ),
      ],
    );
  }
}
