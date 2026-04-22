import 'package:flutter/material.dart';

class CustomBackgroundImage extends StatelessWidget {
  const CustomBackgroundImage({
    super.key,
    required this.image,
    required this.child,
  });
  final String image;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: Image.asset(image, fit: BoxFit.fill)),
        Container(color: Colors.black.withAlpha(100)),
        child,
      ],
    );
  }
}
