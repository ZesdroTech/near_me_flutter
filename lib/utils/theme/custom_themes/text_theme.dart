import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:near_me_main_project/utils/app_constants/app_colors.dart';

import '../../app_constants/app_colors.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: TextStyle(
        fontSize: 42.sp, fontWeight: FontWeight.w600, color: Colors.black),
    headlineMedium: TextStyle(
        fontSize: 28.sp, fontWeight: FontWeight.w600, color: Colors.black),
    headlineSmall: TextStyle(
        fontSize: 20.sp, fontWeight: FontWeight.w600, color: Colors.black),
    titleLarge: TextStyle(
        fontSize: 18.sp, fontWeight: FontWeight.w600, color: Colors.black),
    titleMedium: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.subTextColor),
    titleSmall: TextStyle(
        fontSize: 16.sp, fontWeight: FontWeight.w600, color: Colors.black),
    bodyLarge: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.subTextColor),
    bodyMedium: TextStyle(
        fontSize: 14.sp, fontWeight: FontWeight.w500, color: Colors.black),
    bodySmall: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.subTextColor),
    labelLarge: TextStyle(
        fontSize: 11.sp, fontWeight: FontWeight.w600, color: AppColors.blue),
    labelMedium: TextStyle(
        fontSize: 14.sp, fontWeight: FontWeight.w700, color: AppColors.blue),
    labelSmall: TextStyle(
        fontSize: 11.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.subTextColor),
  );
  static TextTheme dartTextTheme = TextTheme(
    headlineLarge: TextStyle(
        fontSize: 42.sp, fontWeight: FontWeight.w600, color: Colors.white),
    headlineMedium: TextStyle(
        fontSize: 28.sp, fontWeight: FontWeight.w600, color: Colors.white),
    headlineSmall: TextStyle(
        fontSize: 20.sp, fontWeight: FontWeight.w600, color: Colors.white),
    titleLarge: TextStyle(
        fontSize: 18.sp, fontWeight: FontWeight.w600, color: Colors.white),
    titleMedium: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.subTextColor),
    titleSmall: TextStyle(
        fontSize: 16.sp, fontWeight: FontWeight.w600, color: Colors.white),
    bodyLarge: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.subTextColor),
    bodyMedium: TextStyle(
        fontSize: 14.sp, fontWeight: FontWeight.w500, color: Colors.white),
    bodySmall: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.subTextColor),
    labelLarge: TextStyle(
        fontSize: 11.sp, fontWeight: FontWeight.w600, color: AppColors.blue),
    labelMedium: TextStyle(
        fontSize: 14.sp, fontWeight: FontWeight.w700, color: AppColors.blue),
    labelSmall: TextStyle(
        fontSize: 11.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.subTextColor),
  );
}
