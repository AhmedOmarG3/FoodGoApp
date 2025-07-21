import 'package:flutter/material.dart';
import 'package:food_go/core/constants/constants.dart';
import 'package:food_go/core/utils/app_images.dart';
import 'package:food_go/core/utils/colors.dart';
import 'package:food_go/features/home/presentation/widgets/custom_header.dart';
import 'package:food_go/features/home/presentation/widgets/user_profile_view_body.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({super.key});
  static const String routeName = '/user-profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UserProfileViewBody(),
    );
  }
}
