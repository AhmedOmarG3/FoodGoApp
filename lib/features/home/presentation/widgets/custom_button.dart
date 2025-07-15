import 'package:flutter/material.dart';
import 'package:food_go/core/constants/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.wid,
    required this.heig,
    required this.txet,
    required this.color,
    required this.onPressed,
  });
  final void Function()? onPressed;
  final double wid;
  final double heig;
  final String txet;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: (width(context)) * wid,
      height: height(context) * heig,
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      onPressed: onPressed,
      child: Text(
        txet,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}
