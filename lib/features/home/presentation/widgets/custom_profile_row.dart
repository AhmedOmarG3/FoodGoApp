import 'package:flutter/material.dart';
import 'package:food_go/core/utils/styles.dart';

class CustomProfileRow extends StatelessWidget {
  const CustomProfileRow({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Styles.textStyle20,
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Color(0xff808080),
          )
        ],
      ),
    );
  }
}
