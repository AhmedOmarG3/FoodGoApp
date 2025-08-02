import 'package:flutter/material.dart';

class CustomProfileAppBar extends StatelessWidget {
  const CustomProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
        const  BackButton(
            color: Colors.white,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings, color: Colors.white)),
        ],
      ),
    );
  }
}
