import 'package:flutter/material.dart';
import 'package:food_go/core/utils/colors.dart';
import 'package:food_go/core/utils/styles.dart';
import 'package:food_go/features/home/presentation/widgets/favourite_view_body.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});
  static String routeName = "/favourite";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Favourites",
          style: Styles.textStyle20
              .copyWith(color: kTextColor, fontFamily: 'Lobster', fontSize: 30),
        ),
      ),
      body:const FavouriteViewBody(),
    );
  }
}
