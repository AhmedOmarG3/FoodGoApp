import 'package:flutter/material.dart';
import 'package:food_go/core/utils/app_images.dart';
import 'package:food_go/core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Foodgo',
                style: Styles.textStyle50
                    .copyWith(fontSize: 30, color: const Color(0xff3C2F2F))),
            Text('Order your favourite food!',
                style: Styles.textStyle20
                    .copyWith(color: const Color(0xff6A6A6A))),
          ],
        ),
        const Spacer(),
        Image.asset(AppImages.imagesProfile)
      ],
    );
  }
}
