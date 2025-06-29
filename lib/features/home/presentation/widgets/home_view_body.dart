import 'package:flutter/material.dart';
import 'package:food_go/features/home/presentation/widgets/category_list_view.dart';
import 'package:food_go/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:food_go/features/home/presentation/widgets/custom_grid_view.dart';

import 'package:food_go/features/home/presentation/widgets/search_row.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CustomAppBar()),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
            ),
          ),
          SliverToBoxAdapter(child: SearchRow()),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
            ),
          ),
          SliverToBoxAdapter(child: CategoryListView()),
          SliverToBoxAdapter(child: CustomGridView()),
        ],
      ),
    );
  }
}
