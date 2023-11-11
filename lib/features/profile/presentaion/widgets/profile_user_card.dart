import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_constants/app_colors.dart';

class ProfleScreenUserCard extends StatelessWidget {
  const ProfleScreenUserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      height: 81.h,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(width: 1, color: AppColors.subTextColor)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.red,
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/3135/3135715.png'))),
          ),
          SizedBox(
            width: 8.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'James',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                'james@gmail.com',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          SizedBox(
            width: 16.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 17.h,
              ),
              Container(
                height: 25.h,
                width: 57.w,
                padding: EdgeInsets.symmetric(vertical: 4.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.r),
                    color: Colors.blue.shade100),
                child: Text(
                  'User',
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.blue),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 35.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_forward_ios,
                size: 24.sp,
              )
            ],
          )
        ],
      ),
    );
  }
}
