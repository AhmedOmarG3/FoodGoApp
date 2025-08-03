import 'package:firebase_auth/firebase_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:food_go/core/utils/error_handler.dart';
import 'package:food_go/features/Auth/data/repos/auth_repo.dart';

class AuthRepositoryImpl implements AuthRepository{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<Either<String, UserCredential>> signUp(String email, String password) async {
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(userCredential);
    }  on FirebaseAuthException catch (e) {
    return Left(AuthErrorHandler.handleFirebaseAuthError(e));
  } catch (_) {
    return const Left('An unexpected error occurred during sign up.');
  }
  }

  @override
  Future<Either<String, UserCredential>> login(String email, String password) async {
    try {
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(userCredential);
    } on FirebaseAuthException catch (e) {
    return Left(AuthErrorHandler.handleFirebaseAuthError(e));
  } catch (_) {
    return const Left('An unexpected error occurred during login.');
  }
  }
}
