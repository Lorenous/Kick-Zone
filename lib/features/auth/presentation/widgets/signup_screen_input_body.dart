import 'package:flutter/material.dart';
import 'package:kick_zone/core/utils/app_styles.dart';
import 'package:kick_zone/features/auth/presentation/widgets/user_type_grid_view.dart';

class SignupScreenInputBody extends StatelessWidget {
  const SignupScreenInputBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('WELCOME TO', style: AppStyles.medium20),
        const Text('Kick Zone', style: AppStyles.extra35),
        const Text('Who are you?', style: AppStyles.semiBold32),
        Text(
          'Create Account as',
          style: AppStyles.medium20.copyWith(color: Colors.black),
        ),
        const SizedBox(height: 7),
        const Expanded(child: UserTypeGridView()),
      ],
    );
  }
}
