import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackGroundLogin extends StatelessWidget {
  const BackGroundLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/images/Background.svg',
          alignment: Alignment.topCenter,
          width: 390.w,
        ),
      ],
    );
  }
}
