import 'package:flutter/material.dart';
import 'package:kick_zone/core/utils/app_styles.dart';
import 'package:kick_zone/core/widgets/custom_button.dart';
import 'package:kick_zone/core/widgets/custom_text_feild.dart';
import 'package:kick_zone/features/auth/presentation/widgets/dont_have_account.dart';
import 'package:kick_zone/features/auth/presentation/widgets/forgot_password.dart';
import 'package:kick_zone/features/auth/presentation/widgets/social_logos.dart';

class SigninScreenInputBody extends StatelessWidget {
  const SigninScreenInputBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('WELCOME TO', style: AppStyles.medium20),
        const Text('Kick Zone', style: AppStyles.extra35),
        const Text('Login to your account', style: AppStyles.medium20),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Email',
            style: AppStyles.medium18.copyWith(color: Colors.black),
          ),
        ),
        const CustomTextFeild(hintText: 'Email'),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Password',
            style: AppStyles.medium18.copyWith(color: Colors.black),
          ),
        ),
        const CustomTextFeild(
          hintText: 'Password',
          obscureText: true,
          suffixIconl: Icon(Icons.visibility_off, color: Color(0xffC4C4C4)),
        ),
        const SizedBox(height: 4),
        const Align(alignment: Alignment.centerRight, child: ForgotPassword()),
        const SizedBox(height: 6),
        const CustomButton(text: 'Login'),
        const SizedBox(height: 8),
        const DontHaveAccount(),
        const SizedBox(height: 64),
        const SocialLogos(),
        const SizedBox(height: 24),
      ],
    );
  }
}
