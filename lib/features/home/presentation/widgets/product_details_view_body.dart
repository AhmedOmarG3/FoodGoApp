import 'package:flutter/material.dart';
import 'package:food_go/core/constants/constants.dart';
import 'package:food_go/core/utils/app_images.dart';
import 'package:food_go/features/home/presentation/widgets/details_colum.dart';
import 'package:food_go/features/home/presentation/widgets/details_view_app_bar.dart';
import 'package:food_go/features/home/presentation/widgets/order_row.dart';
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
            AppImages.imagesSand1,
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
              SpicyColumn(
                width: 0.4,
              ),
              PortionRow(
                horizontalPadding: 10,
              ),
            ],
          ),
          Spacer(),
          OrderRow()
        ],
      ),
    );
  }
}
