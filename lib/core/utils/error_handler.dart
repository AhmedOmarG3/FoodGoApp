import 'package:firebase_auth/firebase_auth.dart';

class AuthErrorHandler {
  static String handleFirebaseAuthError(FirebaseAuthException e) {
    switch (e.code) {
      // Sign Up errors
      case 'email-already-in-use':
        return 'This email address is already in use.';
      case 'invalid-email':
        return 'The email address is not valid.';
      case 'operation-not-allowed':
        return 'Email/password accounts are not enabled.';
      case 'weak-password':
        return 'The password is too weak. Please choose a stronger one.';

      // Login errors
      case 'user-disabled':
        return 'This user account has been disabled. Please contact support.';
      case 'user-not-found':
        return 'No user found with this email.';
      case 'wrong-password':
        return 'Incorrect password. Please try again.';
      case 'invalid-credential':
        return 'The email or password is incorrect. Please try again.';

      // Common errors
      case 'too-many-requests':
        return 'Too many requests. Please try again later.';
      case 'network-request-failed':
        return 'Network error. Please check your internet connection.';

      default:
        return 'An unexpected error occurred: ${e.message ?? 'Please try again.'}';
    }
  }
}
