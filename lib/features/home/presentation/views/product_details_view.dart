import 'package:flutter/material.dart';
import 'package:food_go/features/home/presentation/widgets/product_details_view_body.dart';


class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});
  static const String routeName = '/product-details';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProductDetailsViewBody(),
    );
  }
}
