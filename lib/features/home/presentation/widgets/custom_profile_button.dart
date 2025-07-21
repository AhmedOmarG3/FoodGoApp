import 'package:flutter/material.dart';

class CustomProfileButton extends StatelessWidget {
  const CustomProfileButton(
      {super.key,
      required this.color,
      required this.borderColor,
      required this.textColor,
      required this.text,
      required this.icon});
  final Color color;
  final Color borderColor;
  final Color textColor;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 21),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor, width: 3),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Row(children: [
        Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Icon(
          icon,
          color: textColor,
        ),
      ]),
    );
  }
}
