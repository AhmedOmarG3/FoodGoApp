part of 'favourite_cubit.dart';

@immutable
sealed class FavouriteState {}

final class FavouriteInitial extends FavouriteState {}
final class FavouriteAddedState extends FavouriteState {

final  List<ProductModel> favouriteList ;

  FavouriteAddedState({required this.favouriteList});
}