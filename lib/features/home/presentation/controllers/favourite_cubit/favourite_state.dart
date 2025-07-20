part of 'favourite_cubit.dart';

@immutable
sealed class FavouriteState {}
final class EmptyFavouriteState extends FavouriteState {}
final class HasFavouriteState extends FavouriteState {

final  List<ProductModel> favouriteList ;

  HasFavouriteState({required this.favouriteList});

}

