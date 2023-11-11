import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:near_me_main_project/features/common_search/presentation/widgets/common_search_bar.dart';
import 'package:near_me_main_project/utils/app_constants/app_colors.dart';
import 'package:near_me_main_project/utils/app_constants/app_padding.dart';

import '../widgets/restaurant_tile.dart';
import '../widgets/search_destinations.dart';

class AllSearchScreen extends StatelessWidget {
  AllSearchScreen({super.key});

  List tabMenu = ['All', 'Restaurants', 'Destinations', 'Groceries'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppPadding.padding24Horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 32.h,
              ),
              CommonSearchBar(),
              SizedBox(
                height: 16.h,
              ),
              Container(
                height: 33.h,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: tabMenu.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 32.w),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 8.h),
                          height: 33.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.grey.shade200),
                          child: Text(
                            tabMenu[index],
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.normal,
                                color: index == 0
                                    ? AppColors.blue
                                    : AppColors.subTextColor),
                          ),
                        ),
                      );
                    }),
              ),
             Expanded(
               child: ListView(
                 children: [
                   SizedBox(
                     height: 32.h,
                   ),
                   Text(
                     'Restaurants',
                     style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                   ),
                   SizedBox(
                     height: 22.h,
                   ),
                   const RestaurantTile(),
                   SizedBox(
                     height: 32.h,
                   ),
                   SizedBox(
                     width: double.infinity,
                     child: Text(
                       'More Restaurants',
                       textAlign: TextAlign.center,
                       style: TextStyle(
                           fontSize: 14,
                           color: AppColors.blue,
                           fontWeight: FontWeight.bold),
                     ),
                   ),
                   SizedBox(
                     height: 32.h,
                   ),
                   const Text(
                     'Destinations',
                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                   ),
                   SizedBox(height: 22.h,),
                   const   SearchDestinations(),
                 ],
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}
