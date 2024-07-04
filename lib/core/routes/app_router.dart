import 'package:facebook/core/routes/routes.dart';
import 'package:facebook/features/auth/design/screens/intro_to_signup_screen.dart';
import 'package:facebook/features/auth/design/screens/login_screen.dart';
import 'package:facebook/features/auth/design/screens/forgot_password.dart';
import 'package:facebook/features/auth/logic/auth_cubit.dart';
import 'package:facebook/features/home/design/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/auth/design/screens/signup_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final String routeName = settings.name!;

    switch (routeName) {
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (buildContext) => AuthCubit(),
            child: const LoginScreen(),
          ),
        );

      case Routes.forgotPassword:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (buildContext) => AuthCubit(),
            child: const ForgotPassword(),
          ),
        );

      case Routes.introToSignupScreen:
        return MaterialPageRoute(
          builder: (_) => const IntroToSignupScreen(),
        );

      case Routes.signupScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (buildContext) => AuthCubit(),
            child: const SignupScreen(),
          ),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
    }
    return null;
  }
}
