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
  const CustomInputContainer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(28),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.15),
            borderRadius: BorderRadius.circular(28),
            border: Border.all(color: Colors.black, width: 1.5),
          ),
          child: child,
        ),
      ),
    );
  }
}
