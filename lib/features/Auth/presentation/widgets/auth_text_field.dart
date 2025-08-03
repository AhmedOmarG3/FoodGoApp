import 'package:flutter/material.dart';
import 'package:food_go/core/utils/colors.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({super.key, required this.hint, this.validator, this.controller});
  final String hint;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: TextFormField(controller: controller,
        validator:validator ,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: kAuthTextColor),
            fillColor: Color(0xffF2E8E8),
            filled: true,
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder()),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    );
  }
}
