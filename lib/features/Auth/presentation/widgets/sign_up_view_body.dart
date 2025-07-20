import 'package:flutter/material.dart';
import 'package:food_go/core/constants/constants.dart';
import 'package:food_go/core/utils/app_images.dart';
import 'package:food_go/core/utils/styles.dart';
import 'package:food_go/features/Auth/presentation/widgets/auth_text_field.dart';
import 'package:food_go/features/Auth/presentation/widgets/custom_button.dart';
import 'package:food_go/features/Auth/presentation/widgets/google_signing_button.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Image.asset(
          AppImages.imagesSignUp,
          height: height(context) * 0.2583,
          width: width(context),
          fit: BoxFit.fill,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          textAlign: TextAlign.center,
          'Create your Foodgo account!',
          style: Styles.textStyle28.copyWith(fontSize: 25),
        ),
        const SizedBox(
          height: 12,
        ),
      const  AuthTextField(
          hint: 'Full Name',
        ),
      const  AuthTextField(
          hint: 'Email',
        ),
      const  AuthTextField(
          hint: 'Password',
        ),
     const   AuthTextField(
          hint: 'Confirm Password',
        ),
        CustomButton(
          onPressed: () {},
          text: 'Create Account',
        ),
        GoogleSigningButton(
          text: 'Sign up with Google',
          onPressed: () {},
        ),
    const    SizedBox(
          height: 30,
        ),
        Text('Already have an account? Sign In', style: Styles.textStyle16),
        const SizedBox(
          height: 30,
        )
      ]),
    );
  }
}
