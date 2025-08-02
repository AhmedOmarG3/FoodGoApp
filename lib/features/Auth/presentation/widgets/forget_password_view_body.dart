import 'package:flutter/material.dart';
import 'package:food_go/core/utils/app_images.dart';
import 'package:food_go/core/utils/styles.dart';
import 'package:food_go/features/Auth/presentation/widgets/auth_text_field.dart';
import 'package:food_go/features/Auth/presentation/widgets/custom_button.dart';
import 'package:food_go/features/Auth/presentation/widgets/custom_image.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      const Stack(children: [
        CustomImage(
          imagePath: AppImages.imagesForgetPassword,
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Row(
            children: [
              BackButton(
                style: ButtonStyle(iconSize: WidgetStatePropertyAll(25)),
              )
            ],
          ),
        )
      ]),
      const SizedBox(
        height: 20,
      ),
      Text(
        textAlign: TextAlign.center,
        'Forgot Password?',
        style: Styles.textStyle28.copyWith(color: const Color(0xff1C0D0D)),
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
      const AuthTextField(
        hint: 'Email',
      ),
      CustomAuthButton(
        onPressed: () {},
        text: 'Send Reset Link',
      ),
    ]);
  }
}
