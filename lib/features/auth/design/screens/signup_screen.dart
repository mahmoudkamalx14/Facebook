import 'package:facebook/core/helper/spaces.dart';
import 'package:facebook/core/widgets/custom_app_bar.dart';
import 'package:facebook/features/auth/design/widgets/register_bloc_listener.dart';
import 'package:facebook/features/auth/design/widgets/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return RegisterBlocListener(
        child: Scaffold(
            body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 21.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBar(title: 'Create Account'),
              verticalSpace(20),
              const SignupForm(),
            ],
          ),
        ),
      ),
    )));
  }
}
