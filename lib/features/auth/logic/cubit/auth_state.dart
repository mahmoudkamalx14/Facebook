import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState<T> with _$AuthState {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.loading() = Loading;

  const factory AuthState.error(String message) = Error;

  const factory AuthState.successLogin(T data) = SuccessLogin<T>;

  const factory AuthState.successSignOut(T data) = SuccessSignOut<T>;

  const factory AuthState.successRegister(T data) = SuccessRegister<T>;

  const factory AuthState.successResetPassword(T data) =
      SuccessResetPassword<T>;
}
