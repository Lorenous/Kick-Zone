import 'package:flutter/material.dart';
import 'package:kick_zone/core/utils/app_styles.dart';
import 'package:kick_zone/core/widgets/custom_text_feild.dart';

class PersonalInfoForm extends StatelessWidget {
  const PersonalInfoForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'First Name',
          style: AppStyles.medium18.copyWith(color: Colors.black),
        ),
        const CustomTextFeild(hintText: 'First name'),
        const SizedBox(height: 6),
        Text(
          'Last Name',
          style: AppStyles.medium18.copyWith(color: Colors.black),
        ),
        const CustomTextFeild(hintText: 'Last name'),
        const SizedBox(height: 6),
        Text(
          'Username',
          style: AppStyles.medium18.copyWith(color: Colors.black),
        ),
        const CustomTextFeild(hintText: 'Username'),
        const SizedBox(height: 6),
        Text(
          'Date of birth',
          style: AppStyles.medium18.copyWith(color: Colors.black),
        ),
        const CustomTextFeild(hintText: 'dd/mm/yy'),
      ],
    );
  }
}
