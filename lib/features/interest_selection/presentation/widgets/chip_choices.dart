import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_constants/app_colors.dart';

class InterestChipChoice extends StatelessWidget {
    InterestChipChoice({super.key});
  List<String> intList = [
    'Concert',
    'Movies',
    'Museums',
    'Standup Comedy',
    'Yoga',
    'Music',
    'Adventure Activities',
    'Social Events',
    'Shopping',
    'Cafes',
    'Karoke',
    'Tours',
    'Restaurants',
    'Art Galleries',
    'Pubs',
    'Gym',
    'Theatre',
    'Virtual Events'
  ];
  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 253,
      child: Wrap(
        spacing: 8.0,
        runSpacing: 16.0,
        alignment: WrapAlignment.start,
        direction: Axis.horizontal,
        children: List<Widget>.generate(intList.length, (index) {
          return Container(
            padding:
            EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
            height: 32.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index == 0
                    ? Colors.grey.shade200
                    : Colors.grey.shade100),
            child: Text(
              intList[index].toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: index == 0
                      ? AppColors.blue
                      : AppColors.subTextColor,
                  fontSize: 14,
                  fontWeight: index == 0
                      ? FontWeight.bold
                      : FontWeight.normal),
            ),
          );
        }),
      ),
    );
  }
}
