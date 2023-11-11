import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:near_me_main_project/utils/app_constants/app_colors.dart';

class RecentSearchesWidget extends StatelessWidget {
  List recentList = ['Biriryani', 'Aloo porotta'];

  RecentSearchesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // constraints: const BoxConstraints(minHeight: 150,),
      height: 80,
      child: ListView.builder(
          itemCount: recentList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          const Icon(
                            Icons.history,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            recentList[index].toString(),
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
                SizedBox(
                  height: 38.h,
                )
              ],
            );
          }),
    );
  }
}
