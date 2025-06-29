import 'package:flutter/material.dart';
import 'package:food_go/core/utils/styles.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({
    super.key,
    required this.textColor,
  });
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: Color(0xffFF9633),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          '4.3',
          style: Styles.textStyle20.copyWith(fontSize: 15, color: textColor),
        ),
      ],
    );
  }
}
