import 'package:flutter/material.dart';
import 'package:food_go/core/constants/constants.dart';

class ImagesRow extends StatelessWidget {
  const ImagesRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          clipBehavior: Clip.none,
          children: [
            Image.asset(
              height: height(context) * 0.3,
              'assets/images/image 2.png',
              fit: BoxFit.fill,
            ),
            Positioned(
              left: 100,
              child: Image.asset(
                height: height(context) * 0.2,
                'assets/images/image 1.png',
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
