import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 0.50.w,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: const Color(0xFFAAAAAA),
          ),
        ),
      ),
    );
  }
}
