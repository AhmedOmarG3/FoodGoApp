import 'package:food_go/features/home/presentation/views/home_view.dart';
import 'package:food_go/features/payment/presentation/views/order_view.dart';
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
        path: OrdserView.routeName,
        builder: (context, state) => const OrdserView(),
      ),
      // Add more routes here
    ],
  );
}