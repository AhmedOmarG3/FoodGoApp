import 'package:flutter/material.dart';

class CustomPasswordTextField extends StatefulWidget {
  const CustomPasswordTextField({super.key});

  @override
  State<CustomPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        obscureText: _obscureText,
        decoration: InputDecoration(
          label: Row(
            children: [
              const Text(
                'Password',
                style: TextStyle(color: Color(0xff808080)),
              ),
              Icon(
                Icons.lock,
                color: Color(0xff808080),
                size: 20,
              ),
            ],
          ),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
          suffixIcon: IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility_off : Icons.visibility,
              color: Colors.grey,
            ),
            onPressed: _toggleVisibility,
          ),
        ),
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