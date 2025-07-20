import 'package:flutter/material.dart';
import 'package:food_go/features/Auth/presentation/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
static String routeName = '/sign-up';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignUpViewBody(),);
  }
}


