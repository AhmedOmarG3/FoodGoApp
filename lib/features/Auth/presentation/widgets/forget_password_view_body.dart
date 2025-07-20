import 'package:flutter/material.dart';
import 'package:food_go/core/constants/constants.dart';
import 'package:food_go/core/utils/app_images.dart';
import 'package:food_go/core/utils/colors.dart';
import 'package:food_go/core/utils/styles.dart';
import 'package:food_go/features/Auth/presentation/views/forget_password_view.dart';
import 'package:food_go/features/Auth/presentation/views/login_view.dart';
import 'package:food_go/features/Auth/presentation/widgets/auth_text_field.dart';
import 'package:food_go/features/Auth/presentation/widgets/custom_button.dart';
import 'package:food_go/features/Auth/presentation/widgets/custom_image.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      CustomImage(
        imagePath: AppImages.imagesForgetPassword,
      ),
      const SizedBox(
        height: 20,
      ),
      Text(
        textAlign: TextAlign.center,
        'Forgot Password?',
        style: Styles.textStyle28.copyWith(color: Color(0xff1C0D0D)),
      ),
      const SizedBox(
        height: 12,
      ),
      Text(
        textAlign: TextAlign.center,
        'Enter your email to receive a reset link ',
        style: Styles.textStyle20.copyWith(
            color: const Color(0xff1C0D0D), fontWeight: FontWeight.w400),
      ),
      const SizedBox(
        height: 12,
      ),
      AuthTextField(
        hint: 'Email',
      ),
      CustomAuthButton(
        onPressed: () {},
        text: 'Send Reset Link',
      ),
      GestureDetector(
        onTap: () {
          GoRouter.of(context).go(LoginView.routeName);
        },
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Remember password ? go to login ',
            style: Styles.textStyle20
                .copyWith(color: kAuthTextColor, fontWeight: FontWeight.w400),
          ),
        ]),
      ),
    ]);
  }
}
