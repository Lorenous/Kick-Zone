import 'package:flutter/material.dart';
import 'package:kick_zone/core/utils/app_styles.dart';
import 'package:kick_zone/core/widgets/custom_button.dart';
import 'package:kick_zone/features/auth/presentation/screens/signup_add_photo_screen.dart';
import 'package:kick_zone/features/auth/presentation/widgets/personal_info_form.dart';
import 'package:kick_zone/features/auth/presentation/widgets/terms_and_policy.dart';
import 'package:kick_zone/features/auth/presentation/widgets/already_have_account.dart';

class SignupPersonalInfoScreenInputBody extends StatelessWidget {
  const SignupPersonalInfoScreenInputBody({super.key, required this.userType});
  final String userType;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(userType, style: AppStyles.semiBold32),
        Text(
          'Create a new account',
          style: AppStyles.medium20.copyWith(color: Colors.black),
        ),
        const PersonalInfoForm(),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: TermsAndPolicy(),
        ),
        const SizedBox(height: 20),
        CustomButton(
          text: 'sign up',
          onPressed: () {
            Navigator.pushNamed(context, SignupAddPhotoScreen.routeName);
          },
        ),
        const SizedBox(height: 2),
        const AlreadyHaveAccount(),
      ],
    );
  }
}
