import 'package:flutter/material.dart';
import 'package:food_go/core/constants/constants.dart';
import 'package:food_go/core/utils/colors.dart';
import 'package:food_go/features/home/presentation/widgets/custom_text_field.dart';

class SearchRow extends StatelessWidget {
  const SearchRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      SizedBox(
        width: width(context) * 0.74,
        child: const Card(elevation: 20, child: CustomTextField()),
      ),
      IconButton(
          color: Colors.white,
          style: const ButtonStyle(
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)))),
              backgroundColor: WidgetStatePropertyAll(kprimaryColor)),
          onPressed: () {},
          icon: const Icon(Icons.tune))
    ]);
  }
}
