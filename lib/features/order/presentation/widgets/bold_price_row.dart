import 'package:flutter/material.dart';
import 'package:food_go/core/utils/styles.dart';

class BoldPriceRow extends StatelessWidget {
  const BoldPriceRow(
      {super.key,
      required this.title,
      required this.value,
      required this.textColor,
      required this.fontSize});
  final String title;
  final String value;
  final Color textColor;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: Styles.textStyle20.copyWith(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: fontSize)),
        Text(
          value,
          style: Styles.textStyle20.copyWith(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: fontSize),
        )
      ],
    );
  }
}
