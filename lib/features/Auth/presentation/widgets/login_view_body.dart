import 'package:flutter/material.dart';
import 'package:food_go/core/constants/constants.dart';
import 'package:food_go/core/utils/app_images.dart';
import 'package:food_go/core/utils/colors.dart';
import 'package:food_go/core/utils/styles.dart';
import 'package:food_go/features/Auth/presentation/views/forget_password_view.dart';
import 'package:food_go/features/Auth/presentation/views/sign_up_view.dart';
import 'package:food_go/features/Auth/presentation/widgets/auth_text_field.dart';
import 'package:food_go/features/Auth/presentation/widgets/custom_button.dart';
import 'package:food_go/features/Auth/presentation/widgets/custom_image.dart';
import 'package:food_go/features/Auth/presentation/widgets/google_signing_button.dart';
import 'package:food_go/features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      CustomImage(
        imagePath: AppImages.imagesLogin,
      ),
      const SizedBox(
        height: 20,
      ),
      Text(
        textAlign: TextAlign.center,
        'Welcome back to\n Foodgo!',
        style: Styles.textStyle28,
      ),
      const SizedBox(
        height: 12,
      ),
      AuthTextField(
        hint: 'Email',
      ),
      AuthTextField(
        hint: 'Password',
      ),
      GestureDetector(
        onTap: () {
          GoRouter.of(context).push(ForgetPasswordView.routeName);
        },
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              'Forgot Password?',
              style: Styles.textStyle20.copyWith(
                  color: kAuthTextColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 18),
            ),
          ),
        ]),
      ),
      SizedBox(
        height: 10,
      ),
      CustomAuthButton(
        onPressed: () {
          GoRouter.of(context).push(HomeView.routeName);
        },
        text: 'Sign In',
      ),
      GoogleSigningButton(
        text: 'Sign in with Google',
        onPressed: () {},
      ),
      const Spacer(),
      GestureDetector(
          onTap: () {
            GoRouter.of(context).push(SignUpView.routeName);
          },
          child: Text('Don\'t have an account? Sign Up',
              style: Styles.textStyle16)),
      const SizedBox(
        height: 30,
      )
    ]);
  }
}
