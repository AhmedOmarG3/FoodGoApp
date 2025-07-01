import 'package:flutter/material.dart';
import 'package:food_go/core/utils/styles.dart';

class PriceRow extends StatelessWidget {
  const PriceRow(
      {super.key,
      required this.title,
      required this.price,
      required this.textColor});
  final String title;
  final double price;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Styles.textStyle20.copyWith(color: textColor)),
        Text(
          '\$$price',
          style: Styles.textStyle20.copyWith(color: textColor),
        )
      ],
    );
  }
}
