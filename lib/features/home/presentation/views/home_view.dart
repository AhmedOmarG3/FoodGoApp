import 'package:flutter/material.dart';
import 'package:food_go/features/home/presentation/widgets/custom_bottom_app_bar.dart';
import 'package:food_go/features/home/presentation/widgets/custom_floating_action_button.dart';
import 'package:food_go/features/home/presentation/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActionButton(),
      bottomNavigationBar: CustomBottomAppBar(),
      body: HomeViewBody(),
    );
  }
}
