import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/core/utils/app_images.dart';
import 'package:food_go/core/utils/styles.dart';
import 'package:food_go/core/utils/vaidator_class.dart';
import 'package:food_go/features/Auth/presentation/blocs/auth_cubit/auth_cubit.dart';
import 'package:food_go/features/Auth/presentation/blocs/auth_cubit/auth_state.dart';
import 'package:food_go/features/Auth/presentation/widgets/auth_text_field.dart';
import 'package:food_go/features/Auth/presentation/widgets/custom_button.dart';
import 'package:food_go/features/Auth/presentation/widgets/custom_image.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  ForgetPasswordViewBody({super.key});

  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthResetPasswordSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Reset link sent to your email')),
          );
        } else if (state is AuthFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error)),
          );
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Stack(
            children: [
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
            ],
          ),
          const SizedBox(height: 20),
          Text(
            textAlign: TextAlign.center,
            'Forgot Password?',
            style: Styles.textStyle28.copyWith(color: const Color(0xff1C0D0D)),
          ),
          const SizedBox(height: 12),
          Text(
            textAlign: TextAlign.center,
            'Enter your email to receive a reset link ',
            style: Styles.textStyle20.copyWith(
                color: const Color(0xff1C0D0D), fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 12),
          Form(
            key: formKey,
            child: Column(
              children: [
                AuthTextField(
                    hint: 'Email',
                    controller: emailController,
                    validator: AuthValidators.emailValidator()),
                const SizedBox(height: 16),
                CustomAuthButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      final email = emailController.text.trim();
                      context.read<AuthCubit>().resetPassword(email);
                    }
                  },
                  text: 'Send Reset Link',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
