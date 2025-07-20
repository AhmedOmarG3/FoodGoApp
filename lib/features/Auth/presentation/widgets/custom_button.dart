import 'package:flutter/material.dart';
import 'package:food_go/core/constants/constants.dart';
import 'package:food_go/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.text});
  final void Function() onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: ElevatedButton(
        style: ButtonStyle(
          fixedSize: WidgetStatePropertyAll(Size(width(context), 50)),
          backgroundColor: WidgetStatePropertyAll(Color(0xffEB4747)),
          shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: Styles.textStyle18,
        ),
      ),
    );
  }
}
