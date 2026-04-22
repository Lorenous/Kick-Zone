import 'package:flutter/material.dart';
import 'package:kick_zone/core/utils/app_images.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.showBackButton = true});
  final bool showBackButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 35),
        Visibility(
          maintainInteractivity: true,
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          visible: showBackButton,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(AppImages.imagesArrowBack),
          ),
        ),
        const Spacer(flex: 4),
        Image.asset(AppImages.imagesAuthTop),
        const Spacer(flex: 7),
      ],
    );
  }
}
