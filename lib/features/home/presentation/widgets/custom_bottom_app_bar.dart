import 'package:flutter/material.dart';
import 'package:food_go/core/utils/colors.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 14,
      color: kprimaryColor,
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                icon: Image.asset('assets/images/home.png'),
                onPressed: () {}),
            IconButton(
                icon: Image.asset('assets/images/user.png'),
                onPressed: () {}),
            const SizedBox(width: 40), // space for FAB
            IconButton(
                icon: Image.asset('assets/images/comment.png'),
                onPressed: () {}),
            IconButton(
                icon: const Icon(Icons.favorite, color: Colors.white),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
