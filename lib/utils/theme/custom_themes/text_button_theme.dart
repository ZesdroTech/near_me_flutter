import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:near_me_main_project/utils/app_constants/app_colors.dart';

class AppTextButtonTheme {
  AppTextButtonTheme._();

 static  final lightTextButtonTheme = TextButtonThemeData(
  style: ButtonStyle(
  foregroundColor: MaterialStateProperty.all(Colors.white), // Text color
  backgroundColor: MaterialStateProperty.all(Colors.yellow), // Background color
  padding: MaterialStateProperty.all(EdgeInsets.all(16.0)), // Padding
  textStyle: MaterialStateProperty.all(
  TextStyle(
  fontSize: 16.0, // Text font size
  fontWeight: FontWeight.bold, // Text font weight
  ),
  ),
  ),
  );

  static final darkTextButtonTheme =  TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Colors.white), // Text color
      backgroundColor: MaterialStateProperty.all(Colors.red), // Background color
      padding: MaterialStateProperty.all(EdgeInsets.all(16.0)), // Padding
      textStyle: MaterialStateProperty.all(
        TextStyle(
          fontSize: 16.0, // Text font size
          fontWeight: FontWeight.bold, // Text font weight
        ),
      ),
    ),
  );
}
