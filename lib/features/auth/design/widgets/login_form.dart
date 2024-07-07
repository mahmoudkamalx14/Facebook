import 'package:facebook/core/helper/spaces.dart';
import 'package:facebook/core/utils/app_constants.dart';
import 'package:facebook/core/widgets/custom_text_button.dart';
import 'package:facebook/core/widgets/custom_text_form_field.dart';
import 'package:facebook/features/auth/design/widgets/login_bloc_listener.dart';
import 'package:facebook/features/auth/logic/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool obscurePasswordTextValue = true;

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> signInKey = GlobalKey();
    return LoginBlocListener(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Form(
          key: signInKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextFormField(
                hintText: 'Email',
                controller: AppConstants.emailController,
                prefixIcon: const Icon(Icons.email_sharp),
                textInputType: TextInputType.emailAddress,
              ),
              verticalSpace(10),
              CustomTextFormField(
                hintText: 'Password',
                prefixIcon: const Icon(Icons.lock_open_sharp),
                textInputType: TextInputType.visiblePassword,
                controller: AppConstants.passwordController,
                isObscureText: obscurePasswordTextValue,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      obscurePasswordTextValue = !obscurePasswordTextValue;
                    });
                  },
                  child: Icon(
                    obscurePasswordTextValue
                        ? Icons.visibility_sharp
                        : Icons.visibility_off,
                  ),
                ),
              ),
              verticalSpace(30),
              CustomTextButton(
                textButton: 'Login',
                onPressed: () {
                  if (signInKey.currentState!.validate()) {
                    validateThenDoLogin(context);
                  }
                },
              ),
              verticalSpace(10),
            ],
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    AuthCubit.get(context).emitLoginStates(
      AppConstants.emailController.text,
      AppConstants.passwordController.text,
    );
  }
}
