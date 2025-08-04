import 'package:dio/dio.dart';
import 'package:food_go/core/utils/api_service.dart';
import 'package:food_go/features/home/data/repo_impl/get_meals_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<GetMealsRepoImpl>(
    GetMealsRepoImpl(apiService: 
      getIt.get<ApiService>(),
    ),
  );
}
