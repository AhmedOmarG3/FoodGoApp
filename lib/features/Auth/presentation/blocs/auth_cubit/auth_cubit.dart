import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/features/Auth/data/repos/auth_repo.dart';
import 'package:food_go/features/Auth/presentation/blocs/auth_cubit/auth_state.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository authRepository;

  AuthCubit({required this.authRepository}) : super(AuthInitial());

  Future<void> login({required String email, required String password}) async {
    emit(AuthLoading());
    final result = await authRepository.login(email, password);
    result.fold(
      (failure) => emit(AuthFailure(error: failure)),
      (success) => emit(AuthSuccess()),
    );
  }

  Future<void> signUp({required String email, required String password}) async {
    emit(AuthLoading());
    final result = await authRepository.signUp(email, password);
    result.fold(
      (failure) => emit(AuthFailure(error: failure)),
      (success) => emit(AuthSuccess()),
    );
  }

  Future<void> resetPassword(String email) async {
    emit(AuthLoading());

    final result = await authRepository.resetPassword(email);

    result.fold(
      (failureMessage) => emit(AuthFailure(error: failureMessage)),
      (_) => emit(AuthResetPasswordSuccess(
          'Password reset email sent! Check your inbox.')),
    );
  }

  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<void> signInWithGoogle() async {
    try {
      final googleSignIn = GoogleSignIn();
      if (await googleSignIn.isSignedIn()) {
        await googleSignIn.disconnect();
      }

      final googleUser = await googleSignIn.signIn();
      if (googleUser == null) {
        return;
      }

      final googleAuth = await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);

      emit(AuthSuccess());
    } catch (e) {
      emit(AuthFailure(error: e.toString()));
    }
  }
}
