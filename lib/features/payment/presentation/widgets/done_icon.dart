import 'package:flutter/material.dart';
import 'package:food_go/core/utils/colors.dart';

class DoneIcon extends StatelessWidget {
  const DoneIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 100,
        decoration:
            const BoxDecoration(color: kprimaryColor, shape: BoxShape.circle),
        child: Icon(
          Icons.done_rounded,
          color: Colors.white,
          size: 80,
        ));
  }
}
