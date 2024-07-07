import 'package:facebook/core/cache/cache_helper.dart';
import 'package:facebook/core/di/dependency_injection.dart';
import 'package:facebook/core/functions/show_toast.dart';
import 'package:facebook/core/helper/navigator.dart';
import 'package:facebook/core/routes/routes.dart';
import 'package:facebook/features/auth/logic/cubit/auth_cubit.dart';
import 'package:facebook/features/auth/logic/cubit/auth_state.dart';
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
          current is Loading || current is SuccessLogin || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) =>
                  const Center(child: CircularProgressIndicator()),
            );
          },
          successLogin: (data) {
            FirebaseAuth.instance.currentUser!.emailVerified
                ? navigateToTabBarLayout(context)
                : showToast(
                    msg: "Please Verify Your Account", color: Colors.red);
          },
          error: (message) {
            showToast(msg: message, color: Colors.red);
          },
        );
      },
      child: child,
    );
  }

  void navigateToTabBarLayout(BuildContext context) {
    context.navigateToReplacement(Routes.tabBarLayout);

    getIt<CacheHelper>().saveData(key: Routes.loginScreen, value: true);
  }
}
