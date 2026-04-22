import 'package:flutter/material.dart';
import 'package:kick_zone/core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 8),
        backgroundColor: const Color(0xff72951E),
      ),
      child: Text(text, style: AppStyles.medium24),
    );
  }
}
