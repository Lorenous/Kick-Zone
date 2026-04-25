import 'package:flutter/material.dart';
import 'package:kick_zone/core/utils/app_styles.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Already have an account?',
          style: AppStyles.medium16.copyWith(color: const Color(0xffC0C0C0)),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Login', style: TextStyle(color: Colors.black)),
        ),
      ],
    );
  }
}
