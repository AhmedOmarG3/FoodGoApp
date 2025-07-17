import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/core/utils/colors.dart';
import 'package:food_go/features/home/data/models/product_model.dart';
import 'package:food_go/features/home/presentation/controllers/favourite_cubit/favourite_cubit.dart';
import 'package:food_go/features/home/presentation/widgets/rating_row.dart';

class FavoriteRow extends StatefulWidget {
  const FavoriteRow({
    super.key, required this.productModel,
  });
final ProductModel productModel;
  @override
  State<FavoriteRow> createState() => _FavoriteRowState();
}

class _FavoriteRowState extends State<FavoriteRow> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const RatingRow(
          textColor: kTextColor,
        ),
        BlocListener<FavouriteCubit, FavouriteState>(
          listener: (context, state) {
            
          },
          child: IconButton(
              onPressed: () {
                if(!isFavorite){
                  context.read<FavouriteCubit>().addToFavourite(widget.productModel);
            
              setState(() {
                isFavorite = true;
              });
                }else{
                  context.read<FavouriteCubit>().removeFromFavourite(widget.productModel);
                  setState(() {
                isFavorite = false;
              });
                }
                

            }
              ,
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
                color: isFavorite ? Colors.red : kTextColor,
              )),
        )
      ],
    );
  }
}
