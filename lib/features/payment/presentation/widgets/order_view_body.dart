import 'package:flutter/material.dart';
import 'package:food_go/core/utils/colors.dart';
import 'package:food_go/core/utils/styles.dart';
import 'package:food_go/features/home/presentation/widgets/details_view_app_bar.dart';
import 'package:food_go/features/payment/presentation/widgets/paying_row.dart';
import 'package:food_go/features/payment/presentation/widgets/payment_column.dart';
import 'package:food_go/features/payment/presentation/widgets/price_details_section.dart';


class PaymentViewBody extends StatelessWidget {
  const PaymentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DetailsViewAppBar(),
            const SizedBox(height: 20),
            Text('Order Summary',
                style: Styles.textStyle20
                    .copyWith(color: kTextColor, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            const PriceDetailsSection(),
            const SizedBox(height: 50),
            PaymentColumn(),
            const Spacer(),
            PayingRow()
          ],
        ),
      ),
    );
  }
}
