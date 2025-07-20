import 'package:flutter/material.dart';
import 'package:food_go/core/constants/constants.dart';
import 'package:food_go/core/utils/styles.dart';

class GoogleSigningButton extends StatelessWidget {
  const GoogleSigningButton(
      {super.key, required this.onPressed, required this.text});
  final void Function() onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: ElevatedButton(
        style: ButtonStyle(
          fixedSize: WidgetStatePropertyAll(Size(width(context), 50)),
          backgroundColor: const WidgetStatePropertyAll(Color(0xffF2E8E8)),
          shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              size: 35,
              Icons.g_mobiledata_outlined,
              color: Color(0xff1C0D0D),
            ),
            Text(
              text,
              style: Styles.textStyle18.copyWith(
                color: const Color(0xff1C0D0D),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
