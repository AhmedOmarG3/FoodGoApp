import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomProfileAppBar extends StatelessWidget {
  const CustomProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back, color: Colors.white)),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings, color: Colors.white)),
        ],
      ),
    );
  }
}
