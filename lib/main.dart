import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/core/utils/app_router.dart';
import 'package:food_go/features/Auth/data/repositories_impl/auth_repo_impl.dart';
import 'package:food_go/features/Auth/presentation/blocs/auth_cubit/auth_cubit.dart';
import 'package:food_go/features/home/presentation/controllers/favourite_cubit/favourite_cubit.dart';
import 'package:food_go/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const FoodGo());
}

class FoodGo extends StatelessWidget {
  const FoodGo({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FavouriteCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(authRepository: AuthRepositoryImpl()),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
