import 'package:flutter/material.dart';
import 'package:food_go/features/payment/presentation/widgets/order_view_body.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});
  static String routeName = '/order';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: PaymentViewBody(),
    );
  }
}
