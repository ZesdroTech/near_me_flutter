import 'package:flutter/material.dart';
import 'package:near_me_main_project/utils/app_constants/app_colors.dart';
import 'package:near_me_main_project/utils/theme/custom_themes/app_icon_theme.dart';
import 'package:near_me_main_project/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:near_me_main_project/utils/theme/custom_themes/input_field_theme.dart';
import 'package:near_me_main_project/utils/theme/custom_themes/text_theme.dart';

class AppThemes {
  AppThemes._();

  // Theme for light mode

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    // scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightEleavatedButton,
    inputDecorationTheme: AppInputTheme.lightInputDecorationTheme,
    iconTheme: AppIconTheme.lightIconTheme,
    dividerColor: Colors.white,
    backgroundColor: Colors.grey.shade300,
    hintColor: Colors.grey.shade200,
  );

  // Theme for dark mode

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      textTheme: AppTextTheme.dartTextTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButton,
      inputDecorationTheme: AppInputTheme.darkInputDecorationTheme,
      iconTheme: AppIconTheme.darkIconTheme,
      dividerColor: AppColors.darkContainerBackground,
      backgroundColor: Colors.grey.shade600,
    hintColor: Colors.grey.shade400,
      );
}
