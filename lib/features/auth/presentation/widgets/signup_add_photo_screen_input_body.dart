import 'package:flutter/material.dart';
import 'package:kick_zone/core/utils/app_images.dart';
import 'package:kick_zone/core/utils/app_styles.dart';
import 'package:kick_zone/core/widgets/custom_button.dart';

class SignupAddPhotoScreenInputBody extends StatefulWidget {
  const SignupAddPhotoScreenInputBody({super.key});

  @override
  State<SignupAddPhotoScreenInputBody> createState() =>
      _SignupAddPhotoScreenInputBodyState();
}

class _SignupAddPhotoScreenInputBodyState
    extends State<SignupAddPhotoScreenInputBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Account Photo', style: AppStyles.semiBold32),
        Text(
          'Choose a photo for \nyour account ',
          style: AppStyles.medium20.copyWith(color: Colors.black),
          textAlign: TextAlign.center,
        ),
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            const Icon(
              Icons.account_circle_outlined,
              size: 200,
              color: Colors.white,
            ),
            Positioned(
              right: 24,
              bottom: 24,
              child: Container(
                width: 45,
                height: 45,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: const Icon(Icons.edit, color: Colors.white, size: 24),
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Image.asset(AppImages.imagesImageUpload, width: 24, height: 24),
                const SizedBox(width: 3),
                Text(
                  'Select image from gallery',
                  style: AppStyles.medium16.copyWith(color: Colors.black),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Image.asset(AppImages.imagesCamera, width: 24, height: 24),
                const SizedBox(width: 3),
                Text(
                  'Take photo with camera',
                  style: AppStyles.medium16.copyWith(color: Colors.black),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        CustomButton(text: 'Next', onPressed: () {}),
        const SizedBox(height: 16),
        InkWell(
          onTap: () {},
          child: Text(
            'Skip',
            style: AppStyles.medium18.copyWith(color: Colors.black),
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
