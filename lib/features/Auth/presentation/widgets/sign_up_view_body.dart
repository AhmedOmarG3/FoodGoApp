import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/core/utils/app_images.dart';
import 'package:food_go/core/utils/styles.dart';
import 'package:food_go/core/utils/vaidator_class.dart';
import 'package:food_go/features/Auth/presentation/blocs/auth_cubit/auth_cubit.dart';
import 'package:food_go/features/Auth/presentation/blocs/auth_cubit/auth_state.dart';
import 'package:food_go/features/Auth/presentation/views/login_view.dart';
import 'package:food_go/features/Auth/presentation/widgets/auth_text_field.dart';
import 'package:food_go/features/Auth/presentation/widgets/custom_button.dart';
import 'package:food_go/features/Auth/presentation/widgets/custom_image.dart';
import 'package:food_go/features/Auth/presentation/widgets/google_signing_button.dart';
import 'package:food_go/features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
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
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const CustomImage(imagePath: AppImages.imagesSignUp),
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
            AuthTextField(
              controller: name,
              validator: AuthValidators.nameValidator(),
              hint: 'Full Name',
            ),
            AuthTextField(
              validator: AuthValidators.emailValidator(),
              controller: email,
              hint: 'Email',
            ),
            AuthTextField(
              validator: AuthValidators.passwordValidator(),
              controller: password,
              hint: 'Password',
            ),
            AuthTextField(
              validator: AuthValidators.confirmPasswordValidator(password),
              controller: confirmPassword,
              hint: 'Confirm Password',
            ),
            CustomAuthButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  BlocProvider.of<AuthCubit>(context).signUp(
                    email: email.text.trim(),
                    password: password.text.trim(),
                  );
                }
              },
              text: 'Create Account',
            ),
            GoogleSigningButton(
  text: 'Sign up with Google',
  onPressed: () {
    BlocProvider.of<AuthCubit>(context).signInWithGoogle();
  },
),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
                onTap: () {
                  GoRouter.of(context).go(LoginView.routeName);
                },
                child: Text('Already have an account? Sign In',
                    style: Styles.textStyle16)),
            const SizedBox(
              height: 30,
            )
          ]),
        ),
      ),
    );
  }
}
