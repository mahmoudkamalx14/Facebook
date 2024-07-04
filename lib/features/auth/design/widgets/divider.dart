import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_styles.dart';

class DividerHorizontal extends StatelessWidget {
  const DividerHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        children: [
          const Expanded(child: Div()),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Text(
              'OR',
              textAlign: TextAlign.center,
              style: AppStyles.style14Regular,
            ),
          ),
          const Expanded(child: Div()),
        ],
      ),
    );
  }
}

class Div extends StatelessWidget {
  const Div({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFAAAAAA),
      height: 1.h,
    );
  }
}
