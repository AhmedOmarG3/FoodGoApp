import 'package:flutter/material.dart';
import 'package:food_go/features/order/presentation/widgets/order_view_body.dart';

class OrdserView extends StatelessWidget {
  const OrdserView({super.key});
  static String routeName = '/order';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: OrderViewBody(),
    );
  }
}
