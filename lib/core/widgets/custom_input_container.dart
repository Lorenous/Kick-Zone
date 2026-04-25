// import 'package:flutter/material.dart';

// class CustomInputContainer extends StatelessWidget {
//   const CustomInputContainer({super.key, required this.child});
//   final Widget child;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(28),
//         border: Border.all(color: Colors.black, width: 2),
//       ),
//       child: child,
//     );
//   }
// }
import 'dart:ui';
import 'package:flutter/material.dart';

class CustomInputContainer extends StatelessWidget {
  const CustomInputContainer({
    super.key,
    required this.child,
    this.radius = 28,
    this.horizontalPadding = 10,
    this.verticalPadding = 0,
    this.alpha = 0.15,
  });
  final Widget child;
  final double radius, alpha;
  final double horizontalPadding, verticalPadding;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: verticalPadding,
          ),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: alpha),
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(color: Colors.black, width: 1.5),
          ),
          child: child,
        ),
      ),
    );
  }
}
