import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:near_me_main_project/utils/app_constants/app_colors.dart';

class LocationSelectionBox extends StatelessWidget {
  bool isAuto;
  String tittle;

  LocationSelectionBox({
    super.key,
    required this.isAuto,
    required this.tittle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.h,
      width: double.infinity,
      padding: EdgeInsets.only(left: 8.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          border:
              Border.all(width: 1, color: isAuto ? Colors.grey : Colors.transparent),
          color: isAuto ? Colors.white : Colors.grey.shade100),
      child: Row(
        mainAxisAlignment:
            isAuto ? MainAxisAlignment.center : MainAxisAlignment.start,
        children: [
          Icon(
            isAuto ? Icons.my_location : Icons.location_pin,
            color: isAuto ? AppColors.blue : Colors.black,
          ),
          SizedBox(
            width: 8.w,
          ),
          Text(
            tittle,
            style: TextStyle(
                fontSize: 14, color: isAuto ? AppColors.blue : Colors.black),
          )
        ],
      ),
    );
  }
}
