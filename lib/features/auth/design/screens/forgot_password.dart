import 'package:facebook/core/functions/show_toast.dart';
import 'package:facebook/core/helper/navigator.dart';
import 'package:facebook/core/helper/spaces.dart';
import 'package:facebook/core/routes/routes.dart';
import 'package:facebook/core/theme/app_styles.dart';
import 'package:facebook/core/utils/app_constants.dart';
import 'package:facebook/core/widgets/custom_app_bar.dart';
import 'package:facebook/core/widgets/custom_text_button.dart';
import 'package:facebook/core/widgets/custom_text_form_field.dart';
import 'package:facebook/features/auth/logic/auth_cubit.dart';
import 'package:facebook/features/auth/logic/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final keyResetPassword = GlobalKey<FormState>();
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is LoadingState) {
          showDialog(
            context: context,
            builder: (context) => const CircularProgressIndicator(),
          );
        }

        if (state is ResetPasswordState) {
          showToast(
            msg: "Successfully,Check your email to reset your password",
            color: Colors.red,
          );
          context.navigateToReplacement(Routes.loginScreen);
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 21.w),
              child: Form(
                key: keyResetPassword,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CustomAppBar(title: 'Forgot Password'),
                    verticalSpace(40),
                    Text(
                      'Enter your email address',
                      textAlign: TextAlign.center,
                      style: AppStyles.style18SemiBold,
                    ),
                    verticalSpace(50),
                    CustomTextFormField(
                      hintText: 'Email',
                      controller: AppConstants.emailController,
                      prefixIcon: const Icon(Icons.email_sharp),
                      textInputType: TextInputType.emailAddress,
                    ),
                    verticalSpace(80),
                    CustomTextButton(
                      textButton: 'Continue',
                      onPressed: () {
                        if (keyResetPassword.currentState!.validate()) {
                          validateThenDoResetPassword(context);
                        }
                      },
                    ),
                    if (state is LoadingState) const LinearProgressIndicator(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void validateThenDoResetPassword(context) {
    AuthCubit.get(context)
        .resetPasswordWithLink(AppConstants.emailController.text);
  }
}
