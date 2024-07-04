import 'package:facebook/core/helper/navigator.dart';
import 'package:facebook/core/helper/spaces.dart';
import 'package:facebook/core/theme/app_styles.dart';
import 'package:facebook/features/auth/design/widgets/divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 25.w),
              child: GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: const Icon(Icons.arrow_back_ios_outlined),
              ),
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: AppStyles.style14Regular,
            ),
          ],
        ),
        verticalSpace(10),
        const Div(),
      ],
    );
  }
}
