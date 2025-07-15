import 'package:food_go/features/home/presentation/views/favourite_view.dart';
import 'package:food_go/features/home/presentation/views/home_view.dart';
import 'package:food_go/features/payment/presentation/views/payment_view.dart';
import 'package:food_go/features/home/presentation/views/product_details_view.dart';
import 'package:food_go/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: SplashView.routeName,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: HomeView.routeName,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: ProductDetailsView.routeName,
        builder: (context, state) => const ProductDetailsView(),
      ),GoRoute(
        path: PaymentView.routeName,
        builder: (context, state) => const PaymentView(),
      ),GoRoute(
        path: FavouriteView.routeName,
        builder: (context, state) => const FavouriteView(),
      ),
      // Add more routes here
    ],
  );
}