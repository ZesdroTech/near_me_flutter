import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_constants/app_colors.dart';

class RestaurantTile extends StatelessWidget {
  const RestaurantTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 376.h,
      child: ListView.builder(
        physics:const  NeverScrollableScrollPhysics(),
          itemCount: 4,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 69.h,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        height: 69.h,
                        width: 69.h,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        const   Text(
                            'Toast Box - Junction 8',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Breakfast & Brunch, Drinks & Beverages',
                            style: TextStyle(
                                fontSize: 12, color: AppColors.subTextColor),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          SizedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 16.sp,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  '4.4',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.subTextColor),
                                ),
                                Container(
                                  height: 5.h,
                                  width: 5.w,
                                  decoration: BoxDecoration(
                                      color: AppColors.subTextColor,
                                      shape: BoxShape.circle),
                                ),
                                Icon(
                                  Icons.access_time_filled_sharp,
                                  color: AppColors.subTextColor,
                                  size: 16.sp,
                                ),
                                Text(
                                  '20 min',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.subTextColor),
                                ),
                                Container(
                                  height: 5.h,
                                  width: 5.w,
                                  decoration: BoxDecoration(
                                      color: AppColors.subTextColor,
                                      shape: BoxShape.circle),
                                ),
                                Icon(
                                  Icons.directions_walk_outlined,
                                  color: AppColors.subTextColor,
                                  size: 16.sp,
                                ),
                                Text(
                                  '150 m',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.subTextColor),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 32.h,
                )
              ],
            );
          }),
    );
  }
}
