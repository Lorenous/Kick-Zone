import 'package:flutter/material.dart';
import 'package:kick_zone/core/utils/app_styles.dart';
import 'package:kick_zone/core/widgets/custom_input_container.dart';

class UserTypeItem extends StatelessWidget {
  const UserTypeItem({
    super.key,
    required this.image,
    required this.title,
    this.isSelected = false,
  });
  final String image, title;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return CustomInputContainer(
      horizontalPadding: 0,
      verticalPadding: 10,
      radius: 6,
      alpha: 0.40,
      child: Column(
        children: [
          Image.asset(image),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
            decoration: BoxDecoration(
              color: isSelected ? const Color(0xff72951E) : Colors.white,
              borderRadius: BorderRadius.circular(22),
            ),
            child: Text(
              title,
              style: AppStyles.medium18.copyWith(
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
