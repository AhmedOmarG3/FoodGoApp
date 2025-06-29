import 'package:flutter/material.dart';
import 'package:food_go/core/utils/app_router.dart';


void main() {
  runApp(const FoodGo());
}

class FoodGo extends StatelessWidget {
  const FoodGo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
     
    );
  }
}
