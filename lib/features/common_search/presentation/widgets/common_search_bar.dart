import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:near_me_main_project/utils/app_constants/app_colors.dart';

class CommonSearchBar extends StatelessWidget {
  const CommonSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47.h,
      color: Colors.grey.shade100,
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(width: 8.w,),
          SizedBox(
            height: 24,
            width: 24,
            child: SvgPicture.asset('assets/images/near_me_logo_small.svg'),
          ),
          Expanded(
              child: TextFormField(
            decoration: const InputDecoration(border: InputBorder.none),
          )),
          Icon(
            Icons.keyboard_voice_sharp,
            color: AppColors.subTextColor,
          )
        ],
      ),
    );
  }
}
