import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:near_me_main_project/features/profile/profile_controller/theme_controller.dart';

import '../theme/custom_themes/elevated_button_theme.dart';

final themeController = Get.put(ThemeController());

class SignUpCard extends StatelessWidget {
  final String text;
  final String image;
  Function onPressed;

  SignUpCard(
      {required this.text, required this.image, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300.withOpacity(0.3),
            blurRadius: 2.0,
            spreadRadius: 2.0,
            offset: const Offset(2.0, 2.0),
          ),
        ],
        color: Theme.of(context).dividerColor,
      ),
      height: 52.h,
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(width: 42.w),
          SizedBox(
            height: 24.h,
            width: 24.w,
            child: SvgPicture.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(width: 32.w),
          Text(
            text,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
