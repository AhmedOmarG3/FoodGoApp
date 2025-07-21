import 'package:flutter/material.dart';

class CustomProfileTextField extends StatelessWidget {
  const CustomProfileTextField({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        decoration: InputDecoration(
            labelText: text,
            labelStyle: const TextStyle(color: Color(0xff808080)),
            fillColor: Colors.white,
            filled: true,
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder()),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: Color.fromARGB(255, 174, 170, 170)),
    );
  }
}
