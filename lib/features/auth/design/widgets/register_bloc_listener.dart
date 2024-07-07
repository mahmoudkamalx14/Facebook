import 'package:facebook/core/functions/show_toast.dart';
import 'package:facebook/core/helper/navigator.dart';
import 'package:facebook/core/routes/routes.dart';
import 'package:facebook/features/auth/logic/cubit/auth_cubit.dart';
import 'package:facebook/features/auth/logic/cubit/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (previous, current) =>
          current is Loading || current is SuccessRegister || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) =>
                  const Center(child: CircularProgressIndicator()),
            );
          },
          successRegister: (data) {
            showToast(
              msg: "Successfully,Check your email to verfiy your account",
              color: Colors.red,
            );
            context.navigateToReplacement(Routes.loginScreen);
          },
          error: (message) {
            showToast(
              msg: message,
              color: Colors.red,
            );
          },
        );
      },
      child: child,
    );
  }
}
