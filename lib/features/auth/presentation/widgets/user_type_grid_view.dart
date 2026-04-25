import 'package:flutter/material.dart';
import 'package:kick_zone/core/utils/app_images.dart';
import 'package:kick_zone/features/auth/presentation/screens/signup_personal_infro_screen.dart';
import 'package:kick_zone/features/auth/presentation/widgets/user_type_item.dart';

class UserTypeGridView extends StatefulWidget {
  const UserTypeGridView({super.key});

  @override
  State<UserTypeGridView> createState() => _UserTypeGridViewState();
}

class _UserTypeGridViewState extends State<UserTypeGridView> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 8,
        childAspectRatio: 0.9,
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        final List<String> images = [
          AppImages.imagesPlayer,
          AppImages.imagesCoach1,
          AppImages.imagesAcademy1,
          AppImages.imagesStadium1,
        ];
        final List<String> titles = ['Player', 'Coach', 'Academy', 'Stadium'];
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
            Navigator.pushNamed(
              context,
              SignupPersonalInfoScreen.routeName,
              arguments: titles[index],
            );
          },
          child: UserTypeItem(
            image: images[index],
            title: titles[index],
            isSelected: selectedIndex == index,
          ),
        );
      },
    );
  }
}
