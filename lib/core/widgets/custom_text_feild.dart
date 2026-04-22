import 'package:flutter/material.dart';
import 'package:kick_zone/core/utils/app_styles.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
    required this.hintText,
    this.suffixIconl,
    this.obscureText = false,
    this.keyboardType,
  });
  final String hintText;
  final Widget? suffixIconl;
  final bool obscureText;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(12),
        filled: true,
        fillColor: const Color(0xffFEFCFC),
        suffixIcon: suffixIconl,
        hintText: hintText,

        hintStyle: AppStyles.medium16.copyWith(color: const Color(0xffC4C4C4)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
