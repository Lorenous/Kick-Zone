import 'package:flutter/material.dart';
import 'package:kick_zone/core/utils/app_styles.dart';
import 'package:kick_zone/features/auth/presentation/screens/signup_screen.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Don't have an account?",
          style: AppStyles.medium16.copyWith(color: const Color(0xffB4B4B4)),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, SignupScreen.routeName);
          },
          child: Text(
            'Create New',
            style: AppStyles.medium14.copyWith(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
