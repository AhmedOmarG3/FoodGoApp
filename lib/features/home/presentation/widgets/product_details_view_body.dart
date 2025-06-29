import 'package:flutter/material.dart';
import 'package:food_go/core/constants/constants.dart';
import 'package:food_go/core/utils/colors.dart';
import 'package:food_go/features/home/presentation/widgets/details_colum.dart';
import 'package:food_go/features/home/presentation/widgets/details_view_app_bar.dart';
import 'package:food_go/features/home/presentation/widgets/portion_row.dart';

import 'package:food_go/features/home/presentation/widgets/spicy_column.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const DetailsViewAppBar(),
          Image.asset(
            fit: BoxFit.fill,
            'assets/images/image 1.png',
            height: height(context) * 0.35,
            width: width(context) * 0.7,
          ),
          const SizedBox(
            height: 50,
          ),
          const DetailsColum(),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SpicyColumn(),
              PortionRow(),
            ],
          ),
          Spacer(),
          OrderRow()
        ],
      ),
    );
  }
}

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
            wid: 0.2,
            heig: 0.07,
            txet: '\$8.24',
            color: kprimaryColor,
          ),
          CustomButton(
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

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.wid,
    required this.heig,
    required this.txet,
    required this.color,
  });

  final double wid;
  final double heig;
  final String txet;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: (width(context)) * wid,
      height: height(context) * heig,
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      onPressed: () {},
      child: Text(
        txet,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}
