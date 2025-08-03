import 'package:flutter/material.dart';

class AuthValidators {
  // Email validator
  static String? Function(String?) emailValidator() {
    return (String? value) {
      if (value == null || value.isEmpty) {
        return 'Email is required';
      }
      final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
      if (!emailRegex.hasMatch(value)) {
        return 'Enter a valid email';
      }
      return null;
    };
  }

  // Password validator
  static String? Function(String?) passwordValidator() {
    return (String? value) {
      if (value == null || value.isEmpty) {
        return 'Password is required';
      }
      if (value.length < 6) {
        return 'Password must be at least 6 characters';
      }
      return null;
    };
  }

  // Confirm password validator (needs original password)
 static String? Function(String?) confirmPasswordValidator(TextEditingController passwordController) {
  return (value) {
    if (value == null || value.isEmpty) {
      return 'Confirm your password';
    }
    if (value != passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
  };
}

  // Name validator
  static String? Function(String?) nameValidator() {
    return (String? value) {
      if (value == null || value.trim().isEmpty) {
        return 'Name is required';
      }
      return null;
    };
  }
}
