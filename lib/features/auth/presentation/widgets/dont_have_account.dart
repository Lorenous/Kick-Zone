import 'package:flutter/material.dart';
import 'package:kick_zone/core/utils/app_styles.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Don't have an account?",
          style: AppStyles.medium16.copyWith(color: Color(0xffB4B4B4)),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Create New',
            style: AppStyles.medium14.copyWith(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
