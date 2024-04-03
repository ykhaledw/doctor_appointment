import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/core/theming/colors.dart';
import 'package:myapp/core/theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({super.key, this.contentPadding, this.focusedBorder, this.enabledBorder, this.hintStyle, required this.hintText, this.suffixIcon, this.backgroundColor, this.isObscureText, this.style, this.controller, required this.validator, this.errorBorder, this.focusedErrorBorder});

  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;
  final TextStyle? hintStyle;
  final String hintText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final bool? isObscureText;
  final TextStyle? style;
  final TextEditingController? controller;
  final Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.symmetric(horizontal: 20.w,vertical: 18.h),
        focusedBorder: focusedBorder ?? OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.mainBlue,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: enabledBorder ?? OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.lightGrey,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        errorBorder: errorBorder?? OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedErrorBorder: focusedBorder ?? OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        hintStyle: hintStyle ?? TextStyles.font14LightGrayRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor: backgroundColor ?? AppColors.moreLightGrey,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: TextStyles.font14DarkBlueMedium,
      validator: (value) {
        return validator(value);
      },
    );
  }
}