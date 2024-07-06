import 'package:facebook/core/helper/spaces.dart';
import 'package:facebook/core/theme/app_styles.dart';
import 'package:facebook/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NameAndBio extends StatelessWidget {
  const NameAndBio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Mahmoud Kamal', style: AppStyles.style24Bold),
        verticalSpace(14),
        Text('bio', style: AppStyles.style17Regular),
        verticalSpace(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomTextButton(
              onPressed: () {},
              textButton: 'Add to story',
              buttonWidth: 150.w,
              textStyle: AppStyles.style16Bold,
            ),
            CustomTextButton(
              onPressed: () {},
              textButton: 'Edit profile',
              buttonWidth: 150.w,
              textStyle: AppStyles.style16SemiBold,
              backgroundColor: const Color(0xFFEEEEEE),
            ),
          ],
        ),
      ],
    );
  }
}
