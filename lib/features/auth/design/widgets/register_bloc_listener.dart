import 'package:facebook/core/functions/show_toast.dart';
import 'package:facebook/core/helper/navigator.dart';
import 'package:facebook/core/routes/routes.dart';
import 'package:facebook/features/auth/logic/auth_cubit.dart';
import 'package:facebook/features/auth/logic/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (previous, current) =>
          current is LoadingState ||
          current is RegisterSuccessState ||
          current is RegisterErrorState,
      listener: (context, state) {
        if (state is LoadingState) {
          showDialog(
            context: context,
            builder: (context) =>
                const Center(child: CircularProgressIndicator()),
          );
        }

        if (state is RegisterSuccessState) {
          showToast(
            msg: "Successfully,Check your email to verfiy your account",
            color: Colors.red,
          );
          context.navigateToReplacement(Routes.loginScreen);
        }
      },
      child: child,
    );
  }
}
