import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_constants/app_colors.dart';

class SearchDestinations extends StatelessWidget {
  const SearchDestinations({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.h,
      width: double.infinity,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
          itemCount: 4,
          itemBuilder: (context, index) {
        return SizedBox(
          height: 50.h,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 40.h,
                width: 36.h,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border:
                        Border.all(width: 1.sp, color: Colors.grey.shade300)),
                child: Icon(
                  Icons.location_on_outlined,
                  size: 18.sp,
                  color: AppColors.subTextColor,
                ),
              ),
              SizedBox(
                width: 12.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Al Mallu Street',
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '10 Marine Drive Square, Kochi, 680310',
                    style: TextStyle(
                        fontSize: 12.sp, color: AppColors.subTextColor),
                  )
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
