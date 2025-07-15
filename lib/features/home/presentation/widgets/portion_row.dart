import 'package:flutter/material.dart';
import 'package:food_go/core/utils/colors.dart';
import 'package:food_go/core/utils/styles.dart';
import 'package:food_go/features/home/presentation/widgets/portion_icon_button.dart';

class PortionRow extends StatefulWidget {
  const PortionRow({super.key, required this.horizontalPadding});
final double horizontalPadding ;
  @override
  State<PortionRow> createState() => _PortionRowState();
}

int numberOfPortion = 1;

class _PortionRowState extends State<PortionRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PortionIconButton(
          onPressed: () {
            setState(() {
              if (numberOfPortion > 1) numberOfPortion--;
            });
          },
          icon: Icons.minimize,
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: widget.horizontalPadding),
          child: Text(
            numberOfPortion.toString(),
            style: Styles.textStyle20
                .copyWith(color: kTextColor, fontWeight: FontWeight.bold),
          ),
        ),
        PortionIconButton(
          onPressed: () {
            setState(() {
              if (numberOfPortion < 10) {
                numberOfPortion++;
              }
            });
          },
          icon: Icons.add,
        )
      ],
    );
  }
}