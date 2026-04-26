import 'package:flutter/material.dart';
import 'package:kick_zone/core/utils/app_images.dart';
import 'package:kick_zone/core/widgets/custom_app_bar.dart';
import 'package:kick_zone/core/widgets/custom_input_container.dart';
import 'package:kick_zone/features/auth/presentation/widgets/signup_add_photo_screen_input_body.dart';

class SignupAddPhotoScreen extends StatelessWidget {
  const SignupAddPhotoScreen({super.key});
  static const String routeName = 'signup-add-photo';

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
        const Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              CustomAppBar(),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: CustomInputContainer(
                  child: SignupAddPhotoScreenInputBody(),
                ),
              ),
              Spacer(flex: 5),
            ],
          ),
        ),
      ],
    );
  }
}
