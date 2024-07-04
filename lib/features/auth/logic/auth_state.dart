abstract class AuthState {}

final class InitialState extends AuthState {}

final class LoadingState extends AuthState {}

final class SignInSuccessState extends AuthState {}

final class RegisterSuccessState extends AuthState {}

final class SignInErrorState extends AuthState {
  final String errMessage;

  SignInErrorState({required this.errMessage});
}

final class RegisterErrorState extends AuthState {
  final String errMessage;

  RegisterErrorState({required this.errMessage});
}

final class ResetPasswordState extends AuthState {}

final class ObscurePasswordTextUpdateState extends AuthState {}
