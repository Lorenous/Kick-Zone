import 'package:flutter/material.dart';
import 'package:kick_zone/core/utils/app_images.dart';
import 'package:kick_zone/core/widgets/custom_app_bar.dart';
import 'package:kick_zone/core/widgets/custom_background_image.dart';
import 'package:kick_zone/core/widgets/custom_input_container.dart';
import 'package:kick_zone/features/auth/presentation/widgets/signin_screen_input_body.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});
  static const String routeName = 'signin';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomBackgroundImage(
        image: AppImages.imagesSplashBackground,
        child: Column(
          children: [
            CustomAppBar(showBackButton: false),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: CustomInputContainer(child: SigninScreenInputBody()),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
