import 'package:flutter/material.dart';
import 'package:kick_zone/core/utils/app_styles.dart';
import 'package:kick_zone/core/widgets/custom_checkbox.dart';

class TermsAndPolicy extends StatelessWidget {
  const TermsAndPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomCheckbox(
              value: false,
              onChanged: (value) {},
              borderColor: Colors.black,
              checkColor: Colors.black,
            ),
            const SizedBox(width: 8),
            Text(
              'I agree the terms of use',
              style: AppStyles.medium14.copyWith(color: Colors.black),
            ),
          ],
        ),
        const SizedBox(height: 3),
        Row(
          children: [
            CustomCheckbox(
              value: false,
              onChanged: (value) {},
              borderColor: Colors.black,
              checkColor: Colors.black,
            ),
            const SizedBox(width: 8),
            Text(
              'I agree the privacy policy',
              style: AppStyles.medium14.copyWith(color: Colors.black),
            ),
          ],
        ),
      ],
    );
  }
}
