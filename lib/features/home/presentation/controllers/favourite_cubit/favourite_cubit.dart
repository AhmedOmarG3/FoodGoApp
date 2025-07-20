import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/features/home/data/models/product_model.dart';
part 'favourite_state.dart';

class FavouriteCubit extends Cubit<FavouriteState> {
  FavouriteCubit() : super(EmptyFavouriteState());

 List<ProductModel> favouriteList=[];

 void addToFavourite(ProductModel productModel){
   favouriteList.add(productModel);
   emit(HasFavouriteState(
    favouriteList: favouriteList
   ));
 }


 void removeFromFavourite(ProductModel productModel){
  favouriteList.remove(productModel);
if (favouriteList.isEmpty) {
  emit(EmptyFavouriteState());
} else {
  emit(HasFavouriteState(favouriteList: favouriteList));
}

   
 }



}
