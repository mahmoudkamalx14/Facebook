import 'package:facebook/core/helper/navigator.dart';
import 'package:facebook/core/helper/spaces.dart';
import 'package:facebook/core/routes/routes.dart';
import 'package:facebook/core/theme/app_styles.dart';
import 'package:facebook/features/auth/design/widgets/divider.dart';
import 'package:flutter/material.dart';

import '../widgets/back_ground_login.dart';
import '../widgets/create_new_facebook_account.dart';
import '../widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BackGroundLogin(),
            const LoginForm(),
            verticalSpace(20),
            GestureDetector(
              onTap: () {
                context.navigateTo(Routes.forgotPassword);
              },
              child: Text(
                'Forgot Password?',
                style: AppStyles.style14Bold.copyWith(
                  color: const Color(0xFF384CFF),
                ),
              ),
            ),
            verticalSpace(20),
            const DividerHorizontal(),
            verticalSpace(30),
            const CreateNewFacebookAccount(),
          ],
        ),
      ),
    );
  }
}
