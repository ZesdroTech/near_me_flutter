import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:near_me_main_project/utils/app_constants/app_colors.dart';

class AppInputTheme {
  AppInputTheme._();

  static final lightInputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: Colors.transparent,
    hintStyle: TextStyle(color: AppColors.subTextColor, fontSize: 14.sp),
    prefixIconColor: Colors.black,
    suffixIconColor: Colors.black,
    // Set border styles
    border: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
    ),
  );

  static final darkInputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: Colors.transparent,
    hintStyle: TextStyle(color: AppColors.subTextColor, fontSize: 14.sp),
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    // Set border styles
    border: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.yellow),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
    ),
  );
}
