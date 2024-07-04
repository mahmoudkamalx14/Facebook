import 'package:facebook/core/cache/cache_helper.dart';
import 'package:facebook/core/di/dependency_injection.dart';
import 'package:facebook/core/functions/show_toast.dart';
import 'package:facebook/core/helper/navigator.dart';
import 'package:facebook/core/routes/routes.dart';
import 'package:facebook/features/auth/logic/auth_cubit.dart';
import 'package:facebook/features/auth/logic/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (previous, current) =>
          current is LoadingState ||
          current is SignInSuccessState ||
          current is SignInErrorState,
      listener: (context, state) {
        if (state is LoadingState) {
          showDialog(
            context: context,
            builder: (context) =>
                const Center(child: CircularProgressIndicator()),
          );
        }
        if (state is SignInSuccessState) {
          FirebaseAuth.instance.currentUser!.emailVerified
              ? navigateToHomeAndInistialScreen(context)
              : showToast(msg: "Please Verify Your Account", color: Colors.red);
        } else if (state is SignInErrorState) {
          showToast(msg: state.errMessage, color: Colors.red);
        }
      },
      child: child,
    );
  }

  void navigateToHomeAndInistialScreen(BuildContext context) {
    context.navigateToReplacement(Routes.homeScreen);

    getIt<CacheHelper>().saveData(key: Routes.loginScreen, value: true);
  }
}
