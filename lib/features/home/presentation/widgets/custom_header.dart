import 'package:flutter/material.dart';
import 'package:food_go/core/constants/constants.dart';
import 'package:food_go/core/utils/app_images.dart';
import 'package:food_go/core/utils/colors.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(context),
      width: width(context),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [Color(0xffFF939B), Color(0xffEF2A39)],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AppImages.imagesImage16,
            color: kprimaryColor.withOpacity(0.5),
            colorBlendMode: BlendMode.modulate,
          ),
          Image.asset(
            AppImages.imagesImage15,
            color: kprimaryColor.withOpacity(0.5),
            colorBlendMode: BlendMode.modulate,
          ),
        ],
      ),
    );
  }
}
