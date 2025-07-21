import 'package:flutter/material.dart';
import 'package:food_go/core/constants/constants.dart';
import 'package:food_go/features/home/presentation/widgets/custom_header.dart';
import 'package:food_go/features/home/presentation/widgets/custom_profile_app_bar.dart';
import 'package:food_go/features/home/presentation/widgets/profile_container_body.dart';

class UserProfileViewBody extends StatelessWidget {
  const UserProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CustomHeader(),
        Positioned(
          top: height(context) * 0.2,
          child: Stack(clipBehavior: Clip.none, children: [
            const ProfileContainerBody(),
            Positioned(
              top: -80,
              left: width(context) * 0.3,
              child: Image.asset(
                'assets/images/mask_group.png',
              ),
            ),
          ]),
        ),
        const Positioned(child: CustomProfileAppBar())
      ],
    );
  }
}
