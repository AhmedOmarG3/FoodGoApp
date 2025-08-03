import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/features/Auth/data/repos/auth_repo.dart';
import 'package:food_go/features/Auth/presentation/blocs/auth_cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository authRepository;

  AuthCubit({required this.authRepository}) : super(AuthInitial());

  Future<void> login({required String email,required String password}) async {
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
    (_) => emit(AuthResetPasswordSuccess('Password reset email sent! Check your inbox.')),
  );
}
}
