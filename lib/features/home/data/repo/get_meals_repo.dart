import 'package:dartz/dartz.dart';
import 'package:food_go/core/errors/failure.dart';
import 'package:food_go/features/home/data/models/product_model.dart';

abstract class GetMealsRepo {
  Future<Either<Failure, List<ProductModel>>> getMeals();
}
