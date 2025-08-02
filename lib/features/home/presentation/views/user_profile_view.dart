import 'package:flutter/material.dart';
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
