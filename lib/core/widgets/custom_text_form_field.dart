import 'package:facebook/core/helper/spaces.dart';
import 'package:facebook/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.isObscureText,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintTextStyle,
    this.controller,
    this.textInputType,
  });

  final String hintText;
  final TextStyle? hintTextStyle;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? isObscureText;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextInputType? textInputType;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(hintText, style: AppStyles.style12Regular),
        ),
        verticalSpace(6),
        TextFormField(
          keyboardType: textInputType ?? TextInputType.text,
          controller: controller,
          obscureText: isObscureText ?? false,
          validator: (value) {
            if (value!.isEmpty) {
              return '$hintText must be not empty!!!';
            } else {
              return null;
            }
          },
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: hintTextStyle,
            suffixIcon: suffixIcon,
            isDense: true,
            contentPadding: contentPadding ??
                EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
            focusedBorder: focusedBorder ??
                OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xB2B2CCFF),
                    width: 1.3,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
            enabledBorder: enabledBorder ??
                OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xB2B2CCFF),
                    width: 1.3,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.red,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.red,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ],
    );
  }
}
