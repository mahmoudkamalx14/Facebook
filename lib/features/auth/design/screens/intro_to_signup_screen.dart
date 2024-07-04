// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:facebook/core/helper/navigator.dart';
import 'package:facebook/core/helper/spaces.dart';
import 'package:facebook/core/routes/routes.dart';
import 'package:facebook/core/theme/app_styles.dart';
import 'package:facebook/core/widgets/custom_app_bar.dart';
import 'package:facebook/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroToSignupScreen extends StatelessWidget {
  const IntroToSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 21.w),
          child: Column(
            children: [
              const CustomAppBar(title: 'Create account'),
              verticalSpace(40),
              SvgPicture.asset('assets/images/Join_Facebook.svg'),
              verticalSpace(106),
              Text('Join Facebook', style: AppStyles.style18SemiBold),
              verticalSpace(20),
              Text(
                'We’ll help you \ncreate a new account in a few easy steps.',
                textAlign: TextAlign.center,
                style: AppStyles.style12Regular,
              ),
              verticalSpace(52),
              CustomTextButton(
                textButton: 'Next',
                onPressed: () {
                  context.navigateTo(Routes.signupScreen);
                },
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: Text(
                  'Already have an account?',
                  style: AppStyles.style14Bold.copyWith(
                    color: const Color(0xFF384CFF),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
