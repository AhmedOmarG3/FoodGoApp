import 'package:firebase_auth/firebase_auth.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<String, UserCredential>> signUp(String email, String password);
  Future<Either<String, UserCredential>> login(String email, String password);
  Future<Either<String, Unit>> resetPassword(String email);
  Future<User?> signInWithGoogle();
}
