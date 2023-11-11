import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_constants/app_colors.dart';

class TrendingDealsWidget extends StatelessWidget {
    TrendingDealsWidget({super.key});

  List trendingDeals = [
    'Shopping Fest : Vytilla, Kochi',
    'Athaf Hotel: July Offer 2023',
    'Tech Bonanza: Kalamassery, Kochi ',
    'Foodie Frenzy: Vallarpadam, Kochi',
    'Fashion Fiesta: Exclusive Offers...Grab it!!'
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // constraints: BoxConstraints(minHeight: 50.h),


      child: ListView.builder(
          itemCount:trendingDeals.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                        const   Icon(
                             Icons.trending_up,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            trendingDeals[index].toString(),
                            style: const TextStyle(fontSize: 14),
                          )
                        ],
                      ),
                    ),
                    Transform(
                      transform: Matrix4.rotationZ(-0.6),
                      child: Icon(
                        Icons.arrow_upward_rounded,
                        size: 18,
                        color: AppColors.subTextColor,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 38.h,)
              ],
            );
          }),
    );
  }
}
