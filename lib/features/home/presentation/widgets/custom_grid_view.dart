import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/core/utils/app_images.dart';
import 'package:food_go/features/home/data/models/product_model.dart';
import 'package:food_go/features/home/presentation/controllers/all_meals_cubit/meals_cubit.dart';
import 'package:food_go/features/home/presentation/widgets/grid_view_item.dart';

class CustomGridView extends StatefulWidget {
  const CustomGridView({super.key});

  @override
  State<CustomGridView> createState() => _CustomGridViewState();
}

class _CustomGridViewState extends State<CustomGridView> {
  @override
void initState() {
  super.initState();
  
  Future.microtask(() =>
    BlocProvider.of<MealsCubit>(context).getMeals()
  );
}
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MealsCubit, MealsState>(builder: (context, state) {
      if (state is MealsSuccess) {
        List<ProductModel> products = state.meals;
        return SliverGrid.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4,
              mainAxisSpacing: 5,
              childAspectRatio: 4 / 5),
          itemBuilder: (context, index) => GridViewItem(
            productModel: products[index],
          ),
        );
      }else if (state is MealsFailure) {
        return  SliverFillRemaining(
            child: Center(child: Text(state.message)));
        
      } else {
        return const SliverFillRemaining(
            child: Center(child: CircularProgressIndicator()));
        
      }
    });
  }
}
