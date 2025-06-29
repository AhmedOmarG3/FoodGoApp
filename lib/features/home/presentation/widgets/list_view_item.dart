import 'package:flutter/material.dart';
import 'package:food_go/core/constants/constants.dart';
import 'package:food_go/core/utils/colors.dart';

class ListViewItem extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const ListViewItem({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        width: width(context) * 0.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isSelected ? kprimaryColor : const Color(0xffF3F4F6),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: isSelected
                    ? const Color(0xffF5F5F5)
                    : const Color(0xff6A6A6A)),
          ),
        ),
      ),
    );
  }
}
