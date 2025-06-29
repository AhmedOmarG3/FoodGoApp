import 'package:flutter/material.dart';
import 'package:food_go/core/utils/colors.dart';

class PortionIconButton extends StatelessWidget {
  const PortionIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        alignment: Alignment.topCenter,
        style: const ButtonStyle(
            iconSize: WidgetStatePropertyAll(17),
            backgroundColor: WidgetStatePropertyAll(kprimaryColor),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))))),
        onPressed: onPressed,
        icon: Icon(icon, color: Colors.white));
  }
}
