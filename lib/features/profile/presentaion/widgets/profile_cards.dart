import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:near_me_main_project/features/profile/profile_controller/theme_controller.dart';

class ProfileMenuCard extends StatelessWidget {
  String text;

  String prefixIcon;
  bool value = false;
  bool isSwitch;

  var color = Colors.transparent;

  ProfileMenuCard(
      {required this.text,
      required this.prefixIcon,
      this.color = Colors.transparent,
      this.isSwitch = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ThemeController());
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          height: 60.h,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(color: color),
              color: Theme.of(context).backgroundColor,
              borderRadius: BorderRadius.circular(
                8.r,
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Row(
                  children: [
                    Icon(
                      Icons.notifications,
                      size: 28.sp,
                      color: Theme.of(context).dividerColor,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      text,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              isSwitch
                  ? SizedBox(
                      height: 31.h,
                      child: GetBuilder<ThemeController>(
                        builder: (_) => CupertinoSwitch(
                          value: controller.isDark.value,
                          onChanged: (value) {
                            controller.updateTheme(value);
                         print(value.toString());
                          },
                        ),
                      ))
                  : Icon(
                      Icons.arrow_forward_ios,
                      size: 20.sp,
                    )
            ],
          ),
        ),
        SizedBox(
          height: 16.h,
        )
      ],
    );
  }
}
