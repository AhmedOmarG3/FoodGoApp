import 'package:flutter/material.dart';
import 'package:food_go/core/utils/colors.dart';
import 'package:food_go/features/order/presentation/widgets/bold_price_row.dart';
import 'package:food_go/features/order/presentation/widgets/price_row.dart';

class PriceDetailsSection extends StatelessWidget {
  const PriceDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const PriceRow(
            textColor: kGreyColor,
            price: 16.48,
            title: 'Order',
          ),
          const PriceRow(
            textColor: kGreyColor,
            price: 0.32,
            title: 'Taxes',
          ),
          const PriceRow(
            textColor: kGreyColor,
            price: 1.56,
            title: 'Delivery fee',
          ),
          Divider(
            color: kGreyColor.withOpacity(0.3),
          ),
          const BoldPriceRow(
            fontSize: 20,
            value: '\$18.19',
            textColor: kTextColor,
            title: 'Total:',
          ),
          const SizedBox(
            height: 15,
          ),
          const BoldPriceRow(
            fontSize: 14,
            title: 'Estimated delivery time:',
            textColor: kTextColor,
            value: '30mins',
          ),
        ],
      ),
    );
  }
}
