part of 'meals_cubit.dart';

@immutable
sealed class MealsState {}

final class MealsInitial extends MealsState {}
final class MealsSuccess extends MealsState {
  final List<ProductModel> meals;
  MealsSuccess({required this.meals});
}
final class MealsLoading extends MealsState {}
final class MealsFailure extends MealsState {
  final String message;
  MealsFailure({required this.message});
}
