import 'package:bloc/bloc.dart';
import 'package:food_go/core/utils/api_service.dart';
import 'package:food_go/features/home/data/models/product_model.dart';
import 'package:food_go/features/home/data/repo_impl/get_meals_repo_impl.dart';
import 'package:meta/meta.dart';

part 'meals_state.dart';

class MealsCubit extends Cubit<MealsState> {
  MealsCubit({ required
    this.getMealsRepoImpl}) : super(MealsInitial());

  final GetMealsRepoImpl getMealsRepoImpl;
  Future<void> getMeals() async {
    emit(MealsLoading());

    final result = await getMealsRepoImpl.getMeals();
    result.fold(
      (failure) => emit(MealsFailure(message: failure.message)),
      (meals) => emit(MealsSuccess(meals: meals)),
    );
  }
}
