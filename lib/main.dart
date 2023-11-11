import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:near_me_main_project/features/account_creation/presentation/view/account_creation_screen.dart';
import 'package:near_me_main_project/features/common_search/presentation/view/all_search.dart';
import 'package:near_me_main_project/features/common_search/presentation/view/common_search_screen.dart';
import 'package:near_me_main_project/features/interest_selection/presentation/view/interest_selection_screen.dart';
import 'package:near_me_main_project/features/location_selection/presentation/view/location_selection_screen.dart';
import 'package:near_me_main_project/features/profile/presentaion/view/profile_screen.dart';
import 'package:near_me_main_project/features/sign_in/presentation/view/sign_in_screen.dart';
import 'package:near_me_main_project/features/sign_up/presentation/view/sign_up_screen.dart';
import 'package:near_me_main_project/utils/theme/themes.dart';

void main() {
  runApp(const NearMeApp());
}

class NearMeApp extends StatelessWidget {
  const NearMeApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(396, 852),
      builder: (_,__) {
        return GetMaterialApp(
          themeMode: ThemeMode.system,
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.darkTheme,
          debugShowCheckedModeBanner: false,
          home: SignUpScreen(), // Replace with your initial screen
        );
      },
    );
  }
}
