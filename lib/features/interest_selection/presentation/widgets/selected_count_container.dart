import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_constants/app_colors.dart';

class SelectedCountContainer extends StatelessWidget {
  const SelectedCountContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 22.h,
      width: double.infinity,
      color: Colors.grey.shade200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 5.0,
            height: 5.0,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.grey),
          ),
          SizedBox(
            width: 4.w,
          ),
          Text(
            '3 interest selected',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: AppColors.subTextColor),
          ),
          SizedBox(
            width: 4.w,
          ),
          Container(
            width: 5.0,
            height: 5.0,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
