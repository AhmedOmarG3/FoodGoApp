import 'package:flutter/material.dart';
import 'package:food_go/core/constants/constants.dart';
import 'package:food_go/core/utils/styles.dart';
import 'package:food_go/features/splash/presentation/widgets/images_row.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xffFF939B), Color(0xffEF2A39)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: SizedBox(
        width: width(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Foodgo', style: Styles.textStyle50),
            SizedBox(
              height: height(context) * 0.2,
            ),
            const ImagesRow(),
          ],
        ),
      ),
    );
  }
}
