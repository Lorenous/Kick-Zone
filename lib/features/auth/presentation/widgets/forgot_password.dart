import 'package:flutter/material.dart';
import 'package:kick_zone/core/utils/app_styles.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Forgot Password?',
      style: AppStyles.medium14.copyWith(color: Colors.black),
    );
  }
}
