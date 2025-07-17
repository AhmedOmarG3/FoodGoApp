import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/core/utils/app_router.dart';
import 'package:food_go/features/home/presentation/controllers/favourite_cubit/favourite_cubit.dart';

void main() {
  runApp(const FoodGo());
}

class FoodGo extends StatelessWidget {
  const FoodGo({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavouriteCubit(),
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
