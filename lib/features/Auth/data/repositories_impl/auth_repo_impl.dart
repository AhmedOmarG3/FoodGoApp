import 'package:firebase_auth/firebase_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:food_go/core/utils/error_handler.dart';
import 'package:food_go/features/Auth/data/repos/auth_repo.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepositoryImpl implements AuthRepository{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;





 final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Future<User?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

      if (googleUser == null) return null; 

      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential = await _auth.signInWithCredential(credential);

      return userCredential.user;
    } catch (e) {
      throw Exception('Failed to sign in with Google: $e');
    }
  }
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

  @override
Future<Either<String, Unit>> resetPassword(String email) async {
  try {
    await _firebaseAuth.sendPasswordResetEmail(email: email);
    return const Right(unit);
  } on FirebaseAuthException catch (e) {
    return Left(AuthErrorHandler.handleFirebaseAuthError(e));
  } catch (_) {
    return const Left('An unexpected error occurred while resetting password.');
  }
}
}
