import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:food_go/core/errors/failure.dart';
import 'package:food_go/core/utils/api_service.dart';
import 'package:food_go/features/home/data/models/product_model.dart';
import 'package:food_go/features/home/data/repo/get_meals_repo.dart';

class GetMealsRepoImpl implements GetMealsRepo {
  final ApiService apiService;

  GetMealsRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<ProductModel>>> getMeals() async {
    try {
      final data = await apiService.get(endpoint: 'meals');
      final meals =
          (data as List).map((item) => ProductModel.fromMap(item)).toList();
      return right(meals);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(message: e.toString()));
      }
    }
  }
}
