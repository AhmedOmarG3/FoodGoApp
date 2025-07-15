import 'package:flutter/material.dart';
import 'package:food_go/core/utils/colors.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      
      shape: const CircleBorder(),
      onPressed: () {},
      backgroundColor: kprimaryColor,
      child: const Icon(
        Icons.add,
        color: Colors.white,
        size: 25,
      ),
    );
  }
}
