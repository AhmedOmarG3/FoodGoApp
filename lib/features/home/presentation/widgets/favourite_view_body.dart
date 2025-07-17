import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/core/utils/colors.dart';
import 'package:food_go/core/utils/styles.dart';
import 'package:food_go/features/home/presentation/controllers/favourite_cubit/favourite_cubit.dart';
import 'package:food_go/features/home/presentation/widgets/faourite_item.dart';
import 'package:food_go/features/home/presentation/widgets/grid_view_item.dart';
class FavouriteViewBody extends StatelessWidget {
  const FavouriteViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
   var products= context.read<FavouriteCubit>().favouriteList;
    return CustomScrollView(
      
      slivers: [
          if(products.isEmpty) SliverFillRemaining(
            child: Center(
              child: Text(
                "No favourites yet",
                style: Styles.textStyle20.copyWith(color: kTextColor),
              ),
            ),
          ),
        SliverGrid.builder(
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4,
          mainAxisSpacing: 5,
          childAspectRatio: 4 / 5),
      itemBuilder: (context, index) =>  FaouriteItem(productModel: products[index],),
    )
    ]);
  }
}