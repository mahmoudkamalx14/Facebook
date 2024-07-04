import 'package:facebook/core/helper/navigator.dart';
import 'package:facebook/core/routes/routes.dart';
import 'package:facebook/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateNewFacebookAccount extends StatelessWidget {
  const CreateNewFacebookAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.navigateTo(Routes.introToSignupScreen);
      },
      child: Container(
        alignment: Alignment.center,
        width: 200.w,
        height: 33.h,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.5.w,
              color: const Color(0xFF384CFF),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          'Create new Facebook account',
          style: AppStyles.style12Regular.copyWith(
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
