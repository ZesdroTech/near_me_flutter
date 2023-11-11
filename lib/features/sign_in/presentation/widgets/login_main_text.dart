import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:near_me_main_project/utils/app_constants/app_colors.dart';

// ignore: must_be_immutable
class LoginMainText extends StatelessWidget {
  LoginMainText({super.key, required this.text, required this.subText});
  // ignore: prefer_typing_uninitialized_variables
  var text;
  // ignore: prefer_typing_uninitialized_variables
  var subText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text,style:   Theme.of(context).textTheme.headlineMedium,),
        SizedBox(height: 4.h,),
        Text(subText,style:   Theme.of(context).textTheme.titleMedium,)
      ],
    );
  }
}
