import 'package:flutter/material.dart';
import 'package:food_go/core/utils/colors.dart';
import 'package:food_go/features/home/presentation/widgets/rating_row.dart';

class FavoriteRow extends StatelessWidget {
  const FavoriteRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       const RatingRow(textColor: kTextColor,),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border_outlined,color: kTextColor,))
      ],
    );
  }
}
