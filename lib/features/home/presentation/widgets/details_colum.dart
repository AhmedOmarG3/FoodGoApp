import 'package:flutter/material.dart';
import 'package:food_go/core/utils/colors.dart';
import 'package:food_go/core/utils/styles.dart';
import 'package:food_go/features/home/presentation/widgets/rating_row.dart';

class DetailsColum extends StatelessWidget {
  const DetailsColum({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Cheeseburger Wendy's Burger",
            style: Styles.textStyle20
                .copyWith(color: kTextColor, fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 5,
        ),
        const Row(children: [
          RatingRow(
            textColor: kGreyColor,
          ),
          Text(
            '  - 30 mins',
            style: TextStyle(fontSize: 15, color: kGreyColor),
          )
        ]),
        const SizedBox(height: 15),
        const Text(
          textAlign: TextAlign.justify,
          """ The Cheeseburger Wendy's Burger is a classic fast food burger that packs a punch of flavor in every bite. Made with a juicy beef patty cooked to perfection, it's topped with melted American cheese, crispy lettuce, ripe tomato, and crunchy pickles.""",
          style: TextStyle(color: kGreyColor, fontSize: 16),
        )
      ],
    );
  }
}
