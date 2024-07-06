import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImagesProfile extends StatelessWidget {
  const ImagesProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 390.w,
          height: 200.h,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://th.bing.com/th/id/OIP.ryO79ajx_je4RTkBteYzGAAAAA?w=462&h=462&rs=1&pid=ImgDetMain"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          top: 120.h,
          child: Container(
            width: 180.w,
            height: 180.h,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              image: const DecorationImage(
                image: NetworkImage(
                    "https://th.bing.com/th/id/OIP.NCrclGilAVPGb26S8vPxRQHaHa?w=512&h=512&rs=1&pid=ImgDetMain"),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
