import 'package:flutter/material.dart';
import 'package:food_go/core/utils/colors.dart';
import 'package:food_go/features/home/presentation/widgets/rating_row.dart';

class FavoriteItemLastRow extends StatelessWidget {
  const FavoriteItemLastRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const RatingRow(
          textColor: kTextColor,
        ),
        
           IconButton(
              onPressed: () {
               
                
                

            }
              ,
              icon: Icon(
                Icons.favorite ,
                color:  Colors.red ,
              )),
        
      ],
    );
  }
}