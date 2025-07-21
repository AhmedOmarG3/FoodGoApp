import 'package:flutter/material.dart';
import 'package:food_go/core/utils/app_images.dart';
import 'package:food_go/core/utils/colors.dart';
import 'package:food_go/features/home/presentation/views/favourite_view.dart';
import 'package:food_go/features/home/presentation/views/user_profile_view.dart';
import 'package:go_router/go_router.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 14,
      color: kprimaryColor,
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                icon: Image.asset(AppImages.imagesHome), onPressed: () {}),
            IconButton(
                icon: Image.asset(AppImages.imagesUser), onPressed: () {
                  GoRouter.of(context).push(UserProfileView.routeName);
                }),
            const SizedBox(width: 40),
            IconButton(
                icon: Image.asset(AppImages.imagesComment), onPressed: () {}),
            IconButton(
                icon:const Icon(Icons.favorite_border_outlined, color: Colors.white),
                onPressed: () {
                  GoRouter.of(context).push(FavouriteView.routeName);
                }),
          ],
        ),
      ),
    );
  }
}
