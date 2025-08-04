import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:food_go/core/constants/constants.dart';
import 'package:food_go/core/utils/app_images.dart';
import 'package:food_go/core/utils/colors.dart';
import 'package:food_go/core/utils/styles.dart';
import 'package:food_go/features/home/data/models/product_model.dart';
import 'package:food_go/features/home/presentation/views/product_details_view.dart';
import 'package:food_go/features/home/presentation/widgets/favorite_row.dart';
import 'package:go_router/go_router.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(ProductDetailsView.routeName);
      },
      child: Card(
        elevation: 5,
        child: Container(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color(0xffFFFFFF)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CachedNetworkImage(
              errorWidget: (context, url, error) => Icon(Icons.error),
              imageUrl: productModel.image!,
              height: height(context) * 0.12,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(productModel.name!,
                style: Styles.textStyle20.copyWith(
                    fontSize: 14,
                    color: kTextColor,
                    fontWeight: FontWeight.bold)),
            Text(productModel.description!,
                maxLines: 1,
                style: Styles.textStyle20
                    .copyWith(fontSize: 14, color: kTextColor)),
            FavoriteRow(
              productModel: productModel,
            ),
          ]),
        ),
      ),
    );
  }
}
