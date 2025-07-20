import 'package:flutter/material.dart';
import 'package:food_go/core/constants/constants.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.imagePath,
  });
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      child: Image.asset(
        imagePath,
        height: height(context) * 0.2583,
        width: width(context),
        fit: BoxFit.fill,
      ),
    );
  }
}
