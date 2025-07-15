import 'package:flutter/material.dart';
import 'package:food_go/features/home/presentation/views/home_view.dart';
import 'package:food_go/features/splash/presentation/widgets/splash_view_body.dart';
import 'package:go_router/go_router.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});
static const String routeName = '/';




  @override
  State<SplashView> createState() => _SplashViewState();
}


class _SplashViewState extends State<SplashView> {



  @override
void initState() {
  super.initState();
  Future.delayed(const Duration(seconds: 3), () {
   GoRouter.of(context).push( HomeView.routeName);
  });
}
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SplashViewBody());
        

  }
}
