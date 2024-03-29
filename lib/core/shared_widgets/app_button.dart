import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/core/theming/colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.onPressed, required this.buttonText, this.borderRadius, this.backgroundColor, this.horizontalPadding, this.verticalPadding, this.buttonWidth, this.buttonHeight, required this.textStyle});
  final VoidCallback onPressed;
  final String buttonText;
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius ?? 16),),
        ),
        backgroundColor: MaterialStatePropertyAll(backgroundColor ?? AppColors.mainBlue),
        padding: MaterialStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding?.w ?? 12.w,
            vertical: verticalPadding?.h ?? 14.h,
          ),
        ),
        fixedSize: MaterialStateProperty.all(
          Size(buttonWidth?.w ?? double.maxFinite, buttonHeight?.h ?? 60.h),
        ),
      ),
      onPressed: onPressed, 
      child: Text(buttonText, style: textStyle,),
      );
  }
}