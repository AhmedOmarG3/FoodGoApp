import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/core/utils/colors.dart';
import 'package:food_go/core/utils/styles.dart';
import 'package:food_go/features/home/data/models/product_model.dart';
import 'package:food_go/features/home/presentation/controllers/favourite_cubit/favourite_cubit.dart';
import 'package:food_go/features/home/presentation/widgets/faourite_item.dart';

class FavouriteViewBody extends StatelessWidget {
  const FavouriteViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouriteCubit, FavouriteState>(
      builder: (context, state) {
        if (state is HasFavouriteState) {
          List<ProductModel> products = state.favouriteList;
          return CustomScrollView(slivers: [
            SliverGrid.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 5,
                  childAspectRatio: 4 / 5),
              itemBuilder: (context, index) => FaouriteItem(
                productModel: products[index],
              ),
            )
          ]);
        } else {
          return CustomScrollView(
            slivers:[ SliverFillRemaining(
              child: Center(
                child: Text(
                  "No favourites yet",
                  style: Styles.textStyle20.copyWith(color: kTextColor),
                ),
              ),
            ),]
          );
        }
      },
    );
  }
}
