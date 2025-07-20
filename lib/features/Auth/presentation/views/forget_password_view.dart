import 'package:flutter/material.dart';
import 'package:food_go/features/Auth/presentation/widgets/forget_password_view_body.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});
  static const String routeName = '/forget-password';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ForgetPasswordViewBody(),
    );
  }
}
