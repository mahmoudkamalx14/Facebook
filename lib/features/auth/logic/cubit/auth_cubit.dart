import 'package:facebook/features/auth/data/models/user_model.dart';
import 'package:facebook/features/auth/data/repository/auth_repository.dart';
import 'package:facebook/features/auth/logic/cubit/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository _authRepository;
  AuthCubit(this._authRepository) : super(const AuthState.initial());

  static AuthCubit get(context) => BlocProvider.of(context);

  void emitLoginStates(String email, String password) async {
    emit(const AuthState.loading());

    try {
      final response =
          await _authRepository.signInWithEmailAndPassword(email, password);

      response.when(
        success: (data) {
          emit(AuthState.successLogin(response));
        },
        failure: (errorHandler) {
          emit(AuthState.error(errorHandler));
        },
      );
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  void emitRegisterStates(UserModel model) async {
    emit(const AuthState.loading());

    try {
      final response =
          await _authRepository.registerWithEmailAndPassword(model);

      response.when(
        success: (data) {
          emit(AuthState.successRegister(response));
        },
        failure: (errorHandler) {
          emit(AuthState.error(errorHandler));
        },
      );
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  void emitResetPasswordStates(String email) async {
    try {
      final response = await _authRepository.resetPassword(email);

      response.when(
        success: (data) {
          emit(AuthState.successResetPassword(response));
        },
        failure: (errorHandler) {
          emit(AuthState.error(errorHandler));
        },
      );
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  void emitSignOutStates() async {
    try {
      final response = await _authRepository.signOut();
      response.when(
        success: (data) {
          emit(AuthState.successSignOut(response));
        },
        failure: (errorHandler) {
          emit(AuthState.error(errorHandler));
        },
      );
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }
}
