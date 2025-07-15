import 'package:flutter/material.dart';
import 'package:food_go/core/utils/app_images.dart';
import 'package:food_go/features/home/data/models/product_model.dart';
import 'package:food_go/features/home/presentation/widgets/grid_view_item.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  static final List<ProductModel> products = [

    ProductModel(title: 'Cheeseburger', subtitle: "Wendy's Burger", image: AppImages.imagesSand1),
    ProductModel(title: 'Cheeseburger', subtitle: "Wendy's Burger", image: AppImages.imagesSand1),
    ProductModel(title: 'Cheeseburger', subtitle: "Wendy's Burger", image: AppImages.imagesSand1),
    ProductModel(title: 'Cheeseburger', subtitle: "Wendy's Burger", image: AppImages.imagesSand1),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4,
          mainAxisSpacing: 5,
          childAspectRatio: 4 / 5),
      itemBuilder: (context, index) =>  GridViewItem(productModel: products[index],),
    );
  }
}
