import 'package:flutter/material.dart';
import 'package:food_go/core/utils/colors.dart';
import 'package:food_go/features/payment/presentation/views/order_view.dart';
import 'package:food_go/features/home/presentation/widgets/custom_button.dart';
import 'package:go_router/go_router.dart';

class OrderRow extends StatelessWidget {
  const OrderRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomButton(
            onPressed: () {},
            wid: 0.2,
            heig: 0.07,
            txet: '\$8.24',
            color: kprimaryColor,
          ),
          CustomButton(
            onPressed: () {
              GoRouter.of(context).push(OrdserView.routeName);
            },
            wid: 0.4,
            heig: 0.07,
            txet: 'Order Now',
            color: kTextColor,
          ),
        ],
      ),
    );
  }
}
