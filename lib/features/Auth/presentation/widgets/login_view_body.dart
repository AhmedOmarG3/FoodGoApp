import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/core/constants/constants.dart';
import 'package:food_go/core/utils/app_images.dart';
import 'package:food_go/core/utils/colors.dart';
import 'package:food_go/core/utils/styles.dart';
import 'package:food_go/core/utils/vaidator_class.dart';
import 'package:food_go/features/Auth/presentation/blocs/auth_cubit/auth_cubit.dart';
import 'package:food_go/features/Auth/presentation/blocs/auth_cubit/auth_state.dart';
import 'package:food_go/features/Auth/presentation/views/forget_password_view.dart';
import 'package:food_go/features/Auth/presentation/views/sign_up_view.dart';
import 'package:food_go/features/Auth/presentation/widgets/auth_text_field.dart';
import 'package:food_go/features/Auth/presentation/widgets/custom_button.dart';
import 'package:food_go/features/Auth/presentation/widgets/custom_image.dart';
import 'package:food_go/features/Auth/presentation/widgets/google_signing_button.dart';
import 'package:food_go/features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: height(context),
        child: BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthLoading) {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) =>
                    const Center(child: CircularProgressIndicator()),
              );
            } else {
              Navigator.of(context, rootNavigator: true).pop();

              if (state is AuthSuccess) {
                GoRouter.of(context).push(HomeView.routeName);
              }

              if (state is AuthFailure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.error)),
                );
              }
            }
          },
          child: Form(
            key: formKey,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                controller: email,
                validator: AuthValidators.emailValidator(),
                hint: 'Email',
              ),
              AuthTextField(
                controller: password,
                validator: AuthValidators.passwordValidator(),
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
                  if (formKey.currentState!.validate()) {
                    BlocProvider.of<AuthCubit>(context).login(
                      email: email.text,
                      password: password.text,
                    );
                  }
                },
                text: 'Sign In',
              ),
              GoogleSigningButton(
                text: 'Sign In with Google',
                onPressed: () {
                  BlocProvider.of<AuthCubit>(context).signInWithGoogle();
                },
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
            ]),
          ),
        ),
      ),
    );
  }
}
