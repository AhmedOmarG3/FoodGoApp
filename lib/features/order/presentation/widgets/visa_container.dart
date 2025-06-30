import 'package:flutter/material.dart';
import 'package:food_go/core/constants/constants.dart';
import 'package:food_go/core/utils/colors.dart';

class VisaContainer extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String value;
  final String? groupValue;
  final ValueChanged<String?> onChanged;
  final Color color;
  final Color titleColor;
  const VisaContainer({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.color,
    required this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        elevation: 20,
        child: Container(
          height: height(context) * 0.1,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), color: color),
          child: RadioListTile<String>(
            contentPadding: const EdgeInsets.all(9),
            title: Text(title,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: titleColor)),
            subtitle: Text(subtitle,
                style: const TextStyle(fontSize: 14, color: kGreyColor)),
            secondary: Image.asset(imagePath),
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}
