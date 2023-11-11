import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:near_me_main_project/utils/theme/themes.dart';

class ThemeController extends GetxController {
  var  isDark = false.obs;
  updateTheme(value) {
    isDark.value = value;
    if (isDark.value) {
      Get.changeTheme(AppThemes.darkTheme);
    } else {
      Get.changeTheme(AppThemes.lightTheme);
    }
    update();
  }
}
