import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kick_zone/core/utils/app_images.dart';

class SocialLogos extends StatelessWidget {
  const SocialLogos({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppImages.imagesGoogle),
        const SizedBox(width: 12),
        SvgPicture.asset(AppImages.imagesFacebook),
      ],
    );
  }
}
