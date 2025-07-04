import 'package:flutter/material.dart';
import 'package:food_go/features/home/presentation/widgets/grid_view_item.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4,
          mainAxisSpacing: 5,
          childAspectRatio: 4 / 5),
      itemBuilder: (context, index) => const GridViewItem(),
    );
  }
}
